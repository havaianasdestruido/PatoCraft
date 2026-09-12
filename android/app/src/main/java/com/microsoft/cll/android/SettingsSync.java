package com.microsoft.cll.android;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SettingsSync extends ScheduledWorker {
    private final String TAG;
    private final ClientTelemetry clientTelemetry;
    private final ILogger logger;
    private final List<AbstractSettings> settingsList;

    public SettingsSync(ClientTelemetry clientTelemetry, ILogger logger, String iKey, PartA partA) {
        super(SettingsStore.getCllSettingsAsLong(SettingsStore.Settings.SYNCREFRESHINTERVAL));
        this.TAG = "AndroidCll-SettingsSync";
        this.clientTelemetry = clientTelemetry;
        this.logger = logger;
        this.settingsList = new ArrayList();
        this.settingsList.add(new CllSettings(clientTelemetry, logger, this, partA));
        if (!iKey.equals("")) {
            this.settingsList.add(new HostSettings(clientTelemetry, logger, iKey, partA));
        }
    }

    @Override // com.microsoft.cll.android.ScheduledWorker, java.lang.Runnable
    public void run() {
        this.logger.info("AndroidCll-SettingsSync", "Cloud sync!");
        GetCloudSettings();
    }

    private void GetCloudSettings() {
        for (AbstractSettings abstractSettings : this.settingsList) {
            JSONObject json = abstractSettings.getSettings();
            if (json == null) {
                this.logger.error("AndroidCll-SettingsSync", "Could not get or parse settings");
            } else {
                abstractSettings.ParseSettings(json);
            }
        }
    }
}
