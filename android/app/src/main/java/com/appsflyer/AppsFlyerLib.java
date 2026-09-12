package com.appsflyer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.appsflyer.cache.CacheManager;
import com.appsflyer.cache.RequestCacheData;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.GoogleApiAvailability;
import com.microsoft.onlineid.sts.request.AbstractStsRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AppsFlyerLib {
    static final String AF_COUNTER_PREF = "appsFlyerCount";
    static final String AF_EVENT_COUNTER_PREF = "appsFlyerInAppEventCount";
    public static final String AF_PRE_INSTALL_PATH = "AF_PRE_INSTALL_PATH";
    static final String AF_SHARED_PREF = "appsflyer-data";
    static final String AF_TIME_PASSED_SINCE_LAST_LAUNCH = "AppsFlyerTimePassedSincePrevLaunch";
    private static final String ANDROID_ID_CACHED_PREF = "androidIdCached";
    public static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    public static final String ATTRIBUTION_ID_CONTENT_URI = "content://com.facebook.katana.provider.AttributionIdProvider";
    static final String ATTRIBUTION_ID_PREF = "attributionId";
    static final String BUILD_NUMBER = "4.7.1";
    private static final String CACHED_CHANNEL_PREF = "CACHED_CHANNEL";
    private static final String CACHED_URL_PARAMETER = "&isCachedRequest=true&timeincache=";
    private static final String CALL_SERVER_ACTION = "call server.";
    private static final String CONVERSION_DATA_CACHE_EXPIRATION = "appsflyerConversionDataCacheExpiration";
    private static final String CONVERSION_DATA_URL = "https://api.appsflyer.com/install_data/v3/";
    private static final String CONVERSION_REQUEST_RETRIES = "appsflyerConversionDataRequestRetries";
    private static final String DEEPLINK_ATTR_PREF = "deeplinkAttribution";
    static final String EXTRA_REFERRERS_PREF = "extraReferrers";
    static final String FIRST_INSTALL_PREF = "appsFlyerFirstInstall";
    private static final String GET_CONVERSION_DATA_TIME = "appsflyerGetConversionDataTiming";
    private static final String IMEI_CACHED_PREF = "imeiCached";
    private static final String INSTALL_STORE_PREF = "INSTALL_STORE";
    static final String INSTALL_UPDATE_DATE_FORMAT = "yyyy-MM-dd_HHmmssZ";
    private static final String IN_APP_EVENTS_API = "1";
    static final String JENKINS_BUILD_NUMBER = "314";
    public static final String LOG_TAG = "AppsFlyer_4.7.1";
    private static final int NUMBER_OF_CONVERSION_DATA_RETRIES = 5;
    private static final String PREPARE_DATA_ACTION = "collect data for server";
    private static final String PREV_EVENT = "prev_event";
    private static final String PREV_EVENT_NAME = "prev_event_name";
    private static final String PREV_EVENT_TIMESTAMP = "prev_event_timestamp";
    private static final String PREV_EVENT_VALUE = "prev_event_value";
    static final String PRE_INSTALL_PREF = "preInstallName";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT = "/data/local/tmp/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT_ETC = "/etc/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_RO_PROP = "ro.appsflyer.preinstall.path";
    private static final int PUSH_PAYLOAD_HISTORY_SIZE_DEFAULT_VALUE = 2;
    private static final long PUSH_PAYLOAD_MAX_AGING_DEFAULT_VALUE = 1800000;
    static final String RD_BACKEND_URL = "https://monitorsdk.appsflyer.com/remote-debug?app_id=";
    static final String REFERRER_PREF = "referrer";
    static final String RESPONSE_NOT_JSON = "response_not_json";
    static final String SENT_SUCCESSFULLY_PREF = "sentSuccessfully";
    private static final String SERVER_RESPONDED_ACTION = "response from server. status=";
    private static final long SIXTY_DAYS = 5184000000L;
    private static final String STATS_URL = "https://stats.appsflyer.com/stats";
    private static final long TEST_MODE_MAX_DURATION = 30000;
    static final String VALIDATE_URL = "https://sdk-services.appsflyer.com/validate-android-signature";
    private static final String VERSION_CODE = "versionCode";
    private static long lastCacheCheck;
    private static long timeEnteredForeground;
    private static long timeWentToBackground;
    private boolean isTokenRefreshServiceConfigured;
    private Foreground.Listener listener;
    private String pushPayload;
    private Map<Long, String> pushPayloadHistory;
    private long testModeStartTime;
    private long timeInApp;
    String userCustomAndroidId;
    String userCustomImei;
    private static final String SERVER_BUILD_NUMBER = "4.7.1".substring(0, "4.7.1".indexOf("."));
    public static final String APPS_TRACKING_URL = "https://t.appsflyer.com/api/v" + SERVER_BUILD_NUMBER + "/androidevent?buildnumber=4.7.1&app_id=";
    public static final String EVENTS_TRACKING_URL = "https://events.appsflyer.com/api/v" + SERVER_BUILD_NUMBER + "/androidevent?buildnumber=4.7.1&app_id=";
    private static final String REGISTER_URL = "https://register.appsflyer.com/api/v" + SERVER_BUILD_NUMBER + "/androidevent?buildnumber=4.7.1&app_id=";
    static final String VALIDATE_WH_URL = "https://validate.appsflyer.com/api/v" + SERVER_BUILD_NUMBER + "/androidevent?buildnumber=4.7.1&app_id=";
    private static final List<String> IGNORABLE_KEYS = Arrays.asList("is_cache");
    private static AppsFlyerConversionListener conversionDataListener = null;
    static AppsFlyerInAppPurchaseValidatorListener validatorListener = null;
    private static boolean isDuringCheckCache = false;
    private static ScheduledExecutorService cacheScheduler = null;
    private static AppsFlyerLib instance = new AppsFlyerLib();
    private Uri latestDeepLink = null;
    private boolean isRetargetingTestMode = false;

    void onReceive(Context context, Intent intent) {
        String shouldMonitor = intent.getStringExtra(AppsFlyerProperties.IS_MONITOR);
        if (shouldMonitor != null) {
            AFLogger.afLog("Turning on monitoring.");
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_MONITOR, shouldMonitor.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
            monitor(context, null, MonitorMessages.START_TRACKING, context.getPackageName());
            return;
        }
        AFLogger.afLog("****** onReceive called *******");
        debugAction("******* onReceive: ", "", context);
        AppsFlyerProperties.getInstance().setOnReceiveCalled();
        String referrer = intent.getStringExtra(REFERRER_PREF);
        AFLogger.afLog(LogMessages.PLAY_STORE_REFERRER_RECIEVED + referrer);
        if (referrer != null) {
            String testIntegration = intent.getStringExtra("TestIntegrationMode");
            if (testIntegration != null && testIntegration.equals("AppsFlyer_Test")) {
                SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.clear();
                editorCommit(editor);
                AppsFlyerProperties.getInstance().setFirstLaunchCalled(false);
                startTestMode();
            }
            debugAction("onReceive called. referrer: ", referrer, context);
            saveDataToSharedPreferences(context, REFERRER_PREF, referrer);
            AppsFlyerProperties.getInstance().setReferrer(referrer);
            if (AppsFlyerProperties.getInstance().isFirstLaunchCalled()) {
                AFLogger.afLog("onReceive: isLaunchCalled");
                backgroundReferrerLaunch(context, referrer);
            }
        }
    }

    void addReferrer(Context context, String referrer) {
        JSONObject referrers;
        JSONArray occurrencesTimestamps;
        JSONObject referrers2;
        AFLogger.afDebugLog("received a new (extra) referrer: " + referrer);
        try {
            long now = System.currentTimeMillis();
            SharedPreferences sp = context.getSharedPreferences(AF_SHARED_PREF, 0);
            String referrersString = sp.getString(EXTRA_REFERRERS_PREF, null);
            try {
                if (referrersString == null) {
                    referrers = new JSONObject();
                    JSONArray occurrencesTimestamps2 = new JSONArray();
                    occurrencesTimestamps = occurrencesTimestamps2;
                    referrers2 = referrers;
                } else {
                    referrers = new JSONObject(referrersString);
                    if (referrers.has(referrer)) {
                        JSONArray occurrencesTimestamps3 = new JSONArray((String) referrers.get(referrer));
                        occurrencesTimestamps = occurrencesTimestamps3;
                        referrers2 = referrers;
                    } else {
                        JSONArray occurrencesTimestamps4 = new JSONArray();
                        occurrencesTimestamps = occurrencesTimestamps4;
                        referrers2 = referrers;
                    }
                }
                if (occurrencesTimestamps.length() <= 4) {
                    occurrencesTimestamps.put(now);
                }
                referrers2.put(referrer, occurrencesTimestamps.toString());
                saveDataToSharedPreferences(context, EXTRA_REFERRERS_PREF, referrers2.toString());
            } catch (JSONException e) {
            } catch (Throwable th) {
                t = th;
                AFLogger.afLogE("Couldn't save referrer - " + referrer + ": ", t);
            }
        } catch (JSONException e2) {
        } catch (Throwable th2) {
            t = th2;
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    void editorCommit(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    private void startTestMode() {
        AFLogger.afLog("Test mode started..");
        this.testModeStartTime = System.currentTimeMillis();
    }

    private void endTestMode() {
        AFLogger.afLog("Test mode ended!");
        this.testModeStartTime = 0L;
    }

    private boolean isInTestMode(Context context) {
        long interval = System.currentTimeMillis() - this.testModeStartTime;
        String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
        return interval <= TEST_MODE_MAX_DURATION && referrer != null && referrer.contains("AppsFlyer_Test");
    }

    private AppsFlyerLib() {
    }

    public static AppsFlyerLib getInstance() {
        return instance;
    }

    public String getSdkVersion() {
        RemoteDebuggingManager.getInstance().addApiEvent("getSdkVersion", new String[0]);
        return "version: 4.7.1 (build 314)";
    }

    private void registerForAppEvents(Application application) {
        if (this.listener == null) {
            AppsFlyerProperties.getInstance().loadProperties(application.getApplicationContext());
            if (Build.VERSION.SDK_INT >= 14) {
                Foreground.init(application);
                this.listener = new Foreground.Listener() { // from class: com.appsflyer.AppsFlyerLib.1
                    @Override // com.appsflyer.Foreground.Listener
                    public void onBecameForeground(Activity currentActivity) {
                        AFLogger.afLog("onBecameForeground");
                        long unused = AppsFlyerLib.timeEnteredForeground = System.currentTimeMillis();
                        AppsFlyerLib.this.trackEventInternal(currentActivity, null, null);
                    }

                    @Override // com.appsflyer.Foreground.Listener
                    public void onBecameBackground(WeakReference<Activity> currentActivity) {
                        AFLogger.afLog("onBecameBackground");
                        long unused = AppsFlyerLib.timeWentToBackground = System.currentTimeMillis();
                        AFLogger.afLog("callStatsBackground background call");
                        WeakReference<Context> weakContext = new WeakReference<>(currentActivity.get().getApplicationContext());
                        AppsFlyerLib.this.callStatsBackground(weakContext);
                        RemoteDebuggingManager rdInstance = RemoteDebuggingManager.getInstance();
                        if (rdInstance.isRemoteDebuggingEnabledFromServer()) {
                            rdInstance.stopRemoteDebuggingMode();
                            if (weakContext.get() != null) {
                                String packageName = weakContext.get().getPackageName();
                                PackageManager packageManager = weakContext.get().getPackageManager();
                                rdInstance.sendRemoteDebuggingData(packageName, packageManager);
                            }
                            rdInstance.releaseRemoteDebugging();
                            return;
                        }
                        AFLogger.afDebugLog("RD status is OFF");
                    }
                };
                Foreground.getInstance().registerListener(this.listener);
            } else {
                AFLogger.afLog("SDK<14 call trackAppLaunch manually");
                trackEventInternal(application.getApplicationContext(), null, null);
            }
        }
    }

    @Deprecated
    public void setGCMProjectID(String projectNumber) {
        RemoteDebuggingManager.getInstance().addApiEvent("setGCMProjectID", projectNumber);
        AFLogger.afWarnLog("Method 'setGCMProjectNumber' is deprecated. Please follow the documentation.");
        enableUninstallTracking(projectNumber);
    }

    @Deprecated
    public void setGCMProjectNumber(String projectNumber) {
        RemoteDebuggingManager.getInstance().addApiEvent("setGCMProjectNumber", projectNumber);
        AFLogger.afWarnLog("Method 'setGCMProjectNumber' is deprecated. Please follow the documentation.");
        enableUninstallTracking(projectNumber);
    }

    @Deprecated
    public void setGCMProjectNumber(Context context, String projectNumber) {
        RemoteDebuggingManager.getInstance().addApiEvent("setGCMProjectNumber", projectNumber);
        AFLogger.afWarnLog("Method 'setGCMProjectNumber' is deprecated. Please use 'enableUninstallTracking'.");
        enableUninstallTracking(projectNumber);
    }

    public void enableUninstallTracking(String senderId) {
        RemoteDebuggingManager.getInstance().addApiEvent("enableUninstallTracking", senderId);
        setProperty("gcmProjectNumber", senderId);
    }

    public void updateServerUninstallToken(Context context, String token) {
        if (token != null) {
            AFUninstallToken afToken = new AFUninstallToken(token);
            UninstallUtils.updateServerUninstallToken(context, afToken);
        }
    }

    public void setDebugLog(boolean shouldEnable) {
        RemoteDebuggingManager.getInstance().addApiEvent("setDebugLog", String.valueOf(shouldEnable));
        AppsFlyerProperties.getInstance().enableLogOutput(shouldEnable);
    }

    public void setImeiData(String aImei) {
        RemoteDebuggingManager.getInstance().addApiEvent("setImeiData", aImei);
        this.userCustomImei = aImei;
    }

    public void setAndroidIdData(String aAndroidId) {
        RemoteDebuggingManager.getInstance().addApiEvent("setAndroidIdData", aAndroidId);
        this.userCustomAndroidId = aAndroidId;
    }

    private void debugAction(String actionMsg, String parameter, Context context) {
        try {
            if (isAppsFlyerPackage(context)) {
                DebugLogQueue.getInstance().push(actionMsg + parameter);
            }
        } catch (Exception e) {
            AFLogger.afLogE("Exception in AppsFlyerLib.debugAction(...):", e);
        }
    }

    private boolean isAppsFlyerPackage(Context context) {
        return context != null && context.getPackageName().length() > 12 && BuildConfig.APPLICATION_ID.equals(context.getPackageName().toLowerCase().substring(0, 13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDataToSharedPreferences(Context context, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(key, value);
        editorCommit(editor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveIntegerToSharedPreferences(Context context, String key, int value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putInt(key, value);
        editorCommit(editor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveLongToSharedPreferences(Context context, String key, long value) {
        saveLongToSharedPreferences(context.getSharedPreferences(AF_SHARED_PREF, 0), key, value);
    }

    private void saveLongToSharedPreferences(SharedPreferences sharedPreferences, String key, long value) {
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putLong(key, value);
        editorCommit(editor);
    }

    private boolean checkWriteExternalPermission(Context context) {
        int res = context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
        return res == 0;
    }

    private void setProperty(String key, String value) {
        AppsFlyerProperties.getInstance().set(key, value);
    }

    private void setProperty(String key, int value) {
        AppsFlyerProperties.getInstance().set(key, value);
    }

    void setProperty(String key, boolean value) {
        AppsFlyerProperties.getInstance().set(key, value);
    }

    void setProperty(String key, long value) {
        AppsFlyerProperties.getInstance().set(key, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getProperty(String key) {
        return AppsFlyerProperties.getInstance().getString(key);
    }

    private int getProperty(String key, int defaultValue) {
        return AppsFlyerProperties.getInstance().getInt(key, defaultValue);
    }

    boolean getProperty(String key, boolean defaultValue) {
        return AppsFlyerProperties.getInstance().getBoolean(key, defaultValue);
    }

    long getProperty(String key, long defaultValue) {
        return AppsFlyerProperties.getInstance().getLong(key, defaultValue);
    }

    @Deprecated
    public void setAppUserId(String id) {
        RemoteDebuggingManager.getInstance().addApiEvent("setAppUserId", id);
        setCustomerUserId(id);
    }

    public void setCustomerUserId(String id) {
        RemoteDebuggingManager.getInstance().addApiEvent("setCustomerUserId", id);
        AFLogger.afLog("setCustomerUserId = " + id);
        setProperty(AppsFlyerProperties.APP_USER_ID, id);
    }

    public void setAdditionalData(HashMap<String, Object> customData) {
        if (customData != null) {
            RemoteDebuggingManager.getInstance().addApiEvent("setAdditionalData", customData.toString());
            JSONObject jsonObject = new JSONObject(customData);
            AppsFlyerProperties.getInstance().setCustomData(jsonObject.toString());
        }
    }

    public void sendDeepLinkData(Activity activity) {
        if (activity != null && activity.getIntent() != null) {
            RemoteDebuggingManager.getInstance().addApiEvent("sendDeepLinkData", activity.getLocalClassName(), "activity_intent_" + activity.getIntent().toString());
        } else if (activity != null) {
            RemoteDebuggingManager.getInstance().addApiEvent("sendDeepLinkData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            RemoteDebuggingManager.getInstance().addApiEvent("sendDeepLinkData", "activity_null");
        }
        AFLogger.afLog("getDeepLinkData with activity " + activity.getIntent().getDataString());
        registerForAppEvents(activity.getApplication());
    }

    public void sendPushNotificationData(Activity activity) {
        if (activity != null && activity.getIntent() != null) {
            RemoteDebuggingManager.getInstance().addApiEvent("sendPushNotificationData", activity.getLocalClassName(), "activity_intent_" + activity.getIntent().toString());
        } else if (activity != null) {
            RemoteDebuggingManager.getInstance().addApiEvent("sendPushNotificationData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            RemoteDebuggingManager.getInstance().addApiEvent("sendPushNotificationData", "activity_null");
        }
        this.pushPayload = getPushPayloadFromIntent(activity);
        if (this.pushPayload != null) {
            long now = System.currentTimeMillis();
            long oldestPayloadTimestamp = now;
            if (this.pushPayloadHistory == null) {
                AFLogger.afLog("pushes: initializing pushes history..");
                this.pushPayloadHistory = new ConcurrentHashMap();
            } else {
                try {
                    long pushPayloadMaxAging = AppsFlyerProperties.getInstance().getLong("pushPayloadMaxAging", PUSH_PAYLOAD_MAX_AGING_DEFAULT_VALUE);
                    for (Long age : this.pushPayloadHistory.keySet()) {
                        JSONObject newPush = new JSONObject(this.pushPayload);
                        JSONObject oldPush = new JSONObject(this.pushPayloadHistory.get(age));
                        if (newPush.get(MonitorMessages.PROCESS_ID).equals(oldPush.get(MonitorMessages.PROCESS_ID))) {
                            AFLogger.afLog("PushNotificationMeasurement: A previous payload with same PID was already acknowledged! (old: " + oldPush + ", new: " + newPush + ")");
                            this.pushPayload = null;
                            return;
                        } else {
                            if (now - age.longValue() > pushPayloadMaxAging) {
                                this.pushPayloadHistory.remove(age);
                            }
                            if (age.longValue() <= oldestPayloadTimestamp) {
                                oldestPayloadTimestamp = age.longValue();
                            }
                        }
                    }
                } catch (Throwable t) {
                    AFLogger.afLogE("Error while handling push notification measurement: " + t.getClass().getSimpleName(), t);
                }
            }
            int pushPayloadHistorySize = AppsFlyerProperties.getInstance().getInt("pushPayloadHistorySize", 2);
            if (this.pushPayloadHistory.size() == pushPayloadHistorySize) {
                AFLogger.afLog("pushes: removing oldest overflowing push (oldest push:" + oldestPayloadTimestamp + ")");
                this.pushPayloadHistory.remove(Long.valueOf(oldestPayloadTimestamp));
            }
            this.pushPayloadHistory.put(Long.valueOf(now), this.pushPayload);
            registerForAppEvents(activity.getApplication());
        }
    }

    @Deprecated
    public void setUserEmail(String email) {
        RemoteDebuggingManager.getInstance().addApiEvent("setUserEmail", email);
        setProperty(AppsFlyerProperties.USER_EMAIL, email);
    }

    public void setUserEmails(String... emails) {
        RemoteDebuggingManager.getInstance().addApiEvent("setUserEmails", emails);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, emails);
    }

    public void setUserEmails(AppsFlyerProperties.EmailsCryptType cryptMethod, String... emails) {
        List<String> args = new ArrayList<>(emails.length + 1);
        args.add(cryptMethod.toString());
        args.addAll(Arrays.asList(emails));
        RemoteDebuggingManager.getInstance().addApiEvent("setUserEmails", (String[]) args.toArray(new String[emails.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, cryptMethod.getValue());
        Map<String, Object> emailData = new HashMap<>();
        String cryptKey = null;
        ArrayList<String> hashedEmailList = new ArrayList<>();
        for (String email : emails) {
            switch (cryptMethod) {
                case MD5:
                    cryptKey = "md5_el_arr";
                    hashedEmailList.add(HashUtils.toMD5(email));
                    break;
                case SHA256:
                    cryptKey = "sha256_el_arr";
                    hashedEmailList.add(HashUtils.toSha256(email));
                    break;
                case NONE:
                    cryptKey = "plain_el_arr";
                    hashedEmailList.add(email);
                    break;
                default:
                    cryptKey = "sha1_el_arr";
                    hashedEmailList.add(HashUtils.toSHA1(email));
                    break;
            }
        }
        emailData.put(cryptKey, hashedEmailList);
        JSONObject jObj = new JSONObject(emailData);
        AppsFlyerProperties.getInstance().setUserEmails(jObj.toString());
    }

    public void setCollectAndroidID(boolean isCollect) {
        RemoteDebuggingManager.getInstance().addApiEvent("setCollectAndroidID", String.valueOf(isCollect));
        setProperty(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(isCollect));
    }

    public void setCollectIMEI(boolean isCollect) {
        RemoteDebuggingManager.getInstance().addApiEvent("setCollectIMEI", String.valueOf(isCollect));
        setProperty(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(isCollect));
    }

    @Deprecated
    public void setCollectFingerPrint(boolean isCollect) {
        RemoteDebuggingManager.getInstance().addApiEvent("setCollectFingerPrint", String.valueOf(isCollect));
        setProperty(AppsFlyerProperties.COLLECT_FINGER_PRINT, Boolean.toString(isCollect));
    }

    public void startTracking(Application application, String key) {
        RemoteDebuggingManager.getInstance().addApiEvent("startTracking", key);
        AFLogger.afLogM("Build Number: 314");
        setProperty(AppsFlyerProperties.AF_KEY, key);
        LogMessages.setDevKey(key);
        registerForAppEvents(application);
    }

    private void getReInstallData(Context context) {
        if (Build.VERSION.SDK_INT >= 18) {
            AFKeystoreWrapper afKeystore = new AFKeystoreWrapper(context);
            if (!afKeystore.loadData()) {
                afKeystore.createFirstInstallData(Installation.id(new WeakReference(context)));
                setProperty("KSAppsFlyerId", afKeystore.getUid());
                setProperty("KSAppsFlyerRICounter", String.valueOf(afKeystore.getReInstallCounter()));
            } else {
                afKeystore.incrementReInstallCounter();
                setProperty("KSAppsFlyerId", afKeystore.getUid());
                setProperty("KSAppsFlyerRICounter", String.valueOf(afKeystore.getReInstallCounter()));
            }
        }
    }

    private String getCustomerUserId() {
        return getProperty(AppsFlyerProperties.APP_USER_ID);
    }

    public void setAppId(String id) {
        RemoteDebuggingManager.getInstance().addApiEvent("setAppId", id);
        setProperty(AppsFlyerProperties.APP_ID, id);
    }

    private String getAppId() {
        return getProperty(AppsFlyerProperties.APP_ID);
    }

    public void setExtension(String extension) {
        RemoteDebuggingManager.getInstance().addApiEvent("setExtension", extension);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, extension);
    }

    public void setIsUpdate(boolean isUpdate) {
        RemoteDebuggingManager.getInstance().addApiEvent("setIsUpdate", String.valueOf(isUpdate));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, isUpdate);
    }

    public void setCurrencyCode(String currencyCode) {
        RemoteDebuggingManager.getInstance().addApiEvent("setCurrencyCode", currencyCode);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, currencyCode);
    }

    public void trackLocation(Context context, double latitude, double longitude) {
        RemoteDebuggingManager.getInstance().addApiEvent("trackLocation", String.valueOf(latitude), String.valueOf(longitude));
        Map<String, Object> location = new HashMap<>();
        location.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(longitude));
        location.put(AFInAppEventParameterName.LATITUDE, Double.toString(latitude));
        trackEventInternal(context, AFInAppEventType.LOCATION_COORDINATES, location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callStatsBackground(WeakReference<Context> context) {
        String customUUID;
        if (context.get() != null) {
            AFLogger.afLog("app went to background");
            SharedPreferences sharedPreferences = context.get().getSharedPreferences(AF_SHARED_PREF, 0);
            AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
            long sessionTime = timeWentToBackground - timeEnteredForeground;
            Map<String, String> statsParams = new HashMap<>();
            String afDevKey = getProperty(AppsFlyerProperties.AF_KEY);
            String originalAFUID = getProperty("KSAppsFlyerId");
            boolean deviceTrackingDisabled = AppsFlyerProperties.getInstance().getBoolean("deviceTrackingDisabled", false);
            if (deviceTrackingDisabled) {
                statsParams.put("deviceTrackingDisabled", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            }
            AdvertisingIdObject amazonAdvIdObject = AdvertisingIdUtil.getAmazonAID(context.get().getContentResolver());
            if (amazonAdvIdObject != null) {
                statsParams.put(ServerParameters.AMAZON_AID, amazonAdvIdObject.getAdvertisingId());
                statsParams.put(ServerParameters.AMAZON_AID_LIMIT, String.valueOf(amazonAdvIdObject.isLimitAdTracking()));
            }
            String advertisingId = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
            if (advertisingId != null) {
                statsParams.put(ServerParameters.ADVERTISING_ID_PARAM, advertisingId);
            }
            statsParams.put("app_id", context.get().getPackageName());
            statsParams.put(ServerParameters.DEV_KEY, afDevKey);
            statsParams.put(ServerParameters.AF_USER_ID, Installation.id(context));
            statsParams.put(ServerParameters.TIME_SPENT_IN_APP, String.valueOf(sessionTime / 1000));
            statsParams.put(ServerParameters.STATUS_TYPE, "user_closed_app");
            statsParams.put("platform", AbstractStsRequest.DeviceType);
            statsParams.put(ServerParameters.LAUNCH_COUNTER, Integer.toString(getCounter(sharedPreferences, AF_COUNTER_PREF, false)));
            statsParams.put(ServerParameters.CONVERSION_DATA_TIMING, Long.toString(sharedPreferences.getLong(GET_CONVERSION_DATA_TIME, 0L)));
            statsParams.put("channel", getConfiguredChannel(context));
            if (originalAFUID == null) {
                originalAFUID = "";
            }
            statsParams.put(ServerParameters.ORIGINAL_AF_UID, originalAFUID);
            boolean collectFingerPrint = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_FINGER_PRINT, true);
            if (collectFingerPrint && (customUUID = getUniquePsuedoID()) != null) {
                statsParams.put(ServerParameters.DEVICE_FINGER_PRINT_ID, customUUID);
            }
            try {
                BackgroundHttpTask statTask = new BackgroundHttpTask(null);
                statTask.bodyParameters = statsParams;
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    AFLogger.afDebugLog("Main thread detected. Running callStats task in a new thread.");
                    statTask.execute(STATS_URL);
                } else {
                    AFLogger.afDebugLog("Running callStats task (on current thread: " + Thread.currentThread().toString() + " )");
                    statTask.onPreExecute();
                    statTask.onPostExecute(statTask.doInBackground(STATS_URL));
                }
            } catch (Throwable t) {
                AFLogger.afLogE("Could not send callStats request", t);
            }
        }
    }

    public void trackAppLaunch(Context ctx, String devKey) {
        runInBackground(ctx, devKey, null, null, "", true);
    }

    protected void setDeepLinkData(Intent intent) {
        if (intent != null) {
            try {
                if ("android.intent.action.VIEW".equals(intent.getAction())) {
                    this.latestDeepLink = intent.getData();
                    AFLogger.afDebugLog("Unity setDeepLinkData = " + this.latestDeepLink);
                }
            } catch (Throwable t) {
                AFLogger.afLogE("Exception while setting deeplink data (unity). ", t);
            }
        }
    }

    public void reportTrackSession(Context ctx) {
        RemoteDebuggingManager.getInstance().addApiEvent("reportTrackSession", new String[0]);
        RemoteDebuggingManager.getInstance().disableRemoteDebuggingForThisApp();
        trackEventInternal(ctx, null, null);
    }

    public void trackEvent(Context context, String eventName, Map<String, Object> eventValues) {
        JSONObject eventValuesJSON = new JSONObject(eventValues == null ? new HashMap<>() : eventValues);
        RemoteDebuggingManager.getInstance().addApiEvent("trackEvent", eventName, eventValuesJSON.toString());
        trackEventInternal(context, eventName, eventValues);
    }

    void trackEventInternal(Context context, String eventName, Map<String, Object> eventValues) {
        if (eventValues == null) {
            eventValues = new HashMap<>();
        }
        JSONObject eventValuesJSON = new JSONObject(eventValues);
        String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
        runInBackground(context, null, eventName, eventValuesJSON.toString(), referrer == null ? "" : referrer, true);
    }

    private void monitor(Context context, String eventIdentifier, String message, String value) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.IS_MONITOR, false)) {
            Intent localIntent = new Intent(MonitorMessages.BROADCAST_ACTION);
            localIntent.setPackage("com.appsflyer.nightvision");
            localIntent.putExtra("message", message);
            localIntent.putExtra(MonitorMessages.VALUE, value);
            localIntent.putExtra(MonitorMessages.PACKAGE, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            localIntent.putExtra(MonitorMessages.PROCESS_ID, new Integer(Process.myPid()));
            localIntent.putExtra(MonitorMessages.EVENT_IDENTIFIER, eventIdentifier);
            localIntent.putExtra("sdk", "4.7.1");
            context.sendBroadcast(localIntent);
        }
    }

    void callRegisterBackground(Context context, String token) {
        String customUUID;
        Map<String, String> registerParams = new HashMap<>();
        String afDevKey = getProperty(AppsFlyerProperties.AF_KEY);
        boolean deviceTrackingDisabled = AppsFlyerProperties.getInstance().getBoolean("deviceTrackingDisabled", false);
        if (deviceTrackingDisabled) {
            registerParams.put("deviceTrackingDisabled", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        AdvertisingIdObject amazonAdvIdObject = AdvertisingIdUtil.getAmazonAID(context.getContentResolver());
        if (amazonAdvIdObject != null) {
            registerParams.put(ServerParameters.AMAZON_AID, amazonAdvIdObject.getAdvertisingId());
            registerParams.put(ServerParameters.AMAZON_AID_LIMIT, String.valueOf(amazonAdvIdObject.isLimitAdTracking()));
        }
        String advertisingId = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (advertisingId != null) {
            registerParams.put(ServerParameters.ADVERTISING_ID_PARAM, advertisingId);
        }
        registerParams.put(ServerParameters.DEV_KEY, afDevKey);
        registerParams.put(ServerParameters.AF_USER_ID, Installation.id(new WeakReference(context)));
        registerParams.put(ServerParameters.AF_GCM_TOKEN, token);
        registerParams.put(ServerParameters.LAUNCH_COUNTER, Integer.toString(getCounter(context.getSharedPreferences(AF_SHARED_PREF, 0), AF_COUNTER_PREF, false)));
        registerParams.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        registerParams.put("channel", getConfiguredChannel(new WeakReference<>(context)));
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            long firstInstallTime = packageInfo.firstInstallTime;
            SimpleDateFormat dateFormat = new SimpleDateFormat(INSTALL_UPDATE_DATE_FORMAT, Locale.US);
            registerParams.put("install_date", dateFormat.format(new Date(firstInstallTime)));
        } catch (Throwable e) {
            AFLogger.afLogE(e.getMessage(), e);
        }
        boolean collectFingerPrint = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_FINGER_PRINT, true);
        if (collectFingerPrint && (customUUID = getUniquePsuedoID()) != null) {
            registerParams.put(ServerParameters.DEVICE_FINGER_PRINT_ID, customUUID);
        }
        try {
            BackgroundHttpTask registerTask = new BackgroundHttpTask(context);
            registerTask.bodyParameters = registerParams;
            String url = REGISTER_URL + context.getPackageName();
            registerTask.execute(url);
        } catch (Throwable t) {
            AFLogger.afLogE(t.getMessage(), t);
        }
    }

    private static void broadcastBacktoTestApp(Context context, String paramsString) {
        Intent localIntent = new Intent(MonitorMessages.TEST_INTEGRATION_ACTION);
        localIntent.putExtra(NativeProtocol.WEB_DIALOG_PARAMS, paramsString);
        context.sendBroadcast(localIntent);
    }

    public void setDeviceTrackingDisabled(boolean isDisabled) {
        RemoteDebuggingManager.getInstance().addApiEvent("setDeviceTrackingDisabled", String.valueOf(isDisabled));
        AppsFlyerProperties.getInstance().set("deviceTrackingDisabled", isDisabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getConversionData(Context context) throws AttributionIDNotReady {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
        if (referrer != null && referrer.length() > 0 && referrer.contains("af_tranid")) {
            return referrerStringToMap(context, referrer);
        }
        String attributionString = sharedPreferences.getString(ATTRIBUTION_ID_PREF, null);
        if (attributionString != null && attributionString.length() > 0) {
            return attributionStringToMap(attributionString);
        }
        throw new AttributionIDNotReady();
    }

    public void registerConversionListener(Context context, AppsFlyerConversionListener conversionDataListener2) {
        RemoteDebuggingManager.getInstance().addApiEvent("registerConversionListener", new String[0]);
        registerConversionListenerInternal(context, conversionDataListener2);
    }

    private void registerConversionListenerInternal(Context context, AppsFlyerConversionListener conversionDataListener2) {
        if (conversionDataListener2 != null) {
            conversionDataListener = conversionDataListener2;
        }
    }

    public void unregisterConversionListener() {
        RemoteDebuggingManager.getInstance().addApiEvent("unregisterConversionListener", new String[0]);
        conversionDataListener = null;
    }

    public void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener validationListener) {
        RemoteDebuggingManager.getInstance().addApiEvent("registerValidatorListener", new String[0]);
        AFLogger.afDebugLog("registerValidatorListener called");
        if (validationListener == null) {
            AFLogger.afDebugLog("registerValidatorListener null listener");
        } else {
            validatorListener = validationListener;
        }
    }

    protected void getConversionData(Context context, final ConversionDataListener conversionDataListener2) {
        registerConversionListenerInternal(context, new AppsFlyerConversionListener() { // from class: com.appsflyer.AppsFlyerLib.2
            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onInstallConversionDataLoaded(Map<String, String> conversionData) {
                conversionDataListener2.onConversionDataLoaded(conversionData);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onInstallConversionFailure(String errorMessage) {
                conversionDataListener2.onConversionFailure(errorMessage);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAppOpenAttribution(Map<String, String> attributionData) {
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAttributionFailure(String errorMessage) {
            }
        });
    }

    private Map<String, String> referrerStringToMap(Context context, String referrer) {
        Map<String, String> conversionData = new LinkedHashMap<>();
        String[] pairs = referrer.split("&");
        boolean didFindPrt = false;
        for (String pair : pairs) {
            int idx = pair.indexOf("=");
            String name = idx > 0 ? pair.substring(0, idx) : pair;
            if (!conversionData.containsKey(name)) {
                if (name.equals("c")) {
                    name = "campaign";
                } else if (name.equals(MonitorMessages.PROCESS_ID)) {
                    name = "media_source";
                } else if (name.equals("af_prt")) {
                    didFindPrt = true;
                    name = "agency";
                }
                conversionData.put(name, new String());
            }
            String value = (idx <= 0 || pair.length() <= idx + 1) ? null : pair.substring(idx + 1);
            conversionData.put(name, value);
        }
        try {
            if (!conversionData.containsKey("install_time")) {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                long firstInstallTime = packageInfo.firstInstallTime;
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                conversionData.put("install_time", dateFormat.format(new Date(firstInstallTime)));
            }
        } catch (Exception e) {
            AFLogger.afLogE("Could not fetch install time. ", e);
        }
        if (!conversionData.containsKey("af_status")) {
            conversionData.put("af_status", "Non-organic");
        }
        if (didFindPrt) {
            conversionData.remove("media_source");
        }
        return conversionData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> attributionStringToMap(String inputString) {
        Map<String, String> conversionData = new HashMap<>();
        try {
            JSONObject jsonObject = new JSONObject(inputString);
            Iterator<String> itKeys = jsonObject.keys();
            while (itKeys.hasNext()) {
                String key = itKeys.next();
                if (!IGNORABLE_KEYS.contains(key)) {
                    conversionData.put(key, jsonObject.getString(key));
                }
            }
            return conversionData;
        } catch (JSONException e) {
            AFLogger.afLogE(e.getMessage(), e);
            return null;
        }
    }

    private void runInBackground(Context context, String appsFlyerKey, String eventName, String eventValue, String referrer, boolean isNewAPI) {
        long timeSinceLastLaunch = timeEnteredForeground - timeWentToBackground;
        if (eventName == null && timeSinceLastLaunch < 5000) {
            AFLogger.afLog("Time passed since last Launch: " + (timeSinceLastLaunch / 1000.0d) + " seconds -> NOT sending 'Launch' event");
        } else {
            ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
            scheduler.schedule(new DataCollector(new WeakReference(context), appsFlyerKey, eventName, eventValue, referrer, isNewAPI, scheduler), 150L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void backgroundReferrerLaunch(Context context, String str) {
        String str2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        if (str != null && str.length() > 5) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new DataCollector(new WeakReference(context), str2, objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, str, true, scheduledExecutorServiceNewSingleThreadScheduledExecutor), 5L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendTrackingWithEvent(Context context, String appsFlyerKey, String eventName, String eventValue, String referrer, boolean isUseNewAPI) throws Throwable {
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
            AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
            AFLogger.afLog("sendTrackingWithEvent from activity: " + context.getClass().getName());
            boolean isLaunchEvent = eventName == null;
            Map<String, Object> params = getEventParameters(context, appsFlyerKey, eventName, eventValue, referrer, isUseNewAPI, sharedPreferences, isLaunchEvent);
            String afDevKey = (String) params.get(ServerParameters.AF_DEV_KEY);
            if (afDevKey == null || afDevKey.length() == 0) {
                AFLogger.afDebugLog("Not sending data yet, waiting for dev key");
                return;
            }
            AFLogger.afLog("AppsFlyerLib.sendTrackingWithEvent");
            String urlString = (isLaunchEvent ? APPS_TRACKING_URL : EVENTS_TRACKING_URL) + context.getPackageName();
            new SendToServerRunnable(urlString, params, context.getApplicationContext(), isLaunchEvent).run();
        }
    }

    Map<String, Object> getEventParameters(Context context, String appsFlyerKey, String eventName, String eventValue, String referrer, boolean isUseNewAPI, SharedPreferences sharedPreferences, boolean isLaunchEvent) {
        Object facebookAttributeId;
        AFUninstallToken tokenObject;
        String customUUID;
        Map<String, Object> params = new HashMap<>();
        AdvertisingIdUtil.addGoogleAID(context, params);
        params.put(ServerParameters.TIMESTAMP, Long.toString(new Date().getTime()));
        try {
            debugAction(PREPARE_DATA_ACTION, "", context);
            AFLogger.afLog(LogMessages.EVENT_CREATED_WITH_NAME + (isLaunchEvent ? "Launch" : eventName));
            debugAction("********* sendTrackingWithEvent: ", isLaunchEvent ? "Launch" : eventName, context);
            monitor(context, LOG_TAG, MonitorMessages.EVENT_CREATED_WITH_NAME, isLaunchEvent ? "Launch" : eventName);
            CacheManager.getInstance().init(context);
            try {
                List<String> requestedPermissions = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
                if (!requestedPermissions.contains("android.permission.INTERNET")) {
                    AFLogger.afWarnLog(LogMessages.PERMISSION_INTERNET_MISSING);
                    monitor(context, null, MonitorMessages.PERMISSION_INTERNET_MISSING, null);
                }
                if (!requestedPermissions.contains("android.permission.ACCESS_NETWORK_STATE")) {
                    AFLogger.afWarnLog(LogMessages.PERMISSION_ACCESS_NETWORK_MISSING);
                }
                if (!requestedPermissions.contains("android.permission.ACCESS_WIFI_STATE")) {
                    AFLogger.afWarnLog(LogMessages.PERMISSION_ACCESS_WIFI_MISSING);
                }
            } catch (Exception e) {
                AFLogger.afLogE("Exception while validation permissions. ", e);
            }
            if (isUseNewAPI) {
                params.put("af_events_api", "1");
            }
            params.put("brand", Build.BRAND);
            params.put("device", Build.DEVICE);
            params.put("product", Build.PRODUCT);
            params.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
            params.put("model", Build.MODEL);
            params.put("deviceType", Build.TYPE);
            if (isLaunchEvent) {
                if (isAppsFlyerFirstLaunch(context)) {
                    if (!AppsFlyerProperties.getInstance().isOtherSdkStringDisabled()) {
                        params.put(ServerParameters.OTHER_SDKS, generateOtherSDKsString());
                        float batteryLevel = getBatteryLevel(context);
                        params.put(ServerParameters.DEVICE_CURRENT_BATTERY_LEVEL, String.valueOf(batteryLevel));
                    }
                    getReInstallData(context);
                }
            } else {
                lastEventsProcessing(context, params, eventName, eventValue);
            }
            String originalAFUID = getProperty("KSAppsFlyerId");
            String reInstallCounter = getProperty("KSAppsFlyerRICounter");
            if (originalAFUID != null && reInstallCounter != null && Integer.valueOf(reInstallCounter).intValue() > 0) {
                params.put(ServerParameters.REINSTALL_COUNTER, reInstallCounter);
                params.put(ServerParameters.ORIGINAL_AF_UID, originalAFUID);
            }
            String customData = getProperty(AppsFlyerProperties.ADDITIONAL_CUSTOM_DATA);
            if (customData != null) {
                params.put("customData", customData);
            }
            try {
                Object installerPackage = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackage != null) {
                    params.put("installer_package", installerPackage);
                }
            } catch (Exception e2) {
                AFLogger.afLogE("Exception while getting the app's installer package. ", e2);
            }
            String sdkExtension = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.EXTENSION);
            if (sdkExtension != null && sdkExtension.length() > 0) {
                params.put(AppsFlyerProperties.EXTENSION, sdkExtension);
            }
            String currentChannel = getConfiguredChannel(new WeakReference<>(context));
            String originalChannel = getCachedChannel(context, currentChannel);
            if (originalChannel != null) {
                params.put("channel", originalChannel);
            }
            if ((originalChannel != null && !originalChannel.equals(currentChannel)) || (originalChannel == null && currentChannel != null)) {
                params.put(ServerParameters.LATEST_CHANNEL_SERVER_PARAM, currentChannel);
            }
            String installStore = getCachedStore(context);
            if (installStore != null) {
                params.put(ServerParameters.INSTALL_STORE, installStore.toLowerCase());
            }
            String preInstallName = getPreInstallName(context);
            if (preInstallName != null) {
                params.put(ServerParameters.PRE_INSTALL_NAME, preInstallName.toLowerCase());
            }
            String currentStore = getCurrentStore(context);
            if (currentStore != null) {
                params.put(ServerParameters.CURRENT_STORE, currentStore.toLowerCase());
            }
            if (appsFlyerKey != null && appsFlyerKey.length() >= 0) {
                params.put(ServerParameters.AF_DEV_KEY, appsFlyerKey);
            } else {
                String afKeyFromProperties = getProperty(AppsFlyerProperties.AF_KEY);
                if (afKeyFromProperties != null && afKeyFromProperties.length() >= 0) {
                    params.put(ServerParameters.AF_DEV_KEY, afKeyFromProperties);
                } else {
                    AFLogger.afLog(LogMessages.DEV_KEY_MISSING);
                    monitor(context, LOG_TAG, MonitorMessages.DEV_KEY_MISSING, null);
                    AFLogger.afLog("AppsFlyer will not track this event.");
                    return null;
                }
            }
            String appUserId = getCustomerUserId();
            if (appUserId != null) {
                params.put("appUserId", appUserId);
            }
            Object emailData = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.USER_EMAILS);
            if (emailData != null) {
                params.put("user_emails", emailData);
            } else {
                String userEmail = getProperty(AppsFlyerProperties.USER_EMAIL);
                if (userEmail != null) {
                    params.put("sha1_el", HashUtils.toSHA1(userEmail));
                }
            }
            if (eventName != null) {
                params.put(ServerParameters.EVENT_NAME, eventName);
                if (eventValue != null) {
                    params.put(ServerParameters.EVENT_VALUE, eventValue);
                }
            }
            if (getAppId() != null) {
                params.put(AppsFlyerProperties.APP_ID, getProperty(AppsFlyerProperties.APP_ID));
            }
            String currencyCode = getProperty(AppsFlyerProperties.CURRENCY_CODE);
            if (currencyCode != null) {
                if (currencyCode.length() != 3) {
                    AFLogger.afWarnLog("WARNING: currency code should be 3 characters!!! '" + currencyCode + "' is not a legal value.");
                }
                params.put("currency", currencyCode);
            }
            String isUpdate = getProperty(AppsFlyerProperties.IS_UPDATE);
            if (isUpdate != null) {
                params.put("isUpdate", isUpdate);
            }
            boolean isPreInstall = isPreInstalledApp(context);
            params.put("af_preinstalled", Boolean.toString(isPreInstall));
            boolean shouldCollectFBId = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_FACEBOOK_ATTR_ID, true);
            if (shouldCollectFBId) {
                try {
                    try {
                        context.getPackageManager().getApplicationInfo("com.facebook.katana", 0);
                        facebookAttributeId = getAttributionId(context.getContentResolver());
                    } catch (Throwable t) {
                        facebookAttributeId = null;
                        AFLogger.afLogE("Exception while collecting facebook's attribution ID. ", t);
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    facebookAttributeId = null;
                    AFLogger.afWarnLog("Exception while collecting facebook's attribution ID. ");
                }
                if (facebookAttributeId != null) {
                    params.put("fb", facebookAttributeId);
                }
            }
            addDeviceTracking(context, params);
            try {
                Object uid = Installation.id(new WeakReference(context));
                if (uid != null) {
                    params.put(ServerParameters.AF_USER_ID, uid);
                }
            } catch (Exception e4) {
                AFLogger.afLogE("ERROR: could not get uid " + e4.getMessage(), e4);
            }
            try {
                params.put("lang", Locale.getDefault().getDisplayLanguage());
            } catch (Exception e5) {
                AFLogger.afLogE("Exception while collecting display language name. ", e5);
            }
            try {
                params.put("lang_code", Locale.getDefault().getLanguage());
            } catch (Exception e6) {
                AFLogger.afLogE("Exception while collecting display language code. ", e6);
            }
            try {
                params.put("country", Locale.getDefault().getCountry());
            } catch (Exception e7) {
                AFLogger.afLogE("Exception while collecting country name. ", e7);
            }
            try {
                TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
                params.put("operator", manager.getSimOperatorName());
                params.put("carrier", manager.getNetworkOperatorName());
            } catch (Exception e8) {
                AFLogger.afLogE("Exception while collecting network operator/carrier.  ", e8);
            }
            try {
                params.put("network", getNetwork(context));
            } catch (Throwable e9) {
                AFLogger.afLogE("Exception while collecting network info. ", e9);
            }
            boolean collectFingerPrint = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_FINGER_PRINT, true);
            if (collectFingerPrint && (customUUID = getUniquePsuedoID()) != null) {
                params.put(ServerParameters.DEVICE_FINGER_PRINT_ID, customUUID);
            }
            checkPlatform(context, params);
            getSystemInfo(params);
            SimpleDateFormat dateFormat = new SimpleDateFormat(INSTALL_UPDATE_DATE_FORMAT, Locale.US);
            if (Build.VERSION.SDK_INT >= 9) {
                try {
                    long installed = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
                    params.put("installDate", dateFormat.format(new Date(installed)));
                } catch (Exception e10) {
                    AFLogger.afLogE("Exception while collecting install date. ", e10);
                }
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                int versioncode = sharedPreferences.getInt(VERSION_CODE, 0);
                if (packageInfo.versionCode > versioncode) {
                    saveIntegerToSharedPreferences(context, CONVERSION_REQUEST_RETRIES, 0);
                    saveIntegerToSharedPreferences(context, VERSION_CODE, packageInfo.versionCode);
                }
                params.put("app_version_code", Integer.toString(packageInfo.versionCode));
                params.put("app_version_name", packageInfo.versionName);
                if (Build.VERSION.SDK_INT >= 9) {
                    long firstInstallTime = packageInfo.firstInstallTime;
                    long lastUpdateTime = packageInfo.lastUpdateTime;
                    params.put("date1", dateFormat.format(new Date(firstInstallTime)));
                    params.put("date2", dateFormat.format(new Date(lastUpdateTime)));
                    Object firstInstallDate = getFirstInstallDate(dateFormat, context);
                    params.put("firstLaunchDate", firstInstallDate);
                }
            } catch (Throwable t2) {
                AFLogger.afLogE("Exception while collecting app version data ", t2);
            }
            if (referrer.length() > 0) {
                params.put(REFERRER_PREF, referrer);
            }
            String attributionString = sharedPreferences.getString(ATTRIBUTION_ID_PREF, null);
            if (attributionString != null && attributionString.length() > 0) {
                params.put("installAttribution", attributionString);
            }
            Object referrersString = sharedPreferences.getString(EXTRA_REFERRERS_PREF, null);
            if (referrersString != null) {
                params.put(EXTRA_REFERRERS_PREF, referrersString);
            }
            String uninstallToken = getProperty("afUninstallToken");
            if (uninstallToken != null && (tokenObject = AFUninstallToken.parse(uninstallToken)) != null) {
                params.put(ServerParameters.AF_GCM_TOKEN, tokenObject.getToken());
            }
            this.isTokenRefreshServiceConfigured = UninstallUtils.didConfigureTokenRefreshService(context);
            AFLogger.afDebugLog("didConfigureTokenRefreshService=" + this.isTokenRefreshServiceConfigured);
            if (!this.isTokenRefreshServiceConfigured) {
                params.put(ServerParameters.TOKEN_REFRESH_CONFIGURED, false);
            }
            if (isLaunchEvent) {
                if (this.pushPayload != null) {
                    JSONObject jsonPushPayload = new JSONObject(this.pushPayload);
                    jsonPushPayload.put("isPush", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    params.put(ServerParameters.DEEP_LINK, jsonPushPayload.toString());
                }
                this.pushPayload = null;
            }
            if (isLaunchEvent && (context instanceof Activity)) {
                Uri uri = getDeepLinkUri(context);
                if (uri != null) {
                    handleDeepLinkCallback(context, params, uri);
                } else if (this.latestDeepLink != null) {
                    handleDeepLinkCallback(context, params, this.latestDeepLink);
                }
            }
            if (this.isRetargetingTestMode) {
                params.put("testAppMode_retargeting", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                JSONObject paramsJSON = new JSONObject(params);
                broadcastBacktoTestApp(context, paramsJSON.toString());
                AFLogger.afLog("Sent retargeting params to test app");
            }
            if (isInTestMode(context)) {
                params.put("testAppMode", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                JSONObject paramsJSON2 = new JSONObject(params);
                broadcastBacktoTestApp(context, paramsJSON2.toString());
                AFLogger.afLog("Sent params to test app");
                endTestMode();
            }
            if (getProperty(ServerParameters.ADVERTISING_ID_PARAM) == null) {
                AdvertisingIdUtil.addGoogleAID(context, params);
                if (getProperty(ServerParameters.ADVERTISING_ID_PARAM) != null) {
                    params.put("GAID_retry", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                } else {
                    params.put("GAID_retry", "false");
                }
            }
            AdvertisingIdObject amazonAdvIdObject = AdvertisingIdUtil.getAmazonAID(context.getContentResolver());
            if (amazonAdvIdObject != null) {
                params.put(ServerParameters.AMAZON_AID, amazonAdvIdObject.getAdvertisingId());
                params.put(ServerParameters.AMAZON_AID_LIMIT, String.valueOf(amazonAdvIdObject.isLimitAdTracking()));
            }
            String referrerFromProperties = AppsFlyerProperties.getInstance().getReferrer(context);
            if (referrerFromProperties != null && referrerFromProperties.length() > 0 && params.get(REFERRER_PREF) == null) {
                params.put(REFERRER_PREF, referrerFromProperties);
            }
            boolean sentSuccessfully = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(sharedPreferences.getString(SENT_SUCCESSFULLY_PREF, ""));
            int counter = getCounter(sharedPreferences, AF_COUNTER_PREF, isLaunchEvent);
            params.put("counter", Integer.toString(counter));
            params.put("iaecounter", Integer.toString(getCounter(sharedPreferences, AF_EVENT_COUNTER_PREF, eventName != null)));
            params.put(ServerParameters.TIME_PASSED_SINCE_LAST_LAUNCH, Long.toString(getTimePassedSinceLastLaunch(context, true)));
            if (isLaunchEvent && counter == 1) {
                AppsFlyerProperties.getInstance().setFirstLaunchCalled();
            }
            params.put("isFirstCall", Boolean.toString(!sentSuccessfully));
            Object hash = new HashUtils().getHashCode(params);
            params.put("af_v", hash);
            Object hashV2 = new HashUtils().getHashCodeV2(params);
            params.put("af_v2", hashV2);
            return params;
        } catch (Throwable e11) {
            AFLogger.afLogE(e11.getLocalizedMessage(), e11);
            return params;
        }
    }

    private String getPushPayloadFromIntent(Context context) {
        Intent intent;
        Bundle bundle;
        String _pushPayload = null;
        if ((context instanceof Activity) && (intent = ((Activity) context).getIntent()) != null && (bundle = intent.getExtras()) != null && (_pushPayload = bundle.getString("af")) != null) {
            AFLogger.afLog("Push Notification received af payload = " + _pushPayload);
            bundle.remove("af");
            ((Activity) context).setIntent(intent.putExtras(bundle));
        }
        return _pushPayload;
    }

    private Uri getDeepLinkUri(Context context) {
        Intent intent = ((Activity) context).getIntent();
        if (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) {
            return null;
        }
        Uri res = intent.getData();
        return res;
    }

    private void handleDeepLinkCallback(Context context, Map<String, Object> params, Uri uri) {
        Map<String, String> attributionMap;
        params.put(ServerParameters.DEEP_LINK, uri.toString());
        if (uri.getQueryParameter(ServerParameters.DEEP_LINK) != null) {
            String media_source = uri.getQueryParameter("media_source");
            String is_retargeting = uri.getQueryParameter("is_retargeting");
            if (media_source != null && is_retargeting != null && media_source.equals("AppsFlyer_Test") && is_retargeting.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)) {
                this.isRetargetingTestMode = true;
            }
            attributionMap = referrerStringToMap(context, uri.getQuery().toString());
            if (uri.getPath() != null) {
                attributionMap.put("path", uri.getPath());
            }
            if (uri.getScheme() != null) {
                attributionMap.put("scheme", uri.getScheme());
            }
            if (uri.getHost() != null) {
                attributionMap.put("host", uri.getHost());
            }
        } else {
            attributionMap = new HashMap<>();
            attributionMap.put("link", uri.toString());
        }
        String json = new JSONObject(attributionMap).toString();
        saveDataToSharedPreferences(context, DEEPLINK_ATTR_PREF, json);
        if (conversionDataListener != null) {
            conversionDataListener.onAppOpenAttribution(attributionMap);
        }
    }

    private String generateOtherSDKsString() {
        return new StringBuilder().append(numericBooleanIsClassExist("com.tune.Tune")).append(numericBooleanIsClassExist("com.adjust.sdk.Adjust")).append(numericBooleanIsClassExist("com.kochava.android.tracker.Feature")).append(numericBooleanIsClassExist("io.branch.referral.Branch")).append(numericBooleanIsClassExist("com.apsalar.sdk.Apsalar")).append(numericBooleanIsClassExist("com.localytics.android.Localytics")).append(numericBooleanIsClassExist("com.tenjin.android.TenjinSDK")).append(numericBooleanIsClassExist("com.talkingdata.sdk.TalkingDataSDK")).append(numericBooleanIsClassExist("it.partytrack.sdk.Track")).append(numericBooleanIsClassExist("jp.appAdForce.android.LtvManager")).toString();
    }

    private int numericBooleanIsClassExist(String className) {
        try {
            Class.forName(className);
            return 1;
        } catch (ClassNotFoundException e) {
            return 0;
        } catch (Throwable th) {
            return 0;
        }
    }

    private void lastEventsProcessing(Context context, Map<String, Object> params, String newEventName, String newEventValue) {
        SharedPreferences sp = context.getSharedPreferences(AF_SHARED_PREF, 0);
        SharedPreferences.Editor editor = sp.edit();
        try {
            String previousEventName = sp.getString(PREV_EVENT_NAME, null);
            if (previousEventName != null) {
                JSONObject json = new JSONObject();
                json.put(PREV_EVENT_TIMESTAMP, sp.getLong(PREV_EVENT_TIMESTAMP, -1L) + "");
                json.put(PREV_EVENT_VALUE, sp.getString(PREV_EVENT_VALUE, null));
                json.put(PREV_EVENT_NAME, previousEventName);
                params.put(PREV_EVENT, json.toString());
            }
            editor.putString(PREV_EVENT_NAME, newEventName);
            editor.putString(PREV_EVENT_VALUE, newEventValue);
            editor.putLong(PREV_EVENT_TIMESTAMP, System.currentTimeMillis());
            editorCommit(editor);
        } catch (Exception e) {
            AFLogger.afLogE("Error while processing previous event.", e);
        }
    }

    boolean isGooglePlayServicesAvailable(Context context) {
        try {
            int statusCode = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
            if (statusCode != 0) {
                return false;
            }
            return true;
        } catch (Throwable t) {
            AFLogger.afLogE("WARNING:  Google play services is unavailable. ", t);
            return false;
        }
    }

    private void addDeviceTracking(Context context, Map<String, Object> params) {
        boolean deviceTrackingDisabled = AppsFlyerProperties.getInstance().getBoolean("deviceTrackingDisabled", false);
        if (deviceTrackingDisabled) {
            params.put("deviceTrackingDisabled", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        boolean collectIMEI = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI, true);
        String cachedImei = sharedPreferences.getString(IMEI_CACHED_PREF, null);
        String imei = null;
        if (collectIMEI) {
            if (isIdCollectionAllowed(context)) {
                try {
                    TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
                    String deviceImei = (String) manager.getClass().getMethod("getDeviceId", new Class[0]).invoke(manager, new Object[0]);
                    if (deviceImei != null) {
                        imei = deviceImei;
                    } else if (this.userCustomImei != null) {
                        imei = this.userCustomImei;
                    } else if (cachedImei != null) {
                        imei = cachedImei;
                    }
                } catch (InvocationTargetException e) {
                    AFLogger.afWarnLog("WARNING: READ_PHONE_STATE is missing.");
                } catch (Exception e2) {
                    AFLogger.afLogE("WARNING: READ_PHONE_STATE is missing. ", e2);
                }
            } else if (this.userCustomImei != null) {
                imei = this.userCustomImei;
            }
        } else if (this.userCustomImei != null) {
            imei = this.userCustomImei;
        }
        if (imei != null) {
            saveDataToSharedPreferences(context, IMEI_CACHED_PREF, imei);
            params.put("imei", imei);
        } else {
            AFLogger.afLog("IMEI was not collected.");
        }
        boolean collectAndroidId = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, true);
        String cachedAndroidId = sharedPreferences.getString(ANDROID_ID_CACHED_PREF, null);
        String androidId = null;
        if (collectAndroidId) {
            if (isIdCollectionAllowed(context)) {
                try {
                    String deviceAndroidId = Settings.Secure.getString(context.getContentResolver(), ServerParameters.ANDROID_ID);
                    if (deviceAndroidId != null) {
                        androidId = deviceAndroidId;
                    } else if (this.userCustomAndroidId != null) {
                        androidId = this.userCustomAndroidId;
                    } else if (cachedAndroidId != null) {
                        androidId = cachedAndroidId;
                    }
                } catch (Exception e3) {
                    AFLogger.afLogE(e3.getMessage(), e3);
                }
            } else if (this.userCustomAndroidId != null) {
                androidId = this.userCustomAndroidId;
            }
        } else if (this.userCustomAndroidId != null) {
            androidId = this.userCustomAndroidId;
        }
        if (androidId != null) {
            saveDataToSharedPreferences(context, ANDROID_ID_CACHED_PREF, androidId);
            params.put(ServerParameters.ANDROID_ID, androidId);
        } else {
            AFLogger.afLog("Android ID was not collected.");
        }
    }

    private boolean isIdCollectionAllowed(Context context) {
        return Build.VERSION.SDK_INT < 19 || !isGooglePlayServicesAvailable(context);
    }

    private boolean isAppsFlyerFirstLaunch(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        return !sharedPreferences.contains(AF_COUNTER_PREF);
    }

    private String getCachedStore(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        if (sharedPreferences.contains(INSTALL_STORE_PREF)) {
            return sharedPreferences.getString(INSTALL_STORE_PREF, null);
        }
        boolean isFirstLaunch = isAppsFlyerFirstLaunch(context);
        String store = isFirstLaunch ? getCurrentStore(context) : null;
        saveDataToSharedPreferences(context, INSTALL_STORE_PREF, store);
        return store;
    }

    private String getCurrentStore(Context context) {
        return getManifestMetaData(new WeakReference<>(context), "AF_STORE");
    }

    String getSystemProperty(String key) {
        try {
            String value = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, key);
            return value;
        } catch (Throwable e) {
            AFLogger.afLogE(e.getMessage(), e);
            return null;
        }
    }

    private String getManifestMetaData(WeakReference<Context> context, String key) {
        if (context.get() == null) {
            return null;
        }
        return getManifestMetaData(key, context.get().getPackageManager(), context.get().getPackageName());
    }

    private String getManifestMetaData(String key, PackageManager packageManager, String packageName) {
        Object storeObj;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 128);
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null || (storeObj = bundle.get(key)) == null) {
                return null;
            }
            String res = storeObj.toString();
            return res;
        } catch (Throwable e) {
            AFLogger.afLogE("Could not find " + key + " value in the manifest", e);
            return null;
        }
    }

    private String preInstallValueFromFile(Context context) {
        String preInstallValue;
        String preInstallFilePathFromSysProp = getSystemProperty(PRE_INSTALL_SYSTEM_RO_PROP);
        File preInstallFile = getFileFromString(preInstallFilePathFromSysProp);
        if (isPreInstallFileInvalid(preInstallFile)) {
            String preInstallFilePathFromManifest = getManifestMetaData(AF_PRE_INSTALL_PATH, context.getPackageManager(), context.getPackageName());
            preInstallFile = getFileFromString(preInstallFilePathFromManifest);
        }
        if (isPreInstallFileInvalid(preInstallFile)) {
            preInstallFile = getFileFromString(PRE_INSTALL_SYSTEM_DEFAULT);
        }
        if (isPreInstallFileInvalid(preInstallFile)) {
            preInstallFile = getFileFromString(PRE_INSTALL_SYSTEM_DEFAULT_ETC);
        }
        if (isPreInstallFileInvalid(preInstallFile) || (preInstallValue = extractPropertyFromFile(preInstallFile, context.getPackageName())) == null) {
            return null;
        }
        return preInstallValue;
    }

    private String extractPropertyFromFile(File preInstallFile, String propertyKey) throws Throwable {
        FileReader reader = null;
        try {
            try {
                Properties props = new Properties();
                FileReader reader2 = new FileReader(preInstallFile);
                try {
                    props.load(reader2);
                    AFLogger.afLog("Found PreInstall property!");
                    String property = props.getProperty(propertyKey);
                    if (reader2 != null) {
                        try {
                            reader2.close();
                        } catch (Throwable t) {
                            AFLogger.afLogE(t.getMessage(), t);
                        }
                    }
                    return property;
                } catch (FileNotFoundException e) {
                    reader = reader2;
                    AFLogger.afDebugLog("PreInstall file wasn't found: " + preInstallFile.getAbsolutePath());
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (Throwable t2) {
                            AFLogger.afLogE(t2.getMessage(), t2);
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    t = th;
                    reader = reader2;
                    AFLogger.afLogE(t.getMessage(), t);
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (Throwable t3) {
                            AFLogger.afLogE(t3.getMessage(), t3);
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e2) {
        } catch (Throwable th3) {
            t = th3;
        }
    }

    private boolean isPreInstallFileInvalid(File preInstallFile) {
        return preInstallFile == null || !preInstallFile.exists();
    }

    private File getFileFromString(String filePath) {
        if (filePath != null) {
            try {
                if (filePath.trim().length() > 0) {
                    return new File(filePath.trim());
                }
            } catch (Throwable t) {
                AFLogger.afLogE(t.getMessage(), t);
            }
        }
        return null;
    }

    private String getPreInstallName(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        String result = getProperty(PRE_INSTALL_PREF);
        if (result != null) {
            return result;
        }
        if (sharedPreferences.contains(PRE_INSTALL_PREF)) {
            result = sharedPreferences.getString(PRE_INSTALL_PREF, null);
        } else {
            boolean isFirstLaunch = isAppsFlyerFirstLaunch(context);
            if (isFirstLaunch) {
                String valueFromFile = preInstallValueFromFile(context);
                if (valueFromFile != null) {
                    result = valueFromFile;
                } else {
                    result = getManifestMetaData(new WeakReference<>(context), "AF_PRE_INSTALL_NAME");
                }
            }
            if (result != null) {
                saveDataToSharedPreferences(context, PRE_INSTALL_PREF, result);
            }
        }
        if (result != null) {
            setProperty(PRE_INSTALL_PREF, result);
        }
        return result;
    }

    private void checkCache(Context context) {
        if (!isDuringCheckCache && System.currentTimeMillis() - lastCacheCheck >= 15000 && cacheScheduler == null) {
            cacheScheduler = Executors.newSingleThreadScheduledExecutor();
            cacheScheduler.schedule(new CachedRequestSender(context), 1L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getConfiguredChannel(WeakReference<Context> context) {
        String channel = AppsFlyerProperties.getInstance().getString("channel");
        if (channel == null) {
            return getManifestMetaData(context, "CHANNEL");
        }
        return channel;
    }

    public boolean isPreInstalledApp(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            return (applicationInfo.flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.afLogE("Could not check if app is pre installed", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCachedChannel(Context context, String currentChannel) throws PackageManager.NameNotFoundException {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        if (sharedPreferences.contains(CACHED_CHANNEL_PREF)) {
            return sharedPreferences.getString(CACHED_CHANNEL_PREF, null);
        }
        saveDataToSharedPreferences(context, CACHED_CHANNEL_PREF, currentChannel);
        return currentChannel;
    }

    private String getFirstInstallDate(SimpleDateFormat dateFormat, Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        String firstLaunchDate = sharedPreferences.getString(FIRST_INSTALL_PREF, null);
        if (firstLaunchDate == null) {
            if (isAppsFlyerFirstLaunch(context)) {
                AFLogger.afDebugLog("AppsFlyer: first launch detected");
                firstLaunchDate = dateFormat.format(new Date());
            } else {
                firstLaunchDate = "";
            }
            saveDataToSharedPreferences(context, FIRST_INSTALL_PREF, firstLaunchDate);
        }
        AFLogger.afLog("AppsFlyer: first launch date: " + firstLaunchDate);
        return firstLaunchDate;
    }

    private void checkPlatform(Context context, Map<String, Object> params) {
        try {
            Class.forName("com.unity3d.player.UnityPlayer");
            params.put("platformextension", "android_unity");
        } catch (ClassNotFoundException e) {
            params.put("platformextension", "android_native");
        } catch (Exception e2) {
            AFLogger.afLogE(e2.getMessage(), e2);
        }
    }

    private void getSystemInfo(Map<String, Object> params) {
        HashMap<String, String> map = new HashMap<>();
        map.put("cpu_abi", getSystemProperty("ro.product.cpu.abi"));
        map.put("cpu_abi2", getSystemProperty("ro.product.cpu.abi2"));
        map.put("arch", getSystemProperty("os.arch"));
        map.put("build_display_id", getSystemProperty("ro.build.display.id"));
        JSONObject jsonData = new JSONObject(map);
        params.put("deviceData", jsonData);
    }

    public String getAttributionId(ContentResolver contentResolver) {
        String[] projection = {ATTRIBUTION_ID_COLUMN_NAME};
        Cursor cursor = contentResolver.query(Uri.parse(ATTRIBUTION_ID_CONTENT_URI), projection, null, null, null);
        String attributionId = null;
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    attributionId = cursor.getString(cursor.getColumnIndex(ATTRIBUTION_ID_COLUMN_NAME));
                    return attributionId;
                }
            } catch (Exception e) {
                AFLogger.afLogE("Could not collect cursor attribution. ", e);
            } finally {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e2) {
                        AFLogger.afLogE(e2.getMessage(), e2);
                    }
                }
            }
        }
        if (cursor == null) {
            return null;
        }
        try {
            return null;
        } catch (Exception e3) {
            return null;
        }
    }

    private int getCounter(SharedPreferences sharedPreferences, String parameterName, boolean isIncrease) {
        int counter = sharedPreferences.getInt(parameterName, 0);
        if (isIncrease) {
            int counter2 = counter + 1;
            SharedPreferences.Editor editor = sharedPreferences.edit();
            editor.putInt(parameterName, counter2);
            editorCommit(editor);
            return counter2;
        }
        return counter;
    }

    private long getTimePassedSinceLastLaunch(Context context, boolean shouldSave) {
        long timeInterval;
        SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
        long lastLaunchTime = sharedPreferences.getLong(AF_TIME_PASSED_SINCE_LAST_LAUNCH, 0L);
        long currentTime = System.currentTimeMillis();
        if (lastLaunchTime > 0) {
            timeInterval = currentTime - lastLaunchTime;
        } else {
            timeInterval = -1;
        }
        if (shouldSave) {
            saveLongToSharedPreferences(context, AF_TIME_PASSED_SINCE_LAST_LAUNCH, currentTime);
        }
        return timeInterval / 1000;
    }

    @Deprecated
    String getUniquePsuedoID() {
        String m_szDevIDShort = "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10);
        try {
            String serial = Build.class.getField("SERIAL").get(null).toString();
            return new UUID(m_szDevIDShort.hashCode(), serial.hashCode()).toString();
        } catch (Exception e) {
            AFLogger.afLogE(e.getMessage(), e);
            return new UUID(m_szDevIDShort.hashCode(), "serial".hashCode()).toString();
        }
    }

    private String getNetwork(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetwork = cm.getActiveNetworkInfo();
        if (activeNetwork != null) {
            if (activeNetwork.getType() == 1) {
                return "WIFI";
            }
            if (activeNetwork.getType() == 0) {
                return "MOBILE";
            }
        }
        return "unknown";
    }

    public String getAppsFlyerUID(Context context) {
        RemoteDebuggingManager.getInstance().addApiEvent("getAppsFlyerUID", new String[0]);
        return Installation.id(new WeakReference(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequestToServer(String urlString, String postDataString, String afDevKey, WeakReference<Context> ctxReference, String cacheKey, boolean isLaunch) throws IOException {
        URL url = new URL(urlString);
        AFLogger.afLog("url: " + url.toString());
        debugAction(CALL_SERVER_ACTION, "\n" + url.toString() + "\nPOST:" + postDataString, ctxReference.get());
        LogMessages.logMessageMaskKey(LogMessages.EVENT_DATA + postDataString);
        monitor(ctxReference.get(), LOG_TAG, MonitorMessages.EVENT_DATA, postDataString);
        try {
            callServer(url, postDataString, afDevKey, ctxReference, cacheKey, isLaunch);
        } catch (IOException e) {
            AFLogger.afLogE("Exception in sendRequestToServer. ", e);
            boolean useHttpFallback = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.USE_HTTP_FALLBACK, false);
            if (useHttpFallback) {
                debugAction("https failed: " + e.getLocalizedMessage(), "", ctxReference.get());
                callServer(new URL(urlString.replace("https:", "http:")), postDataString, afDevKey, ctxReference, cacheKey, isLaunch);
            } else {
                AFLogger.afLog(LogMessages.SERVER_CALL_FAILRED + e.getLocalizedMessage());
                monitor(ctxReference.get(), LOG_TAG, MonitorMessages.ERROR, e.getLocalizedMessage());
                throw e;
            }
        }
    }

    private void callServer(URL url, String postData, String appsFlyerDevKey, WeakReference<Context> ctxReference, String cacheKey, boolean isLaunch) throws IOException {
        Context context = ctxReference.get();
        boolean shouldRequestConversion = isLaunch && conversionDataListener != null;
        HttpURLConnection connection = null;
        try {
            RemoteDebuggingManager.getInstance().addServerRequestEvent(url.toString(), postData);
            connection = (HttpsURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            int contentLength = postData.getBytes().length;
            connection.setRequestProperty("Content-Length", contentLength + "");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setConnectTimeout(10000);
            connection.setDoOutput(true);
            OutputStreamWriter out = null;
            try {
                OutputStreamWriter out2 = new OutputStreamWriter(connection.getOutputStream(), HttpURLConnectionBuilder.DEFAULT_CHARSET);
                try {
                    out2.write(postData);
                    if (out2 != null) {
                        out2.close();
                    }
                    int statusCode = connection.getResponseCode();
                    String response = readServerResponse(connection);
                    RemoteDebuggingManager.getInstance().addServerResponseEvent(url.toString(), statusCode, response);
                    AFLogger.afLogM(LogMessages.SERVER_RESPONSE_CODE + statusCode);
                    monitor(context, LOG_TAG, MonitorMessages.SERVER_RESPONSE_CODE, Integer.toString(statusCode));
                    debugAction(SERVER_RESPONDED_ACTION, Integer.toString(statusCode), context);
                    SharedPreferences sharedPreferences = context.getSharedPreferences(AF_SHARED_PREF, 0);
                    if (statusCode == 200) {
                        if (getProperty("gcmProjectNumber") != null && getProperty("afUninstallToken") == null) {
                            UninstallUtils.registerDeviceForUninstalls(new WeakReference(context));
                        }
                        if (this.latestDeepLink != null) {
                            this.latestDeepLink = null;
                        }
                        if (cacheKey != null) {
                            CacheManager.getInstance().deleteRequest(cacheKey, context);
                        }
                        if (ctxReference.get() != null && cacheKey == null) {
                            saveDataToSharedPreferences(context, SENT_SUCCESSFULLY_PREF, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                            checkCache(context);
                        }
                        try {
                            try {
                                JSONObject responseJSON = new JSONObject(response);
                                boolean remoteDebuggingServerFlag = responseJSON.optBoolean("monitor", false);
                                if (remoteDebuggingServerFlag) {
                                    RemoteDebuggingManager.getInstance().startRemoteDebuggingMode();
                                } else {
                                    RemoteDebuggingManager.getInstance().dropPreLaunchDebugData();
                                    RemoteDebuggingManager.getInstance().stopRemoteDebuggingMode();
                                }
                            } catch (JSONException e) {
                                RemoteDebuggingManager.getInstance().dropPreLaunchDebugData();
                                RemoteDebuggingManager.getInstance().stopRemoteDebuggingMode();
                            }
                        } catch (Throwable t) {
                            AFLogger.afLogE(t.getMessage(), t);
                            RemoteDebuggingManager.getInstance().dropPreLaunchDebugData();
                            RemoteDebuggingManager.getInstance().stopRemoteDebuggingMode();
                        }
                    }
                    int retries = sharedPreferences.getInt(CONVERSION_REQUEST_RETRIES, 0);
                    long conversionDataCachedExpiration = sharedPreferences.getLong(CONVERSION_DATA_CACHE_EXPIRATION, 0L);
                    if (conversionDataCachedExpiration != 0 && System.currentTimeMillis() - conversionDataCachedExpiration > SIXTY_DAYS) {
                        saveDataToSharedPreferences(context, ATTRIBUTION_ID_PREF, null);
                        saveLongToSharedPreferences(context, CONVERSION_DATA_CACHE_EXPIRATION, 0L);
                    }
                    if (sharedPreferences.getString(ATTRIBUTION_ID_PREF, null) == null && appsFlyerDevKey != null && shouldRequestConversion && conversionDataListener != null && retries <= 5) {
                        ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
                        scheduler.schedule(new InstallAttributionIdFetcher(context.getApplicationContext(), appsFlyerDevKey, scheduler), 10L, TimeUnit.MILLISECONDS);
                    } else if (appsFlyerDevKey == null) {
                        AFLogger.afWarnLog("AppsFlyer dev key is missing.");
                    } else if (shouldRequestConversion && conversionDataListener != null && sharedPreferences.getString(ATTRIBUTION_ID_PREF, null) != null && getCounter(sharedPreferences, AF_COUNTER_PREF, false) > 1) {
                        try {
                            Map<String, String> conversionData = getConversionData(context);
                            if (conversionData != null) {
                                conversionDataListener.onInstallConversionDataLoaded(conversionData);
                            }
                        } catch (AttributionIDNotReady ae) {
                            AFLogger.afLogE(ae.getMessage(), ae);
                        }
                    }
                    if (connection != null) {
                        connection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    out = out2;
                    if (out != null) {
                        out.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            if (connection != null) {
                connection.disconnect();
            }
            throw th3;
        }
    }

    public void validateAndTrackInAppPurchase(Context context, String publicKey, String signature, String purchaseData, String price, String currency, HashMap<String, String> additionalParameters) {
        RemoteDebuggingManager remoteDebuggingManager = RemoteDebuggingManager.getInstance();
        String[] strArr = new String[6];
        strArr[0] = publicKey;
        strArr[1] = signature;
        strArr[2] = purchaseData;
        strArr[3] = price;
        strArr[4] = currency;
        strArr[5] = additionalParameters == null ? "" : additionalParameters.toString();
        remoteDebuggingManager.addApiEvent("validateAndTrackInAppPurchase", strArr);
        AFLogger.afLog("Validate in app called with parameters: " + purchaseData + " " + price + " " + currency);
        if (publicKey == null || price == null || signature == null || currency == null || purchaseData == null) {
            if (validatorListener != null) {
                validatorListener.onValidateInAppFailure("Please provide purchase parameters");
            }
        } else {
            ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
            scheduler.schedule(new AFValidateInAppPurchase(context.getApplicationContext(), getProperty(AppsFlyerProperties.AF_KEY), publicKey, signature, purchaseData, price, currency, additionalParameters, scheduler), 10L, TimeUnit.MILLISECONDS);
        }
    }

    private class DataCollector implements Runnable {
        private String appsFlyerKey;
        private WeakReference<Context> context;
        private String eventName;
        private String eventValue;
        private ExecutorService executor;
        private boolean isNewAPI;
        private String referrer;

        private DataCollector(WeakReference<Context> context, String appsFlyerKey, String eventName, String eventValue, String referrer, boolean useNewAPI, ExecutorService executorService) {
            this.context = context;
            this.appsFlyerKey = appsFlyerKey;
            this.eventName = eventName;
            this.eventValue = eventValue;
            this.referrer = referrer;
            this.isNewAPI = useNewAPI;
            this.executor = executorService;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            AppsFlyerLib.this.sendTrackingWithEvent(this.context.get(), this.appsFlyerKey, this.eventName, this.eventValue, this.referrer, this.isNewAPI);
            this.executor.shutdown();
        }
    }

    private class SendToServerRunnable implements Runnable {
        private WeakReference<Context> ctxReference;
        boolean isLaunch;
        Map<String, Object> params;
        private String urlString;

        private SendToServerRunnable(String urlString, Map<String, Object> params, Context ctx, boolean isLaunch) {
            this.ctxReference = null;
            this.urlString = urlString;
            this.params = params;
            this.ctxReference = new WeakReference<>(ctx);
            this.isLaunch = isLaunch;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            String postDataString = null;
            try {
                String afDevKey = (String) this.params.get(ServerParameters.AF_DEV_KEY);
                postDataString = new JSONObject(this.params).toString();
                AppsFlyerLib.this.sendRequestToServer(this.urlString, postDataString, afDevKey, this.ctxReference, null, this.isLaunch);
            } catch (IOException e) {
                AFLogger.afLogE("Exception while sending request to server. ", e);
                if (postDataString != null && this.ctxReference != null && !this.urlString.contains(AppsFlyerLib.CACHED_URL_PARAMETER)) {
                    CacheManager.getInstance().cacheRequest(new RequestCacheData(this.urlString, postDataString, "4.7.1"), this.ctxReference.get());
                    AFLogger.afLogE(e.getMessage(), e);
                }
            } catch (Throwable t) {
                AFLogger.afLogE(t.getMessage(), t);
            }
        }
    }

    private class InstallAttributionIdFetcher extends AttributionIdFetcher {
        public InstallAttributionIdFetcher(Context context, String appsFlyerDevKey, ScheduledExecutorService executorService) {
            super(context, appsFlyerDevKey, executorService);
        }

        @Override // com.appsflyer.AppsFlyerLib.AttributionIdFetcher
        public String getUrl() {
            return AppsFlyerLib.CONVERSION_DATA_URL;
        }

        @Override // com.appsflyer.AppsFlyerLib.AttributionIdFetcher
        protected void attributionCallback(Map<String, String> conversionData) {
            AppsFlyerLib.conversionDataListener.onInstallConversionDataLoaded(conversionData);
            this.ctxReference.get().getSharedPreferences(AppsFlyerLib.AF_SHARED_PREF, 0);
            AppsFlyerLib.this.saveIntegerToSharedPreferences(this.ctxReference.get(), AppsFlyerLib.CONVERSION_REQUEST_RETRIES, 0);
        }

        @Override // com.appsflyer.AppsFlyerLib.AttributionIdFetcher
        protected void attributionCallbackFailure(String error, int responseCode) {
            AppsFlyerLib.conversionDataListener.onInstallConversionFailure(error);
            if (responseCode >= 400 && responseCode < 500) {
                SharedPreferences sharedPreferences = this.ctxReference.get().getSharedPreferences(AppsFlyerLib.AF_SHARED_PREF, 0);
                int retries = sharedPreferences.getInt(AppsFlyerLib.CONVERSION_REQUEST_RETRIES, 0);
                AppsFlyerLib.this.saveIntegerToSharedPreferences(this.ctxReference.get(), AppsFlyerLib.CONVERSION_REQUEST_RETRIES, retries + 1);
            }
        }
    }

    private abstract class AttributionIdFetcher implements Runnable {
        private String appsFlyerDevKey;
        protected WeakReference<Context> ctxReference;
        private AtomicInteger currentRequestsCounter = new AtomicInteger(0);
        private ScheduledExecutorService executorService;

        protected abstract void attributionCallback(Map<String, String> map);

        protected abstract void attributionCallbackFailure(String str, int i);

        public abstract String getUrl();

        public AttributionIdFetcher(Context context, String appsFlyerDevKey, ScheduledExecutorService executorService) {
            this.ctxReference = null;
            this.ctxReference = new WeakReference<>(context);
            this.appsFlyerDevKey = appsFlyerDevKey;
            this.executorService = executorService;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> conversionData;
            if (this.appsFlyerDevKey == null || this.appsFlyerDevKey.length() == 0) {
                return;
            }
            this.currentRequestsCounter.incrementAndGet();
            HttpURLConnection connection = null;
            try {
                try {
                    Context context = this.ctxReference.get();
                    if (context == null) {
                        this.currentRequestsCounter.decrementAndGet();
                        if (0 != 0) {
                            connection.disconnect();
                            return;
                        }
                        return;
                    }
                    long now = System.currentTimeMillis();
                    String channel = AppsFlyerLib.this.getCachedChannel(context, AppsFlyerLib.this.getConfiguredChannel(new WeakReference(context)));
                    String channelPostfix = channel != null ? "-" + channel : "";
                    StringBuilder urlString = new StringBuilder().append(getUrl()).append(context.getPackageName()).append(channelPostfix).append("?devkey=").append(this.appsFlyerDevKey).append("&device_id=").append(Installation.id(new WeakReference(context)));
                    RemoteDebuggingManager.getInstance().addServerRequestEvent(urlString.toString(), "");
                    LogMessages.logMessageMaskKey("Calling server for attribution url: " + urlString.toString());
                    HttpURLConnection connection2 = (HttpsURLConnection) new URL(urlString.toString()).openConnection();
                    connection2.setRequestMethod("GET");
                    connection2.setConnectTimeout(10000);
                    connection2.setRequestProperty("Connection", "close");
                    connection2.connect();
                    int responseCode = connection2.getResponseCode();
                    String response = AppsFlyerLib.this.readServerResponse(connection2);
                    RemoteDebuggingManager.getInstance().addServerResponseEvent(urlString.toString(), responseCode, response);
                    if (responseCode == 200) {
                        long responseTime = System.currentTimeMillis();
                        AppsFlyerLib.this.saveLongToSharedPreferences(context, AppsFlyerLib.GET_CONVERSION_DATA_TIME, (responseTime - now) / 1000);
                        LogMessages.logMessageMaskKey("Attribution data: " + response);
                        if (response.length() > 0 && context != null) {
                            Map<String, String> conversionDataMap = AppsFlyerLib.this.attributionStringToMap(response);
                            String isCache = conversionDataMap.get("iscache");
                            if (isCache != null && "false".equals(isCache)) {
                                AppsFlyerLib.this.saveLongToSharedPreferences(context, AppsFlyerLib.CONVERSION_DATA_CACHE_EXPIRATION, System.currentTimeMillis());
                            }
                            String conversionJsonString = new JSONObject(conversionDataMap).toString();
                            if (conversionJsonString != null) {
                                AppsFlyerLib.this.saveDataToSharedPreferences(context, AppsFlyerLib.ATTRIBUTION_ID_PREF, conversionJsonString);
                            } else {
                                AppsFlyerLib.this.saveDataToSharedPreferences(context, AppsFlyerLib.ATTRIBUTION_ID_PREF, response);
                            }
                            AFLogger.afDebugLog("iscache=" + isCache + " caching conversion data");
                            if (AppsFlyerLib.conversionDataListener != null && this.currentRequestsCounter.intValue() <= 1) {
                                try {
                                    conversionData = AppsFlyerLib.this.getConversionData(context);
                                } catch (AttributionIDNotReady ae) {
                                    AFLogger.afLogE("Exception while trying to fetch attribution data. ", ae);
                                    conversionData = conversionDataMap;
                                }
                                attributionCallback(conversionData);
                            }
                        }
                    } else {
                        if (AppsFlyerLib.conversionDataListener != null) {
                            attributionCallbackFailure("Error connection to server: " + responseCode, responseCode);
                        }
                        LogMessages.logMessageMaskKey("AttributionIdFetcher response code: " + responseCode + "  url: " + ((Object) urlString));
                    }
                    this.currentRequestsCounter.decrementAndGet();
                    if (connection2 != null) {
                        connection2.disconnect();
                    }
                    this.executorService.shutdown();
                } catch (Throwable t) {
                    if (AppsFlyerLib.conversionDataListener != null) {
                        attributionCallbackFailure(t.getMessage(), 0);
                    }
                    AFLogger.afLogE(t.getMessage(), t);
                    this.currentRequestsCounter.decrementAndGet();
                    if (0 != 0) {
                        connection.disconnect();
                    }
                }
            } catch (Throwable th) {
                this.currentRequestsCounter.decrementAndGet();
                if (0 != 0) {
                    connection.disconnect();
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053 A[Catch: Throwable -> 0x00a1, TRY_LEAVE, TryCatch #3 {Throwable -> 0x00a1, blocks: (B:16:0x004e, B:18:0x0053), top: B:56:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0079 A[Catch: Throwable -> 0x0098, TRY_LEAVE, TryCatch #10 {Throwable -> 0x0098, blocks: (B:31:0x0074, B:33:0x0079), top: B:63:0x0074 }] */
    String readServerResponse(HttpURLConnection connection) throws Throwable {
        BufferedReader reader = null;
        StringBuilder stringBuilder = new StringBuilder();
        InputStreamReader inputStreamReader = null;
        try {
            try {
                InputStream responseStream = connection.getErrorStream();
                if (responseStream == null) {
                    responseStream = connection.getInputStream();
                }
                InputStreamReader inputStreamReader2 = new InputStreamReader(responseStream);
                try {
                    BufferedReader reader2 = new BufferedReader(inputStreamReader2);
                    while (true) {
                        try {
                            String line = reader2.readLine();
                            if (line == null) {
                                break;
                            }
                            stringBuilder.append(line).append('\n');
                        } catch (Throwable th) {
                            th = th;
                            inputStreamReader = inputStreamReader2;
                            reader = reader2;
                            if (reader != null) {
                                try {
                                    reader.close();
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                } catch (Throwable th2) {
                                    throw th;
                                }
                            } else if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            throw th;
                        }
                    }
                    if (reader2 != null) {
                        try {
                            reader2.close();
                        } catch (Throwable th3) {
                        }
                    }
                    if (inputStreamReader2 != null) {
                        inputStreamReader2.close();
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamReader = inputStreamReader2;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            t = th6;
        }
        String result = stringBuilder.toString();
        try {
            new JSONObject(result);
            return result;
        } catch (JSONException e) {
            JSONObject json = new JSONObject();
            try {
                json.put(RESPONSE_NOT_JSON, result);
                return json.toString();
            } catch (JSONException e2) {
                return new JSONObject().toString();
            }
        }
    }

    private class CachedRequestSender implements Runnable {
        private WeakReference<Context> ctxReference;

        public CachedRequestSender(Context context) {
            this.ctxReference = null;
            this.ctxReference = new WeakReference<>(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AppsFlyerLib.isDuringCheckCache) {
                long unused = AppsFlyerLib.lastCacheCheck = System.currentTimeMillis();
                if (this.ctxReference != null) {
                    boolean unused2 = AppsFlyerLib.isDuringCheckCache = true;
                    try {
                        String afDevKey = AppsFlyerLib.this.getProperty(AppsFlyerProperties.AF_KEY);
                        synchronized (this.ctxReference) {
                            try {
                                for (RequestCacheData requestCacheData : CacheManager.getInstance().getCachedRequests(this.ctxReference.get())) {
                                    AFLogger.afLog("resending request: " + requestCacheData.getRequestURL());
                                    try {
                                        long currentTime = System.currentTimeMillis();
                                        String cachedTimeString = requestCacheData.getCacheKey();
                                        long cachedTime = Long.parseLong(cachedTimeString, 10);
                                        AppsFlyerLib.this.sendRequestToServer(requestCacheData.getRequestURL() + AppsFlyerLib.CACHED_URL_PARAMETER + Long.toString((currentTime - cachedTime) / 1000), requestCacheData.getPostData(), afDevKey, this.ctxReference, requestCacheData.getCacheKey(), false);
                                    } catch (Exception e) {
                                        AFLogger.afLogE("Failed to resend cached request", e);
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } catch (Exception e2) {
                        AFLogger.afLogE("failed to check cache. ", e2);
                    } finally {
                        boolean unused3 = AppsFlyerLib.isDuringCheckCache = false;
                    }
                    AppsFlyerLib.cacheScheduler.shutdown();
                    ScheduledExecutorService unused4 = AppsFlyerLib.cacheScheduler = null;
                }
            }
        }
    }

    float getBatteryLevel(Context context) {
        float result = 1.0f;
        try {
            Intent batteryIntent = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int level = batteryIntent.getIntExtra("level", -1);
            int scale = batteryIntent.getIntExtra("scale", -1);
            if (level == -1 || scale == -1) {
                return 50.0f;
            }
            result = (level / scale) * 100.0f;
            return result;
        } catch (Throwable t) {
            AFLogger.afLogE(t.getMessage(), t);
        }
    }
}
