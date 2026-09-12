package net.hockeyapp.android.metrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import net.hockeyapp.android.Constants;
import net.hockeyapp.android.PrivateEventManager;
import net.hockeyapp.android.metrics.model.Data;
import net.hockeyapp.android.metrics.model.Domain;
import net.hockeyapp.android.metrics.model.EventData;
import net.hockeyapp.android.metrics.model.SessionState;
import net.hockeyapp.android.metrics.model.SessionStateData;
import net.hockeyapp.android.metrics.model.TelemetryData;
import net.hockeyapp.android.utils.AsyncTaskUtils;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.Util;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MetricsManager {
    private static final String TAG = "HA-MetricsManager";
    private static volatile MetricsManager instance;
    private static Channel sChannel;
    private static Sender sSender;
    private static TelemetryContext sTelemetryContext;
    private static WeakReference<Application> sWeakApplication;
    private volatile boolean mSessionTrackingDisabled;
    private TelemetryLifecycleCallbacks mTelemetryLifecycleCallbacks;
    private static boolean sUserMetricsEnabled = true;
    protected static final AtomicInteger ACTIVITY_COUNT = new AtomicInteger(0);
    protected static final AtomicLong LAST_BACKGROUND = new AtomicLong(getTime());
    private static final Integer SESSION_RENEWAL_INTERVAL = 20000;
    private static final Object LOCK = new Object();

    protected MetricsManager(Context context, TelemetryContext telemetryContext, Sender sender, Persistence persistence, Channel channel) {
        sTelemetryContext = telemetryContext;
        sender = sender == null ? new Sender() : sender;
        sSender = sender;
        if (persistence == null) {
            persistence = new Persistence(context, sender);
        } else {
            persistence.setSender(sender);
        }
        sSender.setPersistence(persistence);
        if (channel == null) {
            sChannel = new Channel(sTelemetryContext, persistence);
        } else {
            sChannel = channel;
        }
        if (persistence.hasFilesAvailable()) {
            persistence.getSender().triggerSending();
        }
    }

    public static void register(Application application) throws Throwable {
        String appIdentifier = Util.getAppIdentifier(application.getApplicationContext());
        if (appIdentifier == null || appIdentifier.length() == 0) {
            throw new IllegalArgumentException("HockeyApp app identifier was not configured correctly in manifest or build configuration.");
        }
        register(application, appIdentifier);
    }

    public static void register(Application application, String appIdentifier) throws Throwable {
        register(application, appIdentifier, null, null, null);
    }

    @Deprecated
    public static void register(Context context, Application application) {
        String appIdentifier = Util.getAppIdentifier(context);
        if (appIdentifier == null || appIdentifier.length() == 0) {
            throw new IllegalArgumentException("HockeyApp app identifier was not configured correctly in manifest or build configuration.");
        }
        register(context, application, appIdentifier);
    }

    @Deprecated
    public static void register(Context context, Application application, String appIdentifier) throws Throwable {
        register(application, appIdentifier, null, null, null);
    }

    protected static void register(Application application, String appIdentifier, Sender sender, Persistence persistence, Channel channel) throws Throwable {
        MetricsManager result;
        if (instance == null) {
            synchronized (LOCK) {
                try {
                    MetricsManager result2 = instance;
                    if (result2 == null) {
                        try {
                            Constants.loadFromContext(application.getApplicationContext());
                            result = new MetricsManager(application.getApplicationContext(), new TelemetryContext(application.getApplicationContext(), appIdentifier), sender, persistence, channel);
                            sWeakApplication = new WeakReference<>(application);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } else {
                        result = result2;
                    }
                    result.mSessionTrackingDisabled = !Util.sessionTrackingSupported();
                    instance = result;
                    if (!result.mSessionTrackingDisabled) {
                        setSessionTrackingDisabled(false);
                    }
                    PrivateEventManager.addEventListener(new PrivateEventManager.HockeyEventListener() { // from class: net.hockeyapp.android.metrics.MetricsManager.1
                        @Override // net.hockeyapp.android.PrivateEventManager.HockeyEventListener
                        public void onHockeyEvent(PrivateEventManager.Event event) {
                            if (event.getType() == 1) {
                                MetricsManager.sChannel.synchronize();
                            }
                        }
                    });
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    public static void disableUserMetrics() {
        setUserMetricsEnabled(false);
    }

    public static void enableUserMetrics() {
        setUserMetricsEnabled(true);
    }

    public static boolean isUserMetricsEnabled() {
        return sUserMetricsEnabled;
    }

    private static void setUserMetricsEnabled(boolean enabled) {
        sUserMetricsEnabled = enabled;
        if (sUserMetricsEnabled) {
            instance.registerTelemetryLifecycleCallbacks();
        } else {
            instance.unregisterTelemetryLifecycleCallbacks();
        }
    }

    public static boolean sessionTrackingEnabled() {
        return isUserMetricsEnabled() && !instance.mSessionTrackingDisabled;
    }

    public static void setSessionTrackingDisabled(Boolean disabled) {
        if (instance == null || !isUserMetricsEnabled()) {
            HockeyLog.warn(TAG, "MetricsManager hasn't been registered or User Metrics has been disabled. No User Metrics will be collected!");
            return;
        }
        synchronized (LOCK) {
            if (Util.sessionTrackingSupported()) {
                instance.mSessionTrackingDisabled = disabled.booleanValue();
                if (!disabled.booleanValue()) {
                    instance.registerTelemetryLifecycleCallbacks();
                }
            } else {
                instance.mSessionTrackingDisabled = true;
                instance.unregisterTelemetryLifecycleCallbacks();
            }
        }
    }

    @TargetApi(14)
    private void registerTelemetryLifecycleCallbacks() {
        if (this.mTelemetryLifecycleCallbacks == null) {
            this.mTelemetryLifecycleCallbacks = new TelemetryLifecycleCallbacks();
        }
        getApplication().registerActivityLifecycleCallbacks(this.mTelemetryLifecycleCallbacks);
    }

    @TargetApi(14)
    private void unregisterTelemetryLifecycleCallbacks() {
        if (this.mTelemetryLifecycleCallbacks != null) {
            getApplication().unregisterActivityLifecycleCallbacks(this.mTelemetryLifecycleCallbacks);
            this.mTelemetryLifecycleCallbacks = null;
        }
    }

    public static void setCustomServerURL(String serverURL) {
        if (sSender != null) {
            sSender.setCustomServerURL(serverURL);
        } else {
            HockeyLog.warn(TAG, "HockeyApp couldn't set the custom server url. Please register(...) the MetricsManager before setting the server URL.");
        }
    }

    private static Application getApplication() {
        if (sWeakApplication == null) {
            return null;
        }
        Application application = sWeakApplication.get();
        return application;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getTime() {
        return new Date().getTime();
    }

    protected static Channel getChannel() {
        return sChannel;
    }

    protected void setChannel(Channel channel) {
        sChannel = channel;
    }

    protected static Sender getSender() {
        return sSender;
    }

    protected static void setSender(Sender sender) {
        sSender = sender;
    }

    protected static MetricsManager getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSession() {
        int count = ACTIVITY_COUNT.getAndIncrement();
        if (count == 0) {
            if (sessionTrackingEnabled()) {
                HockeyLog.debug(TAG, "Starting & tracking session");
                renewSession();
                return;
            } else {
                HockeyLog.debug(TAG, "Session management disabled by the developer");
                return;
            }
        }
        long now = getTime();
        long then = LAST_BACKGROUND.getAndSet(getTime());
        boolean shouldRenew = now - then >= ((long) SESSION_RENEWAL_INTERVAL.intValue());
        HockeyLog.debug(TAG, "Checking if we have to renew a session, time difference is: " + (now - then));
        if (shouldRenew && sessionTrackingEnabled()) {
            HockeyLog.debug(TAG, "Renewing session");
            renewSession();
        }
    }

    protected void renewSession() {
        String sessionId = UUID.randomUUID().toString();
        sTelemetryContext.renewSessionContext(sessionId);
        trackSessionState(SessionState.START);
    }

    private void trackSessionState(final SessionState sessionState) {
        try {
            AsyncTaskUtils.execute(new AsyncTask<Void, Void, Void>() { // from class: net.hockeyapp.android.metrics.MetricsManager.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public Void doInBackground(Void... params) {
                    SessionStateData sessionItem = new SessionStateData();
                    sessionItem.setState(sessionState);
                    Data<Domain> data = MetricsManager.createData(sessionItem);
                    MetricsManager.sChannel.enqueueData(data);
                    return null;
                }
            });
        } catch (RejectedExecutionException e) {
            HockeyLog.error("Could not track session state. Executor rejected async task.", e);
        }
    }

    protected static Data<Domain> createData(TelemetryData telemetryData) {
        Data<Domain> data = new Data<>();
        data.setBaseData(telemetryData);
        data.setBaseType(telemetryData.getBaseType());
        data.QualifiedName = telemetryData.getEnvelopeName();
        return data;
    }

    public static void trackEvent(String eventName) {
        trackEvent(eventName, null);
    }

    public static void trackEvent(String eventName, Map<String, String> properties) {
        trackEvent(eventName, properties, null);
    }

    public static void trackEvent(final String eventName, final Map<String, String> properties, final Map<String, Double> measurements) {
        if (!TextUtils.isEmpty(eventName)) {
            if (instance == null) {
                Log.w(TAG, "MetricsManager hasn't been registered or User Metrics has been disabled. No User Metrics will be collected!");
                return;
            }
            if (!isUserMetricsEnabled()) {
                HockeyLog.warn("User Metrics is disabled. Will not track event.");
                return;
            }
            try {
                AsyncTaskUtils.execute(new AsyncTask<Void, Void, Void>() { // from class: net.hockeyapp.android.metrics.MetricsManager.3
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public Void doInBackground(Void... params) {
                        EventData eventItem = new EventData();
                        eventItem.setName(eventName);
                        if (properties != null) {
                            eventItem.setProperties(properties);
                        }
                        if (measurements != null) {
                            eventItem.setMeasurements(measurements);
                        }
                        Data<Domain> data = MetricsManager.createData(eventItem);
                        MetricsManager.sChannel.enqueueData(data);
                        return null;
                    }
                });
            } catch (RejectedExecutionException e) {
                HockeyLog.error("Could not track custom event. Executor rejected async task.", e);
            }
        }
    }

    @TargetApi(14)
    private class TelemetryLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        private TelemetryLifecycleCallbacks() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            MetricsManager.this.updateSession();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            MetricsManager.LAST_BACKGROUND.set(MetricsManager.getTime());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }
    }
}
