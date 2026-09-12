package com.appsflyer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class LogMessages {
    public static final String DEV_KEY_MISSING = "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. ";
    static final String ERROR_PREFIX = "ERROR: ";
    public static final String EVENT_CREATED_WITH_NAME = "******* sendTrackingWithEvent: ";
    public static final String EVENT_DATA = "data: ";
    public static final String GCM_PERMISSION_MISSING_WARNING = "Cannot verify existence of the app's \"permission.C2D_MESSAGE\" permission in the manifest. Please refer to documentation.";
    public static final String GCM_RECEIVER_MISSING_WARNING = "Cannot verify existence of GcmReceiver receiver in the manifest. Please refer to documentation.";
    public static final String LOG_TAG_PREFIX = "AppsFlyer_";
    public static final String PERMISSION_ACCESS_NETWORK_MISSING = "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml";
    public static final String PERMISSION_ACCESS_WIFI_MISSING = "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml";
    public static final String PERMISSION_INTERNET_MISSING = "Permission android.permission.INTERNET is missing in the AndroidManifest.xml";
    public static final String PLAY_STORE_REFERRER_RECIEVED = "Play store referrer: ";
    public static final String SERVER_CALL_FAILRED = "failed to send requeset to server. ";
    public static final String SERVER_RESPONSE_CODE = "response code: ";
    public static final String START_LOG_MESSAGE = "Start tracking package: ";
    public static final String UNINSTALL_INSTANCE_ID_MISSING_WARNING = "Cannot verify existence of our InstanceID Listener Service in the manifest. Please refer to documentation.";
    static final String WARNING_PREFIX = "WARNING: ";
    private static String devKey;
    private static String replacedKey;

    LogMessages() {
    }

    public static void setDevKey(String aDevKey) {
        devKey = aDevKey;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < aDevKey.length(); i++) {
            if (i == 0 || i == aDevKey.length() - 1) {
                sb.append(aDevKey.charAt(i));
            } else {
                sb.append("*");
            }
        }
        replacedKey = sb.toString();
    }

    public static void logMessageMaskKey(String str) {
        if (devKey == null) {
            setDevKey(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        } else if (devKey != null && str.contains(devKey)) {
            AFLogger.afLog(str.replace(devKey, replacedKey));
        }
    }
}
