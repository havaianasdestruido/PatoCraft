package com.appsflyer;

import android.content.pm.PackageManager;
import android.os.Build;
import com.facebook.share.internal.ShareConstants;
import com.microsoft.onlineid.sts.request.AbstractStsRequest;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class RemoteDebuggingManager {
    private static final int MONITORING_REQUEST_MAX_SIZE_KB = 98304;
    static final String REMOTE_DEBUGGING_SERVER_FLAG = "monitor";
    private static RemoteDebuggingManager instance;
    private static boolean shouldCollectPreLaunchDebugData = true;
    private static boolean shouldEnableRemoteDebuggingForThisApp = true;
    private JSONObject remoteDebuggingJSON;
    private int requestSize;
    private final String DEVICE_DATA_BRAND = "brand";
    private final String DEVICE_DATA_MODEL = "model";
    private final String DEVICE_DATA_PLATFORM_NAME = "platform";
    private final String DEVICE_DATA_PLATFORM_VERSION = "platform_version";
    private final String DEVICE_DATA_GAID = ServerParameters.ADVERTISING_ID_PARAM;
    private final String DEVICE_DATA_IMEI = "imei";
    private final String DEVICE_DATA_ANDROID_ID = ServerParameters.ANDROID_ID;
    private final String SDK_DATA_SDK_VERSION = "sdk_version";
    private final String SDK_DATA_DEV_KEY = ServerParameters.DEV_KEY;
    private final String SDK_DATA_ORIGINAL_AF_UID = "originalAppsFlyerId";
    private final String SDK_DATA_CURRENT_AF_UID = ServerParameters.AF_USER_ID;
    private final String APP_DATA_APP_ID = "app_id";
    private final String APP_DATA_APP_VERSION = "app_version";
    private final String APP_DATA_CHANNEL = "channel";
    private final String APP_DATA_PRE_INSTALL = "preInstall";
    private final String CHRONOLOGICAL_EVENTS_DATA = ShareConstants.WEB_DIALOG_PARAM_DATA;
    private final String REMOTE_DEBUGGING_STOPPED = "r_debugging_off";
    private final String REMOTE_DEBUGGING_STARTED = "r_debugging_on";
    private final String PUBLIC_API_CALL = "public_api_call";
    private final String EXCEPTION = "exception";
    private final String SERVER_REQUEST = "server_request";
    private final String SERVER_RESPONSE = "server_response";
    private final String BQ_DATE_FORMAT = "yyyy-MM-dd HH:mm:ssZ";
    private final String EVENT_DATE_FORMAT = "MM-dd HH:mm:ss.SSS";
    private JSONArray chronologicalEvents = new JSONArray();
    private boolean remoteDebuggingEnabledFromServer = false;

    private RemoteDebuggingManager() {
        this.requestSize = 0;
        this.requestSize = 0;
    }

    static RemoteDebuggingManager getInstance() {
        if (instance == null) {
            instance = new RemoteDebuggingManager();
        }
        return instance;
    }

    synchronized void startRemoteDebuggingMode() {
        this.remoteDebuggingEnabledFromServer = true;
        addStartEvent(System.currentTimeMillis());
    }

    synchronized void stopRemoteDebuggingMode() {
        addStopEvent(System.currentTimeMillis());
        this.remoteDebuggingEnabledFromServer = false;
        shouldCollectPreLaunchDebugData = false;
    }

    synchronized void releaseRemoteDebugging() {
        this.remoteDebuggingJSON = null;
        this.chronologicalEvents = null;
        instance = null;
    }

    void sendRemoteDebuggingData(String packageName, PackageManager packageManager) {
        try {
            getInstance().loadStaticData(packageName, packageManager);
            String remoteDebuggingData = getInstance().getJSONString(true);
            BackgroundHttpTask remoteDebuggingTask = new BackgroundHttpTask(null);
            remoteDebuggingTask.bodyAsString = remoteDebuggingData;
            remoteDebuggingTask.setRemoteDebugMode(false);
            remoteDebuggingTask.execute("https://monitorsdk.appsflyer.com/remote-debug?app_id=" + packageName);
        } catch (Throwable th) {
        }
    }

    boolean isRemoteDebugging() {
        return shouldEnableRemoteDebuggingForThisApp && (shouldCollectPreLaunchDebugData || this.remoteDebuggingEnabledFromServer);
    }

    private synchronized void setDeviceData(String brand, String model, String osVersion, String gaid, String imei, String androidId) {
        try {
            this.remoteDebuggingJSON.put("brand", brand);
            this.remoteDebuggingJSON.put("model", model);
            this.remoteDebuggingJSON.put("platform", AbstractStsRequest.DeviceType);
            this.remoteDebuggingJSON.put("platform_version", osVersion);
            if (gaid != null && gaid.length() > 0) {
                this.remoteDebuggingJSON.put(ServerParameters.ADVERTISING_ID_PARAM, gaid);
            }
            if (imei != null && imei.length() > 0) {
                this.remoteDebuggingJSON.put("imei", imei);
            }
            if (androidId != null && androidId.length() > 0) {
                this.remoteDebuggingJSON.put(ServerParameters.ANDROID_ID, androidId);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void setSDKData(String version, String devKey, String originalAFUID, String currentAFUID) {
        try {
            this.remoteDebuggingJSON.put("sdk_version", version);
            if (devKey != null && devKey.length() > 0) {
                this.remoteDebuggingJSON.put(ServerParameters.DEV_KEY, devKey);
            }
            if (originalAFUID != null && originalAFUID.length() > 0) {
                this.remoteDebuggingJSON.put("originalAppsFlyerId", originalAFUID);
            }
            if (currentAFUID != null && currentAFUID.length() > 0) {
                this.remoteDebuggingJSON.put(ServerParameters.AF_USER_ID, currentAFUID);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void setAppData(String appId, String appVersion, String channel, String preInstall) {
        if (appId != null) {
            try {
                if (appId.length() > 0) {
                    this.remoteDebuggingJSON.put("app_id", appId);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (appVersion != null && appVersion.length() > 0) {
            this.remoteDebuggingJSON.put("app_version", appVersion);
        }
        if (channel != null && channel.length() > 0) {
            this.remoteDebuggingJSON.put("channel", channel);
        }
        if (preInstall != null && preInstall.length() > 0) {
            this.remoteDebuggingJSON.put("preInstall", preInstall);
        }
    }

    private void addStartEvent(long startTime) {
        addEvent("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(startTime)), new String[0]);
    }

    private void addStopEvent(long endTime) {
        addEvent("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(endTime)), new String[0]);
    }

    void addApiEvent(String methodName, String... args) {
        addEvent("public_api_call", methodName, args);
    }

    void addExceptionEvent(Throwable t) {
        Throwable cause = t.getCause();
        addEvent("exception", t.getClass().getSimpleName(), getThrowableStringData(cause == null ? t.getMessage() : cause.getMessage(), cause == null ? t.getStackTrace() : cause.getStackTrace()));
    }

    void addServerRequestEvent(String url, String requestBody) {
        addEvent("server_request", url, requestBody);
    }

    void addServerResponseEvent(String url, int responseCode, String responseBody) {
        addEvent("server_response", url, String.valueOf(responseCode), responseBody);
    }

    void addLogEntry(String type, String logMessage) {
        addEvent(null, type, logMessage);
    }

    private synchronized void addEvent(String eventType, String title, String... body) {
        String event;
        if (isRemoteDebugging() && this.requestSize < MONITORING_REQUEST_MAX_SIZE_KB) {
            try {
                long now = System.currentTimeMillis();
                String bodyStr = "";
                if (body.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = body.length - 1; i >= 1; i--) {
                        sb.append(body[i]).append(", ");
                    }
                    sb.append(body[0]);
                    bodyStr = sb.toString();
                }
                String formattedTimestamp = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.ENGLISH).format(Long.valueOf(now));
                if (eventType != null) {
                    event = String.format("%18s %5s _/%s [%s] %s %s", formattedTimestamp, Long.valueOf(Thread.currentThread().getId()), AppsFlyerLib.LOG_TAG, eventType, title, bodyStr);
                } else {
                    event = String.format("%18s %5s %s/%s %s", formattedTimestamp, Long.valueOf(Thread.currentThread().getId()), title, AppsFlyerLib.LOG_TAG, bodyStr);
                }
                this.chronologicalEvents.put(event);
                this.requestSize += event.getBytes().length;
            } catch (Throwable th) {
            }
        }
    }

    private synchronized String getJSONString(boolean shouldClearData) {
        String result;
        result = null;
        try {
            System.currentTimeMillis();
            this.remoteDebuggingJSON.put(ShareConstants.WEB_DIALOG_PARAM_DATA, this.chronologicalEvents);
            result = this.remoteDebuggingJSON.toString();
            if (shouldClearData) {
                clearData();
            }
        } catch (JSONException e) {
        }
        return result;
    }

    private synchronized void loadStaticData(String packageName, PackageManager packageManager) {
        AppsFlyerProperties props = AppsFlyerProperties.getInstance();
        AppsFlyerLib afLib = AppsFlyerLib.getInstance();
        String remoteDebugStaticDataFromProperties = props.getString("remote_debug_static_data");
        if (remoteDebugStaticDataFromProperties != null) {
            try {
                this.remoteDebuggingJSON = new JSONObject(remoteDebugStaticDataFromProperties);
            } catch (Throwable th) {
            }
        } else {
            this.remoteDebuggingJSON = new JSONObject();
            setDeviceData(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, props.getString(ServerParameters.ADVERTISING_ID_PARAM), afLib.userCustomImei, afLib.userCustomAndroidId);
            setSDKData("4.7.1.314", props.getString(AppsFlyerProperties.AF_KEY), props.getString("KSAppsFlyerId"), props.getString(ServerParameters.AF_USER_ID));
            try {
                int appVersionCode = packageManager.getPackageInfo(packageName, 0).versionCode;
                String appChannel = props.getString("channel");
                String appPreInstallName = props.getString("preInstallName");
                setAppData(packageName, String.valueOf(appVersionCode), appChannel, appPreInstallName);
            } catch (Throwable th2) {
            }
            props.set("remote_debug_static_data", this.remoteDebuggingJSON.toString());
        }
    }

    private String[] getThrowableStringData(String msg, StackTraceElement[] stackTrace) {
        if (stackTrace == null) {
            return new String[]{msg};
        }
        String[] strArr = new String[stackTrace.length + 1];
        strArr[0] = msg;
        for (int i = 1; i < stackTrace.length; i++) {
            strArr[i] = stackTrace[i].toString();
        }
        return strArr;
    }

    int getNumberOfLines() {
        return this.chronologicalEvents.length();
    }

    private synchronized void clearData() {
        this.chronologicalEvents = null;
        this.chronologicalEvents = new JSONArray();
        this.requestSize = 0;
    }

    synchronized void dropPreLaunchDebugData() {
        shouldCollectPreLaunchDebugData = false;
        clearData();
    }

    void disableRemoteDebuggingForThisApp() {
        shouldEnableRemoteDebuggingForThisApp = false;
    }

    boolean isRemoteDebuggingEnabledFromServer() {
        return this.remoteDebuggingEnabledFromServer;
    }
}
