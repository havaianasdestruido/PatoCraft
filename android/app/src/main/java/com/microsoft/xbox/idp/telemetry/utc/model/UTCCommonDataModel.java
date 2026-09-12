package com.microsoft.xbox.idp.telemetry.utc.model;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.interop.XboxLiveAppConfig;
import com.microsoft.xbox.idp.telemetry.helpers.UTCLog;
import com.microsoft.xbox.idp.telemetry.utc.CommonData;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCCommonDataModel {
    static final String DEFAULTSANDBOX = "RETAIL";
    static final String DEFAULTSERVICES = "none";
    static final String EVENTVERSION = "1.1";
    static final String UNKNOWNUSER = "0";
    static NetworkType netType = NetworkType.UNKNOWN;
    static String deviceModel = null;
    static String osLocale = null;
    static UUID applicationSession = null;
    static final String UNKNOWNAPP = "UNKNOWN";
    static String appName = UNKNOWNAPP;
    static String userId = "0";
    static UTCAccessibilityInfoModel accessibilityInfo = null;

    private enum NetworkType {
        UNKNOWN(0),
        WIFI(1),
        CELLULAR(2),
        WIRED(3);

        private int value = 0;

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }

        NetworkType(int val) {
            setValue(val);
        }
    }

    public static CommonData getCommonData(int partCVersion) {
        return getCommonData(partCVersion, new UTCAdditionalInfoModel());
    }

    public static CommonData getCommonData(int partCVersion, UTCAdditionalInfoModel additionalInfo) {
        CommonData common = new CommonData();
        common.setEventVersion(String.format("%s.%s", EVENTVERSION, Integer.valueOf(partCVersion)));
        common.setDeviceModel(getDeviceModel());
        common.setXsapiVersion("1.0");
        common.setAppName(getAppName());
        common.setClientLanguage(getDeviceLocale());
        common.setNetwork(getNetworkConnection().getValue());
        common.setSandboxId(getSandboxId());
        common.setAppSessionId(getAppSessionId());
        common.setUserId(getUserId());
        UTCAdditionalInfoModel info = additionalInfo;
        if (info == null) {
            info = new UTCAdditionalInfoModel();
        }
        common.setAdditionalInfo(info.toJson());
        common.setAccessibilityInfo(getAccessibilityInfo().toJson());
        common.setTitleDeviceId(Interop.getTitleDeviceId());
        common.setTitleSessionId(Interop.getTitleSessionId());
        return common;
    }

    public static String getUserId() {
        return userId == null ? "0" : userId;
    }

    public static void setUserId(String userId2) {
        if (userId2 != null) {
            userId = "x:" + userId2;
        }
    }

    private static String getAppName() {
        try {
            Context ctx = Interop.getApplicationContext();
            if (appName == UNKNOWNAPP && ctx != null) {
                appName = ctx.getApplicationInfo().packageName;
            }
        } catch (Exception ex) {
            UTCLog.log(ex.getMessage(), new Object[0]);
            appName = UNKNOWNAPP;
        }
        return appName;
    }

    private static String getDeviceModel() {
        if (deviceModel == null) {
            String model = Build.MODEL;
            deviceModel = UNKNOWNAPP;
            if (model != null && !model.isEmpty()) {
                deviceModel = removePipes(model);
            }
        }
        return deviceModel;
    }

    private static String getDeviceLocale() {
        if (osLocale == null) {
            try {
                Locale deviceLocale = Locale.getDefault();
                osLocale = String.format("%s-%s", deviceLocale.getLanguage(), deviceLocale.getCountry());
            } catch (Exception ex) {
                UTCLog.log(ex.getMessage(), new Object[0]);
            }
        }
        return osLocale;
    }

    private static String getSandboxId() {
        try {
            XboxLiveAppConfig conf = new XboxLiveAppConfig();
            return conf.getSandbox();
        } catch (Exception ex) {
            UTCLog.log(ex.getMessage(), new Object[0]);
            return DEFAULTSANDBOX;
        }
    }

    private static String getAppSessionId() {
        if (applicationSession == null) {
            applicationSession = UUID.randomUUID();
        }
        return applicationSession.toString();
    }

    private static String removePipes(String parameter) {
        if (parameter != null) {
            return parameter.replace("|", "");
        }
        return parameter;
    }

    private static NetworkType getNetworkConnection() {
        if (netType == NetworkType.UNKNOWN && Interop.getApplicationContext() != null) {
            try {
                ConnectivityManager cm = (ConnectivityManager) Interop.getApplicationContext().getSystemService("connectivity");
                NetworkInfo defaultNetworkInfo = cm.getActiveNetworkInfo();
                if (defaultNetworkInfo == null) {
                    return netType;
                }
                NetworkInfo.State state = defaultNetworkInfo.getState();
                if (state == NetworkInfo.State.CONNECTED) {
                    switch (defaultNetworkInfo.getType()) {
                        case 0:
                        case 6:
                            netType = NetworkType.CELLULAR;
                            break;
                        case 1:
                            netType = NetworkType.WIFI;
                            break;
                        case 9:
                            netType = NetworkType.WIRED;
                            break;
                        default:
                            netType = NetworkType.UNKNOWN;
                            break;
                    }
                }
            } catch (Exception ex) {
                UTCLog.log(ex.getMessage(), new Object[0]);
                netType = NetworkType.UNKNOWN;
            }
        }
        return netType;
    }

    private static UTCAccessibilityInfoModel getAccessibilityInfo() {
        if (accessibilityInfo != null) {
            return accessibilityInfo;
        }
        accessibilityInfo = new UTCAccessibilityInfoModel();
        try {
            Context ctx = Interop.getApplicationContext();
            if (ctx != null) {
                AccessibilityManager manager = (AccessibilityManager) ctx.getSystemService("accessibility");
                accessibilityInfo.addValue("isenabled", Boolean.valueOf(manager.isEnabled()));
                List<AccessibilityServiceInfo> serviceInfoList = manager.getEnabledAccessibilityServiceList(-1);
                String services = DEFAULTSERVICES;
                for (AccessibilityServiceInfo info : serviceInfoList) {
                    services = services.equals(DEFAULTSERVICES) ? info.getId() : services + String.format(";%s", info.getId());
                }
                accessibilityInfo.addValue("enabledservices", services);
            }
        } catch (Exception e) {
            UTCLog.log(e.getMessage(), new Object[0]);
        }
        return accessibilityInfo;
    }
}
