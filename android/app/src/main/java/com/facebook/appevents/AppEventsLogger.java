package com.facebook.appevents;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import bolts.AppLinks;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.Constants;
import com.facebook.internal.AppEventsLoggerUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import quack.mc.patocraft.MainActivity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AppEventsLogger {
    public static final String ACTION_APP_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_FLUSHED";
    public static final String APP_EVENTS_EXTRA_FLUSH_RESULT = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT";
    public static final String APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED";
    private static final String APP_EVENT_NAME_PUSH_OPENED = "fb_mobile_push_opened";
    public static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    private static final String APP_EVENT_PUSH_PARAMETER_ACTION = "fb_push_action";
    private static final String APP_EVENT_PUSH_PARAMETER_CAMPAIGN = "fb_push_campaign";
    private static final int APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS = 86400;
    private static final int FLUSH_APP_SESSION_INFO_IN_SECONDS = 30;
    private static final int FLUSH_PERIOD_IN_SECONDS = 15;
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static final String PUSH_PAYLOAD_CAMPAIGN_KEY = "campaign";
    private static final String PUSH_PAYLOAD_KEY = "fb_push_payload";
    private static final String SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT = "_fbSourceApplicationHasBeenSet";
    private static String anonymousAppDeviceGUID;
    private static Context applicationContext;
    private static ScheduledThreadPoolExecutor backgroundExecutor;
    private static boolean isActivateAppEventRequested;
    private static boolean isOpenedByApplink;
    private static String pushNotificationsRegistrationId;
    private static boolean requestInFlight;
    private static String sourceApplication;
    private final AccessTokenAppIdPair accessTokenAppId;
    private final String contextName;
    private static final String TAG = AppEventsLogger.class.getCanonicalName();
    private static Map<AccessTokenAppIdPair, SessionEventsState> stateMap = new ConcurrentHashMap();
    private static FlushBehavior flushBehavior = FlushBehavior.AUTO;
    private static Object staticLock = new Object();

    public enum FlushBehavior {
        AUTO,
        EXPLICIT_ONLY
    }

    private enum FlushReason {
        EXPLICIT,
        TIMER,
        SESSION_CHANGE,
        PERSISTED_EVENTS,
        EVENT_THRESHOLD,
        EAGER_FLUSHING_EVENT
    }

    private enum FlushResult {
        SUCCESS,
        SERVER_ERROR,
        NO_CONNECTIVITY,
        UNKNOWN_ERROR
    }

    private static class AccessTokenAppIdPair implements Serializable {
        private static final long serialVersionUID = 1;
        private final String accessTokenString;
        private final String applicationId;

        AccessTokenAppIdPair(AccessToken accessToken) {
            this(accessToken.getToken(), FacebookSdk.getApplicationId());
        }

        AccessTokenAppIdPair(String accessTokenString, String applicationId) {
            this.accessTokenString = Utility.isNullOrEmpty(accessTokenString) ? null : accessTokenString;
            this.applicationId = applicationId;
        }

        String getAccessTokenString() {
            return this.accessTokenString;
        }

        String getApplicationId() {
            return this.applicationId;
        }

        public int hashCode() {
            return (this.accessTokenString == null ? 0 : this.accessTokenString.hashCode()) ^ (this.applicationId != null ? this.applicationId.hashCode() : 0);
        }

        public boolean equals(Object o) {
            if (!(o instanceof AccessTokenAppIdPair)) {
                return false;
            }
            AccessTokenAppIdPair p = (AccessTokenAppIdPair) o;
            return Utility.areObjectsEqual(p.accessTokenString, this.accessTokenString) && Utility.areObjectsEqual(p.applicationId, this.applicationId);
        }

        private static class SerializationProxyV1 implements Serializable {
            private static final long serialVersionUID = -2488473066578201069L;
            private final String accessTokenString;
            private final String appId;

            private SerializationProxyV1(String accessTokenString, String appId) {
                this.accessTokenString = accessTokenString;
                this.appId = appId;
            }

            private Object readResolve() {
                return new AccessTokenAppIdPair(this.accessTokenString, this.appId);
            }
        }

        private Object writeReplace() {
            return new SerializationProxyV1(this.accessTokenString, this.applicationId);
        }
    }

    public static void activateApp(Application application) {
        activateApp(application, (String) null);
    }

    public static void activateApp(Application application, String applicationId) {
        if (!FacebookSdk.isInitialized()) {
            throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
        }
        if (applicationId == null) {
            applicationId = FacebookSdk.getApplicationId();
        }
        ActivityLifecycleTracker.startTracking(application, applicationId);
    }

    @Deprecated
    public static void activateApp(Context context) {
        if (ActivityLifecycleTracker.isTracking()) {
            Log.w(TAG, "activateApp events are being logged automatically. There's no need to call activateApp explicitly, this is safe to remove.");
        } else {
            FacebookSdk.sdkInitialize(context);
            activateApp(context, Utility.getMetadataApplicationId(context));
        }
    }

    @Deprecated
    public static void activateApp(Context context, String applicationId) {
        if (ActivityLifecycleTracker.isTracking()) {
            Log.w(TAG, "activateApp events are being logged automatically. There's no need to call activateApp explicitly, this is safe to remove.");
            return;
        }
        if (context == null || applicationId == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        if (context instanceof Activity) {
            setSourceApplication((Activity) context);
        } else {
            resetSourceApplication();
            Log.d(AppEventsLogger.class.getName(), "To set source application the context of activateApp must be an instance of Activity");
        }
        FacebookSdk.publishInstallAsync(context, applicationId);
        AppEventsLogger logger = new AppEventsLogger(context, applicationId, null);
        final long eventTime = System.currentTimeMillis();
        final String sourceApplicationInfo = getSourceApplication();
        backgroundExecutor.execute(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.1
            @Override // java.lang.Runnable
            public void run() {
                AppEventsLogger.this.logAppSessionResumeEvent(eventTime, sourceApplicationInfo);
            }
        });
    }

    @Deprecated
    public static void deactivateApp(Context context) {
        if (ActivityLifecycleTracker.isTracking()) {
            Log.w(TAG, "deactivateApp events are being logged automatically. There's no need to call deactivateApp, this is safe to remove.");
        } else {
            deactivateApp(context, Utility.getMetadataApplicationId(context));
        }
    }

    @Deprecated
    public static void deactivateApp(Context context, String applicationId) {
        if (ActivityLifecycleTracker.isTracking()) {
            Log.w(TAG, "deactivateApp events are being logged automatically. There's no need to call deactivateApp, this is safe to remove.");
            return;
        }
        if (context == null || applicationId == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        resetSourceApplication();
        AppEventsLogger logger = new AppEventsLogger(context, applicationId, null);
        final long eventTime = System.currentTimeMillis();
        backgroundExecutor.execute(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.2
            @Override // java.lang.Runnable
            public void run() {
                AppEventsLogger.this.logAppSessionSuspendEvent(eventTime);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAppSessionResumeEvent(long eventTime, String sourceApplicationInfo) {
        PersistedAppSessionInfo.onResume(applicationContext, this.accessTokenAppId, this, eventTime, sourceApplicationInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAppSessionSuspendEvent(long eventTime) {
        PersistedAppSessionInfo.onSuspend(applicationContext, this.accessTokenAppId, this, eventTime);
    }

    public static AppEventsLogger newLogger(Context context) {
        return new AppEventsLogger(context, null, null);
    }

    public static AppEventsLogger newLogger(Context context, AccessToken accessToken) {
        return new AppEventsLogger(context, null, accessToken);
    }

    public static AppEventsLogger newLogger(Context context, String applicationId, AccessToken accessToken) {
        return new AppEventsLogger(context, applicationId, accessToken);
    }

    public static AppEventsLogger newLogger(Context context, String applicationId) {
        return new AppEventsLogger(context, applicationId, null);
    }

    public static FlushBehavior getFlushBehavior() {
        FlushBehavior flushBehavior2;
        synchronized (staticLock) {
            flushBehavior2 = flushBehavior;
        }
        return flushBehavior2;
    }

    public static void setFlushBehavior(FlushBehavior flushBehavior2) {
        synchronized (staticLock) {
            flushBehavior = flushBehavior2;
        }
    }

    public void logEvent(String eventName) {
        logEvent(eventName, (Bundle) null);
    }

    public void logEvent(String eventName, double valueToSum) {
        logEvent(eventName, valueToSum, (Bundle) null);
    }

    public void logEvent(String eventName, Bundle parameters) {
        logEvent(eventName, null, parameters, false, ActivityLifecycleTracker.getCurrentSessionGuid());
    }

    public void logEvent(String eventName, double valueToSum, Bundle parameters) {
        logEvent(eventName, Double.valueOf(valueToSum), parameters, false, ActivityLifecycleTracker.getCurrentSessionGuid());
    }

    public void logPurchase(BigDecimal purchaseAmount, Currency currency) {
        logPurchase(purchaseAmount, currency, null);
    }

    public void logPurchase(BigDecimal purchaseAmount, Currency currency, Bundle parameters) {
        if (purchaseAmount == null) {
            notifyDeveloperError("purchaseAmount cannot be null");
            return;
        }
        if (currency == null) {
            notifyDeveloperError("currency cannot be null");
            return;
        }
        if (parameters == null) {
            parameters = new Bundle();
        }
        parameters.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, currency.getCurrencyCode());
        logEvent(AppEventsConstants.EVENT_NAME_PURCHASED, purchaseAmount.doubleValue(), parameters);
        eagerFlush();
    }

    public void logPushNotificationOpen(Bundle payload) {
        logPushNotificationOpen(payload, null);
    }

    public void logPushNotificationOpen(Bundle payload, String action) {
        String campaignId = null;
        try {
            String payloadString = payload.getString(PUSH_PAYLOAD_KEY);
            if (!Utility.isNullOrEmpty(payloadString)) {
                JSONObject facebookPayload = new JSONObject(payloadString);
                campaignId = facebookPayload.getString(PUSH_PAYLOAD_CAMPAIGN_KEY);
            } else {
                return;
            }
        } catch (JSONException e) {
        }
        if (campaignId == null) {
            Logger.log(LoggingBehavior.DEVELOPER_ERRORS, TAG, "Malformed payload specified for logging a push notification open.");
            return;
        }
        Bundle parameters = new Bundle();
        parameters.putString(APP_EVENT_PUSH_PARAMETER_CAMPAIGN, campaignId);
        if (action != null) {
            parameters.putString(APP_EVENT_PUSH_PARAMETER_ACTION, action);
        }
        logEvent(APP_EVENT_NAME_PUSH_OPENED, parameters);
    }

    public void flush() {
        flush(FlushReason.EXPLICIT);
    }

    public static void onContextStop() {
        PersistedEvents.persistEvents(applicationContext, stateMap);
    }

    public boolean isValidForAccessToken(AccessToken accessToken) {
        AccessTokenAppIdPair other = new AccessTokenAppIdPair(accessToken);
        return this.accessTokenAppId.equals(other);
    }

    public static void setPushNotificationsRegistrationId(String registrationId) {
        synchronized (staticLock) {
            pushNotificationsRegistrationId = registrationId;
        }
    }

    public void logSdkEvent(String eventName, Double valueToSum, Bundle parameters) {
        logEvent(eventName, valueToSum, parameters, true, ActivityLifecycleTracker.getCurrentSessionGuid());
    }

    public String getApplicationId() {
        return this.accessTokenAppId.getApplicationId();
    }

    private AppEventsLogger(Context context, String applicationId, AccessToken accessToken) {
        Validate.notNull(context, "context");
        this.contextName = Utility.getActivityName(context);
        accessToken = accessToken == null ? AccessToken.getCurrentAccessToken() : accessToken;
        if (accessToken != null && (applicationId == null || applicationId.equals(accessToken.getApplicationId()))) {
            this.accessTokenAppId = new AccessTokenAppIdPair(accessToken);
        } else {
            this.accessTokenAppId = new AccessTokenAppIdPair(null, applicationId == null ? Utility.getMetadataApplicationId(context) : applicationId);
        }
        synchronized (staticLock) {
            if (applicationContext == null) {
                applicationContext = context.getApplicationContext();
            }
        }
        initializeTimersIfNeeded();
    }

    private static void initializeTimersIfNeeded() {
        synchronized (staticLock) {
            if (backgroundExecutor == null) {
                backgroundExecutor = new ScheduledThreadPoolExecutor(1);
                Runnable flushRunnable = new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.3
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY) {
                            AppEventsLogger.flushAndWait(FlushReason.TIMER);
                        }
                    }
                };
                backgroundExecutor.scheduleAtFixedRate(flushRunnable, 0L, 15L, TimeUnit.SECONDS);
                Runnable attributionRecheckRunnable = new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Set<String> applicationIds = new HashSet<>();
                        synchronized (AppEventsLogger.staticLock) {
                            for (AccessTokenAppIdPair accessTokenAppId : AppEventsLogger.stateMap.keySet()) {
                                applicationIds.add(accessTokenAppId.getApplicationId());
                            }
                        }
                        for (String applicationId : applicationIds) {
                            Utility.queryAppSettings(applicationId, true);
                        }
                    }
                };
                backgroundExecutor.scheduleAtFixedRate(attributionRecheckRunnable, 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    private void logEvent(String eventName, Double valueToSum, Bundle parameters, boolean isImplicitlyLogged, @Nullable UUID currentSessionId) {
        AppEvent event = new AppEvent(this.contextName, eventName, valueToSum, parameters, isImplicitlyLogged, currentSessionId);
        logEvent(applicationContext, event, this.accessTokenAppId);
    }

    private static void logEvent(final Context context, final AppEvent event, final AccessTokenAppIdPair accessTokenAppId) {
        FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.5
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                SessionEventsState state = AppEventsLogger.getSessionEventsState(context, accessTokenAppId);
                state.addEvent(event);
                AppEventsLogger.flushIfNecessary();
            }
        });
        if (!event.isImplicit && !isActivateAppEventRequested) {
            if (event.getName() == AppEventsConstants.EVENT_NAME_ACTIVATED_APP) {
                isActivateAppEventRequested = true;
            } else {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        }
    }

    static void eagerFlush() {
        if (getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY) {
            flush(FlushReason.EAGER_FLUSHING_EVENT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void flushIfNecessary() {
        synchronized (staticLock) {
            if (getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY && getAccumulatedEventCount() > 100) {
                flush(FlushReason.EVENT_THRESHOLD);
            }
        }
    }

    private static int getAccumulatedEventCount() {
        int result;
        synchronized (staticLock) {
            result = 0;
            for (SessionEventsState state : stateMap.values()) {
                result += state.getAccumulatedEventCount();
            }
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SessionEventsState getSessionEventsState(Context context, AccessTokenAppIdPair accessTokenAppId) throws Throwable {
        AttributionIdentifiers attributionIdentifiers = null;
        if (stateMap.get(accessTokenAppId) == null) {
            attributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(context);
        }
        synchronized (staticLock) {
            try {
                SessionEventsState state = stateMap.get(accessTokenAppId);
                if (state == null) {
                    SessionEventsState state2 = new SessionEventsState(attributionIdentifiers, context.getPackageName(), getAnonymousAppDeviceGUID(context));
                    try {
                        stateMap.put(accessTokenAppId, state2);
                        state = state2;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                return state;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static SessionEventsState getSessionEventsState(AccessTokenAppIdPair accessTokenAppId) {
        SessionEventsState sessionEventsState;
        synchronized (staticLock) {
            sessionEventsState = stateMap.get(accessTokenAppId);
        }
        return sessionEventsState;
    }

    private static void flush(final FlushReason reason) {
        FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.6
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                AppEventsLogger.flushAndWait(reason);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void flushAndWait(FlushReason reason) throws Throwable {
        synchronized (staticLock) {
            if (!requestInFlight) {
                requestInFlight = true;
                Set<AccessTokenAppIdPair> keysToFlush = new HashSet<>(stateMap.keySet());
                accumulatePersistedEvents();
                FlushStatistics flushResults = null;
                try {
                    flushResults = buildAndExecuteRequests(reason, keysToFlush);
                } catch (Exception e) {
                    Utility.logd(TAG, "Caught unexpected exception while flushing: ", e);
                }
                synchronized (staticLock) {
                    requestInFlight = false;
                }
                if (flushResults != null) {
                    Intent intent = new Intent(ACTION_APP_EVENTS_FLUSHED);
                    intent.putExtra(APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED, flushResults.numEvents);
                    intent.putExtra(APP_EVENTS_EXTRA_FLUSH_RESULT, flushResults.result);
                    LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(intent);
                }
            }
        }
    }

    private static FlushStatistics buildAndExecuteRequests(FlushReason reason, Set<AccessTokenAppIdPair> keysToFlush) {
        GraphRequest request;
        FlushStatistics flushResults = new FlushStatistics();
        boolean limitEventUsage = FacebookSdk.getLimitEventAndDataUsage(applicationContext);
        List<GraphRequest> requestsToExecute = new ArrayList<>();
        for (AccessTokenAppIdPair accessTokenAppId : keysToFlush) {
            SessionEventsState sessionEventsState = getSessionEventsState(accessTokenAppId);
            if (sessionEventsState != null && (request = buildRequestForSession(accessTokenAppId, sessionEventsState, limitEventUsage, flushResults)) != null) {
                requestsToExecute.add(request);
            }
        }
        if (requestsToExecute.size() <= 0) {
            return null;
        }
        Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flushing %d events due to %s.", Integer.valueOf(flushResults.numEvents), reason.toString());
        Iterator<GraphRequest> it = requestsToExecute.iterator();
        while (it.hasNext()) {
            it.next().executeAndWait();
        }
        return flushResults;
    }

    private static class FlushStatistics {
        public int numEvents;
        public FlushResult result;

        private FlushStatistics() {
            this.numEvents = 0;
            this.result = FlushResult.SUCCESS;
        }
    }

    private static GraphRequest buildRequestForSession(final AccessTokenAppIdPair accessTokenAppId, final SessionEventsState sessionEventsState, boolean limitEventUsage, final FlushStatistics flushState) {
        int numEvents;
        String applicationId = accessTokenAppId.getApplicationId();
        Utility.FetchedAppSettings fetchedAppSettings = Utility.queryAppSettings(applicationId, false);
        final GraphRequest postRequest = GraphRequest.newPostRequest(null, String.format("%s/activities", applicationId), null, null);
        Bundle requestParameters = postRequest.getParameters();
        if (requestParameters == null) {
            requestParameters = new Bundle();
        }
        requestParameters.putString("access_token", accessTokenAppId.getAccessTokenString());
        if (pushNotificationsRegistrationId != null) {
            requestParameters.putString("device_token", pushNotificationsRegistrationId);
        }
        postRequest.setParameters(requestParameters);
        if (fetchedAppSettings != null && (numEvents = sessionEventsState.populateRequest(postRequest, fetchedAppSettings.supportsImplicitLogging(), limitEventUsage)) != 0) {
            flushState.numEvents += numEvents;
            postRequest.setCallback(new GraphRequest.Callback() { // from class: com.facebook.appevents.AppEventsLogger.7
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse response) {
                    AppEventsLogger.handleResponse(accessTokenAppId, postRequest, response, sessionEventsState, flushState);
                }
            });
            return postRequest;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleResponse(AccessTokenAppIdPair accessTokenAppId, GraphRequest request, GraphResponse response, SessionEventsState sessionEventsState, FlushStatistics flushState) {
        String prettyPrintedEvents;
        FacebookRequestError error = response.getError();
        String resultDescription = "Success";
        FlushResult flushResult = FlushResult.SUCCESS;
        if (error != null) {
            if (error.getErrorCode() == -1) {
                resultDescription = "Failed: No Connectivity";
                flushResult = FlushResult.NO_CONNECTIVITY;
            } else {
                resultDescription = String.format("Failed:\n  Response: %s\n  Error %s", response.toString(), error.toString());
                flushResult = FlushResult.SERVER_ERROR;
            }
        }
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.APP_EVENTS)) {
            String eventsJsonString = (String) request.getTag();
            try {
                JSONArray jsonArray = new JSONArray(eventsJsonString);
                prettyPrintedEvents = jsonArray.toString(2);
            } catch (JSONException e) {
                prettyPrintedEvents = "<Can't encode events for debug logging>";
            }
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", request.getGraphObject().toString(), resultDescription, prettyPrintedEvents);
        }
        sessionEventsState.clearInFlightAndStats(error != null);
        if (flushResult == FlushResult.NO_CONNECTIVITY) {
            PersistedEvents.persistEvents(applicationContext, accessTokenAppId, sessionEventsState);
        }
        if (flushResult != FlushResult.SUCCESS && flushState.result != FlushResult.NO_CONNECTIVITY) {
            flushState.result = flushResult;
        }
    }

    private static int accumulatePersistedEvents() throws Throwable {
        PersistedEvents persistedEvents = PersistedEvents.readAndClearStore(applicationContext);
        int result = 0;
        for (AccessTokenAppIdPair accessTokenAppId : persistedEvents.keySet()) {
            SessionEventsState sessionEventsState = getSessionEventsState(applicationContext, accessTokenAppId);
            List<AppEvent> events = persistedEvents.getEvents(accessTokenAppId);
            sessionEventsState.accumulatePersistedEvents(events);
            result += events.size();
        }
        return result;
    }

    private static void notifyDeveloperError(String message) {
        Logger.log(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", message);
    }

    private static void setSourceApplication(Activity activity) {
        ComponentName callingApplication = activity.getCallingActivity();
        if (callingApplication != null) {
            String callingApplicationPackage = callingApplication.getPackageName();
            if (callingApplicationPackage.equals(activity.getPackageName())) {
                resetSourceApplication();
                return;
            }
            sourceApplication = callingApplicationPackage;
        }
        Intent openIntent = activity.getIntent();
        if (openIntent == null || openIntent.getBooleanExtra(SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, false)) {
            resetSourceApplication();
            return;
        }
        Bundle applinkData = AppLinks.getAppLinkData(openIntent);
        if (applinkData == null) {
            resetSourceApplication();
            return;
        }
        isOpenedByApplink = true;
        Bundle applinkReferrerData = applinkData.getBundle("referer_app_link");
        if (applinkReferrerData == null) {
            sourceApplication = null;
            return;
        }
        String applinkReferrerPackage = applinkReferrerData.getString(MainActivity.PACKAGE_NAME_KEY);
        sourceApplication = applinkReferrerPackage;
        openIntent.putExtra(SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
    }

    static void setSourceApplication(String applicationPackage, boolean openByAppLink) {
        sourceApplication = applicationPackage;
        isOpenedByApplink = openByAppLink;
    }

    static String getSourceApplication() {
        String openType = "Unclassified";
        if (isOpenedByApplink) {
            openType = "Applink";
        }
        if (sourceApplication != null) {
            return openType + "(" + sourceApplication + ")";
        }
        return openType;
    }

    static void resetSourceApplication() {
        sourceApplication = null;
        isOpenedByApplink = false;
    }

    public static String getAnonymousAppDeviceGUID(Context context) {
        if (anonymousAppDeviceGUID == null) {
            synchronized (staticLock) {
                if (anonymousAppDeviceGUID == null) {
                    SharedPreferences preferences = context.getSharedPreferences(APP_EVENT_PREFERENCES, 0);
                    anonymousAppDeviceGUID = preferences.getString("anonymousAppDeviceGUID", null);
                    if (anonymousAppDeviceGUID == null) {
                        anonymousAppDeviceGUID = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences(APP_EVENT_PREFERENCES, 0).edit().putString("anonymousAppDeviceGUID", anonymousAppDeviceGUID).apply();
                    }
                }
            }
        }
        return anonymousAppDeviceGUID;
    }

    private static class SessionEventsState {
        public static final String ENCODED_EVENTS_KEY = "encoded_events";
        public static final String EVENT_COUNT_KEY = "event_count";
        public static final String NUM_SKIPPED_KEY = "num_skipped";
        private String anonymousAppDeviceGUID;
        private AttributionIdentifiers attributionIdentifiers;
        private int numSkippedEventsDueToFullBuffer;
        private String packageName;
        private List<AppEvent> accumulatedEvents = new ArrayList();
        private List<AppEvent> inFlightEvents = new ArrayList();
        private final int MAX_ACCUMULATED_LOG_EVENTS = 1000;

        public SessionEventsState(AttributionIdentifiers identifiers, String packageName, String anonymousGUID) {
            this.attributionIdentifiers = identifiers;
            this.packageName = packageName;
            this.anonymousAppDeviceGUID = anonymousGUID;
        }

        public synchronized void addEvent(AppEvent event) {
            if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= 1000) {
                this.numSkippedEventsDueToFullBuffer++;
            } else {
                this.accumulatedEvents.add(event);
            }
        }

        public synchronized int getAccumulatedEventCount() {
            return this.accumulatedEvents.size();
        }

        public synchronized void clearInFlightAndStats(boolean moveToAccumulated) {
            if (moveToAccumulated) {
                this.accumulatedEvents.addAll(this.inFlightEvents);
            }
            this.inFlightEvents.clear();
            this.numSkippedEventsDueToFullBuffer = 0;
        }

        public int populateRequest(GraphRequest request, boolean includeImplicitEvents, boolean limitEventUsage) {
            synchronized (this) {
                int numSkipped = this.numSkippedEventsDueToFullBuffer;
                this.inFlightEvents.addAll(this.accumulatedEvents);
                this.accumulatedEvents.clear();
                JSONArray jsonArray = new JSONArray();
                for (AppEvent event : this.inFlightEvents) {
                    if (includeImplicitEvents || !event.getIsImplicit()) {
                        jsonArray.put(event.getJSONObject());
                    }
                }
                if (jsonArray.length() == 0) {
                    return 0;
                }
                populateRequest(request, numSkipped, jsonArray, limitEventUsage);
                return jsonArray.length();
            }
        }

        public synchronized List<AppEvent> getEventsToPersist() {
            List<AppEvent> result;
            result = this.accumulatedEvents;
            this.accumulatedEvents = new ArrayList();
            return result;
        }

        public synchronized void accumulatePersistedEvents(List<AppEvent> events) {
            this.accumulatedEvents.addAll(events);
        }

        private void populateRequest(GraphRequest request, int numSkipped, JSONArray events, boolean limitEventUsage) {
            JSONObject publishParams;
            try {
                publishParams = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.attributionIdentifiers, this.anonymousAppDeviceGUID, limitEventUsage, AppEventsLogger.applicationContext);
                if (this.numSkippedEventsDueToFullBuffer > 0) {
                    publishParams.put("num_skipped_events", numSkipped);
                }
            } catch (JSONException e) {
                publishParams = new JSONObject();
            }
            request.setGraphObject(publishParams);
            Bundle requestParameters = request.getParameters();
            if (requestParameters == null) {
                requestParameters = new Bundle();
            }
            String jsonString = events.toString();
            if (jsonString != null) {
                requestParameters.putByteArray("custom_events_file", getStringAsByteArray(jsonString));
                request.setTag(jsonString);
            }
            request.setParameters(requestParameters);
        }

        private byte[] getStringAsByteArray(String jsonString) {
            try {
                byte[] jsonUtf8 = jsonString.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET);
                return jsonUtf8;
            } catch (UnsupportedEncodingException e) {
                Utility.logd("Encoding exception: ", e);
                return null;
            }
        }
    }

    static class AppEvent implements Serializable {
        private static final long serialVersionUID = 1;
        private static final HashSet<String> validatedIdentifiers = new HashSet<>();
        private boolean isImplicit;
        private JSONObject jsonObject;
        private String name;

        public AppEvent(String contextName, String eventName, Double valueToSum, Bundle parameters, boolean isImplicitlyLogged, @Nullable UUID currentSessionId) {
            try {
                validateIdentifier(eventName);
                this.name = eventName;
                this.isImplicit = isImplicitlyLogged;
                this.jsonObject = new JSONObject();
                this.jsonObject.put("_eventName", eventName);
                this.jsonObject.put(Constants.LOG_TIME_APP_EVENT_KEY, System.currentTimeMillis() / 1000);
                this.jsonObject.put("_ui", contextName);
                if (currentSessionId != null) {
                    this.jsonObject.put("_session_id", currentSessionId);
                }
                if (valueToSum != null) {
                    this.jsonObject.put("_valueToSum", valueToSum.doubleValue());
                }
                if (this.isImplicit) {
                    this.jsonObject.put("_implicitlyLogged", "1");
                }
                if (parameters != null) {
                    for (String key : parameters.keySet()) {
                        validateIdentifier(key);
                        Object value = parameters.get(key);
                        if (!(value instanceof String) && !(value instanceof Number)) {
                            throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", value, key));
                        }
                        this.jsonObject.put(key, value.toString());
                    }
                }
                if (!this.isImplicit) {
                    Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", this.jsonObject.toString());
                }
            } catch (FacebookException e) {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Invalid app event name or parameter:", e.toString());
                this.jsonObject = null;
            } catch (JSONException jsonException) {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", jsonException.toString());
                this.jsonObject = null;
            }
        }

        public String getName() {
            return this.name;
        }

        private AppEvent(String jsonString, boolean isImplicit) throws JSONException {
            this.jsonObject = new JSONObject(jsonString);
            this.isImplicit = isImplicit;
        }

        public boolean getIsImplicit() {
            return this.isImplicit;
        }

        public JSONObject getJSONObject() {
            return this.jsonObject;
        }

        private void validateIdentifier(String identifier) throws FacebookException {
            boolean alreadyValidated;
            if (identifier == null || identifier.length() == 0 || identifier.length() > 40) {
                if (identifier == null) {
                    identifier = "<None Provided>";
                }
                throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", identifier, 40));
            }
            synchronized (validatedIdentifiers) {
                alreadyValidated = validatedIdentifiers.contains(identifier);
            }
            if (!alreadyValidated) {
                if (identifier.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
                    synchronized (validatedIdentifiers) {
                        validatedIdentifiers.add(identifier);
                    }
                    return;
                }
                throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", identifier));
            }
        }

        private static class SerializationProxyV1 implements Serializable {
            private static final long serialVersionUID = -2488473066578201069L;
            private final boolean isImplicit;
            private final String jsonString;

            private SerializationProxyV1(String jsonString, boolean isImplicit) {
                this.jsonString = jsonString;
                this.isImplicit = isImplicit;
            }

            private Object readResolve() throws JSONException {
                return new AppEvent(this.jsonString, this.isImplicit);
            }
        }

        private Object writeReplace() {
            return new SerializationProxyV1(this.jsonObject.toString(), this.isImplicit);
        }

        public String toString() {
            return String.format("\"%s\", implicit: %b, json: %s", this.jsonObject.optString("_eventName"), Boolean.valueOf(this.isImplicit), this.jsonObject.toString());
        }
    }

    static class PersistedAppSessionInfo {
        private static final String PERSISTED_SESSION_INFO_FILENAME = "AppEventsLogger.persistedsessioninfo";
        private static Map<AccessTokenAppIdPair, FacebookTimeSpentData> appSessionInfoMap;
        private static final Object staticLock = new Object();
        private static boolean hasChanges = false;
        private static boolean isLoaded = false;
        private static final Runnable appSessionInfoFlushRunnable = new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.PersistedAppSessionInfo.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                PersistedAppSessionInfo.saveAppSessionInformation(AppEventsLogger.applicationContext);
            }
        };

        PersistedAppSessionInfo() {
        }

        private static void restoreAppSessionInformation(Context context) throws Throwable {
            ObjectInputStream ois = null;
            synchronized (staticLock) {
                try {
                    try {
                        if (!isLoaded) {
                            try {
                                ObjectInputStream ois2 = new ObjectInputStream(context.openFileInput(PERSISTED_SESSION_INFO_FILENAME));
                                try {
                                    appSessionInfoMap = (HashMap) ois2.readObject();
                                    Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info loaded");
                                    try {
                                        Utility.closeQuietly(ois2);
                                        context.deleteFile(PERSISTED_SESSION_INFO_FILENAME);
                                        if (appSessionInfoMap == null) {
                                            appSessionInfoMap = new HashMap();
                                        }
                                        isLoaded = true;
                                        hasChanges = false;
                                        ois = ois2;
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                } catch (FileNotFoundException e) {
                                    ois = ois2;
                                    Utility.closeQuietly(ois);
                                    context.deleteFile(PERSISTED_SESSION_INFO_FILENAME);
                                    if (appSessionInfoMap == null) {
                                        appSessionInfoMap = new HashMap();
                                    }
                                    isLoaded = true;
                                    hasChanges = false;
                                } catch (Exception e2) {
                                    e = e2;
                                    ois = ois2;
                                    Log.d(AppEventsLogger.TAG, "Got unexpected exception: " + e.toString());
                                    Utility.closeQuietly(ois);
                                    context.deleteFile(PERSISTED_SESSION_INFO_FILENAME);
                                    if (appSessionInfoMap == null) {
                                        appSessionInfoMap = new HashMap();
                                    }
                                    isLoaded = true;
                                    hasChanges = false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    ois = ois2;
                                    Utility.closeQuietly(ois);
                                    context.deleteFile(PERSISTED_SESSION_INFO_FILENAME);
                                    if (appSessionInfoMap == null) {
                                        appSessionInfoMap = new HashMap();
                                    }
                                    isLoaded = true;
                                    hasChanges = false;
                                    throw th;
                                }
                            } catch (FileNotFoundException e3) {
                            } catch (Exception e4) {
                                e = e4;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }

        static void saveAppSessionInformation(Context context) throws Throwable {
            ObjectOutputStream oos = null;
            synchronized (staticLock) {
                try {
                    if (hasChanges) {
                        try {
                            try {
                                ObjectOutputStream oos2 = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput(PERSISTED_SESSION_INFO_FILENAME, 0)));
                                try {
                                    oos2.writeObject(appSessionInfoMap);
                                    hasChanges = false;
                                    Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info saved");
                                    try {
                                        Utility.closeQuietly(oos2);
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    oos = oos2;
                                    Log.d(AppEventsLogger.TAG, "Got unexpected exception: " + e.toString());
                                    Utility.closeQuietly(oos);
                                } catch (Throwable th2) {
                                    th = th2;
                                    oos = oos2;
                                    Utility.closeQuietly(oos);
                                    throw th;
                                }
                            } catch (Exception e2) {
                                e = e2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }

        static void onResume(Context context, AccessTokenAppIdPair accessTokenAppId, AppEventsLogger logger, long eventTime, String sourceApplicationInfo) {
            synchronized (staticLock) {
                FacebookTimeSpentData timeSpentData = getTimeSpentData(context, accessTokenAppId);
                timeSpentData.onResume(logger, eventTime, sourceApplicationInfo);
                onTimeSpentDataUpdate();
            }
        }

        static void onSuspend(Context context, AccessTokenAppIdPair accessTokenAppId, AppEventsLogger logger, long eventTime) {
            synchronized (staticLock) {
                FacebookTimeSpentData timeSpentData = getTimeSpentData(context, accessTokenAppId);
                timeSpentData.onSuspend(logger, eventTime);
                onTimeSpentDataUpdate();
            }
        }

        private static FacebookTimeSpentData getTimeSpentData(Context context, AccessTokenAppIdPair accessTokenAppId) throws Throwable {
            restoreAppSessionInformation(context);
            FacebookTimeSpentData result = appSessionInfoMap.get(accessTokenAppId);
            if (result == null) {
                FacebookTimeSpentData result2 = new FacebookTimeSpentData();
                appSessionInfoMap.put(accessTokenAppId, result2);
                return result2;
            }
            return result;
        }

        private static void onTimeSpentDataUpdate() {
            if (!hasChanges) {
                hasChanges = true;
                AppEventsLogger.backgroundExecutor.schedule(appSessionInfoFlushRunnable, 30L, TimeUnit.SECONDS);
            }
        }
    }

    static class PersistedEvents {
        static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
        private Context context;
        private HashMap<AccessTokenAppIdPair, List<AppEvent>> persistedEvents = new HashMap<>();

        private PersistedEvents(Context context) {
            this.context = context;
        }

        public static PersistedEvents readAndClearStore(Context context) {
            PersistedEvents persistedEvents;
            synchronized (AppEventsLogger.staticLock) {
                persistedEvents = new PersistedEvents(context);
                persistedEvents.readAndClearStore();
            }
            return persistedEvents;
        }

        public static void persistEvents(Context context, AccessTokenAppIdPair accessTokenAppId, SessionEventsState eventsToPersist) {
            Map<AccessTokenAppIdPair, SessionEventsState> map = new HashMap<>();
            map.put(accessTokenAppId, eventsToPersist);
            persistEvents(context, map);
        }

        public static void persistEvents(Context context, Map<AccessTokenAppIdPair, SessionEventsState> eventsToPersist) {
            synchronized (AppEventsLogger.staticLock) {
                PersistedEvents persistedEvents = readAndClearStore(context);
                for (Map.Entry<AccessTokenAppIdPair, SessionEventsState> entry : eventsToPersist.entrySet()) {
                    List<AppEvent> events = entry.getValue().getEventsToPersist();
                    if (events.size() != 0) {
                        persistedEvents.addEvents(entry.getKey(), events);
                    }
                }
                persistedEvents.write();
            }
        }

        public Set<AccessTokenAppIdPair> keySet() {
            return this.persistedEvents.keySet();
        }

        public List<AppEvent> getEvents(AccessTokenAppIdPair accessTokenAppId) {
            return this.persistedEvents.get(accessTokenAppId);
        }

        private void write() throws Throwable {
            ObjectOutputStream oos = null;
            try {
                try {
                    ObjectOutputStream oos2 = new ObjectOutputStream(new BufferedOutputStream(this.context.openFileOutput(PERSISTED_EVENTS_FILENAME, 0)));
                    try {
                        oos2.writeObject(this.persistedEvents);
                        Utility.closeQuietly(oos2);
                        oos = oos2;
                    } catch (Exception e) {
                        e = e;
                        oos = oos2;
                        Log.d(AppEventsLogger.TAG, "Got unexpected exception: " + e.toString());
                        Utility.closeQuietly(oos);
                    } catch (Throwable th) {
                        th = th;
                        oos = oos2;
                        Utility.closeQuietly(oos);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
        }

        private void readAndClearStore() throws Throwable {
            ObjectInputStream ois = null;
            try {
                try {
                    ObjectInputStream ois2 = new ObjectInputStream(new BufferedInputStream(this.context.openFileInput(PERSISTED_EVENTS_FILENAME)));
                    try {
                        HashMap<AccessTokenAppIdPair, List<AppEvent>> obj = (HashMap) ois2.readObject();
                        this.context.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                        this.persistedEvents = obj;
                        Utility.closeQuietly(ois2);
                        ois = ois2;
                    } catch (FileNotFoundException e) {
                        ois = ois2;
                        Utility.closeQuietly(ois);
                    } catch (Exception e2) {
                        e = e2;
                        ois = ois2;
                        Log.d(AppEventsLogger.TAG, "Got unexpected exception: " + e.toString());
                        Utility.closeQuietly(ois);
                    } catch (Throwable th) {
                        th = th;
                        ois = ois2;
                        Utility.closeQuietly(ois);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e3) {
            } catch (Exception e4) {
                e = e4;
            }
        }

        public void addEvents(AccessTokenAppIdPair accessTokenAppId, List<AppEvent> eventsToPersist) {
            if (!this.persistedEvents.containsKey(accessTokenAppId)) {
                this.persistedEvents.put(accessTokenAppId, new ArrayList());
            }
            this.persistedEvents.get(accessTokenAppId).addAll(eventsToPersist);
        }
    }
}
