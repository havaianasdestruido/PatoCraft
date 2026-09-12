package com.microsoft.cll.android;

import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CllSettings extends AbstractSettings {
    private final SettingsSync settingsSync;

    public CllSettings(ClientTelemetry clientTelemetry, ILogger logger, SettingsSync settingsSync, PartA partA) {
        super(clientTelemetry, logger, partA);
        this.settingsSync = settingsSync;
        this.TAG = "AndroidCll-CllSettings";
        this.ETagSettingName = SettingsStore.Settings.CLLSETTINGSETAG;
        this.endpoint = SettingsStore.getCllSettingsAsString(SettingsStore.Settings.CLLSETTINGSURL);
        this.queryParam = "?iKey=" + partA.iKey + "&os=" + partA.osName + "&osVer=" + partA.osVer + "&deviceClass=" + partA.deviceExt.getDeviceClass() + "&deviceId=" + partA.deviceExt.getLocalId();
    }

    @Override // com.microsoft.cll.android.AbstractSettings
    public void ParseSettings(JSONObject resultJson) {
        if (resultJson != null) {
            try {
                if (resultJson.has("settings")) {
                    int refreshInterval = resultJson.getInt("refreshInterval") * 60;
                    if (refreshInterval != SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.SYNCREFRESHINTERVAL)) {
                        SettingsStore.cllSettings.put(SettingsStore.Settings.SYNCREFRESHINTERVAL, Integer.valueOf(refreshInterval));
                        this.settingsSync.nextExecution.cancel(false);
                        this.settingsSync.nextExecution = this.settingsSync.executor.scheduleAtFixedRate(this.settingsSync, SettingsStore.getCllSettingsAsLong(SettingsStore.Settings.SYNCREFRESHINTERVAL), SettingsStore.getCllSettingsAsLong(SettingsStore.Settings.SYNCREFRESHINTERVAL), TimeUnit.SECONDS);
                    }
                    JSONObject jsonSettings = (JSONObject) resultJson.get("settings");
                    Iterator<String> keys = jsonSettings.keys();
                    while (keys.hasNext()) {
                        String key = keys.next();
                        String value = jsonSettings.getString(key);
                        try {
                            SettingsStore.updateCllSetting(SettingsStore.Settings.valueOf(key), value);
                            this.logger.info(this.TAG, "Json Settings, Key: " + key + " Value: " + value);
                        } catch (Exception e) {
                            this.logger.warn(this.TAG, "Key: " + key + " was not found");
                        }
                    }
                }
            } catch (Exception e2) {
                this.logger.error(this.TAG, "An exception occurred while parsing settings");
            }
        }
    }
}
