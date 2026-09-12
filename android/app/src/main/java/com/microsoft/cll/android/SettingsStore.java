package com.microsoft.cll.android;

import com.microsoft.telemetry.Base;
import com.microsoft.xbox.xle.app.ImageUtil;
import java.util.EnumSet;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SettingsStore {
    private static UpdateListener updateListener;
    private static HashMap<String, String> hostEventSettings = new HashMap<>();
    protected static HashMap<Settings, Object> cllSettings = new HashMap<>();

    public enum Settings {
        SYNCREFRESHINTERVAL,
        QUEUEDRAININTERVAL,
        SNAPSHOTSCHEDULEINTERVAL,
        MAXEVENTSIZEINBYTES,
        MAXEVENTSPERPOST,
        SAMPLERATE,
        MAXFILESSPACE,
        UPLOADENABLED,
        PERSISTENCE,
        LATENCY,
        HTTPTIMEOUTINTERVAL,
        THREADSTOUSEWITHEXECUTOR,
        MAXCORRELATIONVECTORLENGTH,
        MAXCRITICALCANADDATTEMPTS,
        MAXRETRYPERIOD,
        BASERETRYPERIOD,
        CONSTANTFORRETRYPERIOD,
        NORMALEVENTMEMORYQUEUESIZE,
        CLLSETTINGSURL,
        HOSTSETTINGSETAG,
        CLLSETTINGSETAG,
        VORTEXPRODURL,
        MAXREALTIMETHREADS
    }

    public interface UpdateListener {
        void OnCllSettingUpdate(String str, String str2);

        void OnHostSettingUpdate(String str, String str2);
    }

    static {
        cllSettings.put(Settings.SYNCREFRESHINTERVAL, 1800);
        cllSettings.put(Settings.QUEUEDRAININTERVAL, 120);
        cllSettings.put(Settings.SNAPSHOTSCHEDULEINTERVAL, 900);
        cllSettings.put(Settings.MAXEVENTSIZEINBYTES, 65536);
        cllSettings.put(Settings.MAXEVENTSPERPOST, 500);
        cllSettings.put(Settings.MAXFILESSPACE, 10485760);
        cllSettings.put(Settings.UPLOADENABLED, true);
        cllSettings.put(Settings.HTTPTIMEOUTINTERVAL, 60000);
        cllSettings.put(Settings.THREADSTOUSEWITHEXECUTOR, 3);
        cllSettings.put(Settings.MAXCORRELATIONVECTORLENGTH, 63);
        cllSettings.put(Settings.MAXCRITICALCANADDATTEMPTS, 5);
        cllSettings.put(Settings.MAXRETRYPERIOD, 180);
        cllSettings.put(Settings.BASERETRYPERIOD, 2);
        cllSettings.put(Settings.CONSTANTFORRETRYPERIOD, 5);
        cllSettings.put(Settings.NORMALEVENTMEMORYQUEUESIZE, 50);
        cllSettings.put(Settings.CLLSETTINGSURL, "https://settings.data.microsoft.com/settings/v2.0/androidLL/app");
        cllSettings.put(Settings.HOSTSETTINGSETAG, "");
        cllSettings.put(Settings.CLLSETTINGSETAG, "");
        cllSettings.put(Settings.VORTEXPRODURL, "https://vortex.data.microsoft.com/collect/v1");
        cllSettings.put(Settings.MAXREALTIMETHREADS, Integer.valueOf(ImageUtil.SMALL));
    }

    protected static int getCllSettingsAsInt(Settings setting) {
        return Integer.parseInt(cllSettings.get(setting).toString());
    }

    protected static long getCllSettingsAsLong(Settings setting) {
        return Long.parseLong(cllSettings.get(setting).toString());
    }

    protected static boolean getCllSettingsAsBoolean(Settings setting) {
        return Boolean.parseBoolean(cllSettings.get(setting).toString());
    }

    protected static String getCllSettingsAsString(Settings setting) {
        return cllSettings.get(setting).toString();
    }

    public static void setUpdateListener(UpdateListener updateListener2) {
        updateListener = updateListener2;
    }

    public static void updateHostSetting(String settingName, String settingValue) {
        if (hostEventSettings.get(settingName) == null || !hostEventSettings.get(settingName).equals(settingValue)) {
            hostEventSettings.put(settingName, settingValue);
            if (updateListener != null) {
                updateListener.OnHostSettingUpdate(settingName, settingValue);
            }
        }
    }

    public static void updateCllSetting(Settings settingName, String settingValue) {
        if (cllSettings.get(settingName) == null || !cllSettings.get(settingName).equals(settingValue)) {
            cllSettings.put(settingName, settingValue);
            if (updateListener != null) {
                updateListener.OnCllSettingUpdate(settingName.toString(), settingValue);
            }
        }
    }

    public static EventEnums.Latency getLatencyForEvent(Base base, EventEnums.Latency passedInValue) {
        String valueString = getSettingFromCloud(base, "LATENCY");
        if (valueString != null) {
            return EventEnums.Latency.FromString(valueString);
        }
        if (passedInValue == null || passedInValue == EventEnums.Latency.LatencyUnspecified) {
            String valueString2 = getSettingFromSchema(base, "LATENCY");
            if (valueString2 != null) {
                return EventEnums.Latency.FromString(valueString2);
            }
            String valueString3 = getSettingFromCloudDefaults("LATENCY");
            if (valueString3 != null) {
                return EventEnums.Latency.FromString(valueString3);
            }
            return EventEnums.Latency.LatencyNormal;
        }
        return passedInValue;
    }

    public static EventEnums.Persistence getPersistenceForEvent(Base base, EventEnums.Persistence passedInValue) {
        String valueString = getSettingFromCloud(base, "PERSISTENCE");
        if (valueString != null) {
            return EventEnums.Persistence.FromString(valueString);
        }
        if (passedInValue == null || passedInValue == EventEnums.Persistence.PersistenceUnspecified) {
            String valueString2 = getSettingFromSchema(base, "PERSISTENCE");
            if (valueString2 != null) {
                return EventEnums.Persistence.FromString(valueString2);
            }
            String valueString3 = getSettingFromCloudDefaults("PERSISTENCE");
            if (valueString3 != null) {
                return EventEnums.Persistence.FromString(valueString3);
            }
            return EventEnums.Persistence.PersistenceNormal;
        }
        return passedInValue;
    }

    public static EnumSet<EventEnums.Sensitivity> getSensitivityForEvent(Base base, EnumSet<EventEnums.Sensitivity> passedInValue) {
        String valueString = getSettingFromCloud(base, "SENSITIVITY");
        if (valueString != null) {
            return EventEnums.Sensitivity.FromString(valueString);
        }
        if (passedInValue == null || passedInValue.contains(EventEnums.Sensitivity.SensitivityUnspecified)) {
            String valueString2 = getSettingFromSchema(base, "SENSITIVITY");
            if (valueString2 != null) {
                return EventEnums.Sensitivity.FromString(valueString2);
            }
            String valueString3 = getSettingFromCloudDefaults("SENSITIVITY");
            if (valueString3 != null) {
                return EventEnums.Sensitivity.FromString(valueString3);
            }
            return EnumSet.of(EventEnums.Sensitivity.SensitivityNone);
        }
        return passedInValue;
    }

    public static double getSampleRateForEvent(Base base, double passedInValue) {
        String valueString = getSettingFromCloud(base, "SAMPLERATE");
        if (valueString != null) {
            return EventEnums.SampleRateFromString(valueString);
        }
        if (passedInValue < -1.0E-5d) {
            String valueString2 = getSettingFromSchema(base, "SAMPLERATE");
            if (valueString2 != null) {
                return EventEnums.SampleRateFromString(valueString2);
            }
            String valueString3 = getSettingFromCloudDefaults("SAMPLERATE");
            if (valueString3 != null) {
                return EventEnums.SampleRateFromString(valueString3);
            }
            return 100.0d;
        }
        return passedInValue;
    }

    private static String getSettingFromCloud(Base base, String settingName) {
        String namespace;
        String eventName;
        String qualifiedEventName = base.QualifiedName.toUpperCase();
        if (qualifiedEventName.lastIndexOf(".") == -1) {
            namespace = "";
            eventName = qualifiedEventName;
        } else {
            namespace = qualifiedEventName.substring(0, qualifiedEventName.lastIndexOf("."));
            eventName = qualifiedEventName.substring(qualifiedEventName.lastIndexOf(".") + 1);
        }
        if (hostEventSettings.containsKey(namespace + ":" + eventName + "::" + settingName)) {
            return hostEventSettings.get(namespace + ":" + eventName + "::" + settingName);
        }
        if (hostEventSettings.containsKey(":" + eventName + "::" + settingName)) {
            return hostEventSettings.get(":" + eventName + "::" + settingName);
        }
        if (hostEventSettings.containsKey(namespace + ":::" + settingName)) {
            return hostEventSettings.get(namespace + ":::" + settingName);
        }
        if (hostEventSettings.containsKey(":::" + settingName)) {
            return hostEventSettings.get(":::" + settingName);
        }
        return null;
    }

    private static String getSettingFromSchema(Base base, String settingName) {
        return base.Attributes.get(settingName);
    }

    private static String getSettingFromCloudDefaults(String settingName) {
        Object settingObject = cllSettings.get(settingName);
        if (settingObject != null) {
            return settingObject.toString();
        }
        return null;
    }
}
