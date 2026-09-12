package com.appsflyer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AppsFlyerProperties {
    public static final String ADDITIONAL_CUSTOM_DATA = "additionalCustomData";
    public static final String AF_KEY = "AppsFlyerKey";
    private static final String AF_REFERRER = "AF_REFERRER";
    static final String AF_UNINSTALL_TOKEN = "afUninstallToken";
    public static final String APP_ID = "appid";
    public static final String APP_USER_ID = "AppUserId";
    public static final String CHANNEL = "channel";
    public static final String COLLECT_ANDROID_ID = "collectAndroidId";
    public static final String COLLECT_FACEBOOK_ATTR_ID = "collectFacebookAttrId";
    public static final String COLLECT_FINGER_PRINT = "collectFingerPrint";
    public static final String COLLECT_IMEI = "collectIMEI";
    public static final String COLLECT_MAC = "collectMAC";
    public static final String CURRENCY_CODE = "currencyCode";
    public static final String DEVICE_TRACKING_DISABLED = "deviceTrackingDisabled";
    public static final String DISABLE_LOGS_COMPLETELY = "disableLogs";
    public static final String DISABLE_OTHER_SDK = "disableOtherSdk";
    public static final String EMAIL_CRYPT_TYPE = "userEmailsCryptType";
    public static final String ENABLE_GPS_FALLBACK = "enableGpsFallback";
    public static final String EXTENSION = "sdkExtension";
    static final String GCM_PROJECT_NUMBER = "gcmProjectNumber";
    public static final String IS_MONITOR = "shouldMonitor";
    public static final String IS_UPDATE = "IS_UPDATE";
    static final String PUSH_PAYLOAD_HISTORY_SIZE = "pushPayloadHistorySize";
    static final String PUSH_PAYLOAD_MAX_AGING = "pushPayloadMaxAging";
    private static final String SAVED_PROPERTIES = "savedProperties";
    private static final String SHOULD_LOG = "shouldLog";
    public static final String USER_EMAIL = "userEmail";
    public static final String USER_EMAILS = "userEmails";
    public static final String USE_HTTP_FALLBACK = "useHttpFallback";
    private static AppsFlyerProperties instance = new AppsFlyerProperties();
    private boolean isLaunchCalled;
    private boolean isOnReceiveCalled;
    private Map<String, Object> properties = new HashMap();
    private boolean propertiesLoadedFlag = false;
    private String referrer;

    public enum EmailsCryptType {
        NONE(0),
        SHA1(1),
        MD5(2),
        SHA256(3);

        private final int value;

        EmailsCryptType(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    private AppsFlyerProperties() {
    }

    public static AppsFlyerProperties getInstance() {
        return instance;
    }

    public void set(String key, String value) {
        this.properties.put(key, value);
    }

    public void set(String key, String[] value) {
        this.properties.put(key, value);
    }

    public void set(String key, int value) {
        this.properties.put(key, Integer.toString(value));
    }

    public void set(String key, long value) {
        this.properties.put(key, Long.toString(value));
    }

    public void set(String key, boolean value) {
        this.properties.put(key, Boolean.toString(value));
    }

    public void setCustomData(String customData) {
        this.properties.put(ADDITIONAL_CUSTOM_DATA, customData);
    }

    public void setUserEmails(String emails) {
        this.properties.put(USER_EMAILS, emails);
    }

    public String getString(String key) {
        return (String) this.properties.get(key);
    }

    public boolean getBoolean(String key, boolean defaultValue) {
        String value = getString(key);
        if (value == null) {
            return defaultValue;
        }
        boolean defaultValue2 = Boolean.valueOf(value).booleanValue();
        return defaultValue2;
    }

    public int getInt(String key, int defaultValue) {
        String value = getString(key);
        if (value == null) {
            return defaultValue;
        }
        int defaultValue2 = Integer.valueOf(value).intValue();
        return defaultValue2;
    }

    public long getLong(String key, long defaultValue) {
        String value = getString(key);
        if (value == null) {
            return defaultValue;
        }
        long defaultValue2 = Long.valueOf(value).longValue();
        return defaultValue2;
    }

    public Object getObject(String key) {
        return this.properties.get(key);
    }

    protected boolean isOnReceiveCalled() {
        return this.isOnReceiveCalled;
    }

    protected void setOnReceiveCalled() {
        this.isOnReceiveCalled = true;
    }

    protected boolean isFirstLaunchCalled() {
        return this.isLaunchCalled;
    }

    protected void setFirstLaunchCalled(boolean val) {
        this.isLaunchCalled = val;
    }

    protected void setFirstLaunchCalled() {
        this.isLaunchCalled = true;
    }

    protected void setReferrer(String referrer) {
        set(AF_REFERRER, referrer);
        this.referrer = referrer;
    }

    public String getReferrer(Context context) {
        if (this.referrer != null) {
            return this.referrer;
        }
        if (getString(AF_REFERRER) != null) {
            return getString(AF_REFERRER);
        }
        if (context == null) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        return sharedPreferences.getString("referrer", null);
    }

    public void enableLogOutput(boolean shouldEnable) {
        set(SHOULD_LOG, shouldEnable);
    }

    public boolean isEnableLog() {
        boolean isEnableLog = getBoolean(SHOULD_LOG, true);
        return isEnableLog;
    }

    public boolean isLogsDisabledCompletely() {
        return getBoolean(DISABLE_LOGS_COMPLETELY, false);
    }

    public boolean isOtherSdkStringDisabled() {
        return getBoolean(DISABLE_OTHER_SDK, false);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void saveProperties(SharedPreferences sharedPreferences) {
        String propertiesJson = new JSONObject(this.properties).toString();
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(SAVED_PROPERTIES, propertiesJson);
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    public void loadProperties(Context context) {
        if (!isPropertiesLoaded()) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
            String propertiesString = sharedPreferences.getString(SAVED_PROPERTIES, null);
            if (propertiesString != null) {
                AFLogger.afDebugLog("Loading properties..");
                try {
                    JSONObject jsonProperties = new JSONObject(propertiesString);
                    Iterator<String> itKeys = jsonProperties.keys();
                    while (itKeys.hasNext()) {
                        String key = itKeys.next();
                        if (this.properties.get(key) == null) {
                            this.properties.put(key, jsonProperties.getString(key));
                        }
                    }
                    this.propertiesLoadedFlag = true;
                } catch (JSONException jex) {
                    AFLogger.afLogE("Failed loading properties", jex);
                }
                AFLogger.afDebugLog("Done loading properties: " + this.propertiesLoadedFlag);
            }
        }
    }

    private boolean isPropertiesLoaded() {
        return this.propertiesLoadedFlag;
    }
}
