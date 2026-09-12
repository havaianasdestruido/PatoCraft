package com.microsoft.cll.android;

import Microsoft.Telemetry.Base;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AndroidCll implements ICll, SettingsStore.UpdateListener {
    private final String TAG;
    protected ISingletonCll cll;
    private final SharedPreferences cllPreferences;
    private final SharedPreferences hostPreferences;
    private final ILogger logger;
    private final String sharedCllPreferencesName;
    private final String sharedHostPreferencesName;

    public AndroidCll(String iKey, Context context) {
        this.TAG = "AndroidCll-AndroidCll";
        this.logger = AndroidLogger.getInstance();
        this.sharedCllPreferencesName = "AndroidCllSettingsSharedPreferences";
        this.sharedHostPreferencesName = "AndroidHostSettingsSharedPreferences";
        CorrelationVector correlationVector = new CorrelationVector();
        String dataPath = context.getFilesDir().getPath();
        AndroidPartA partA = new AndroidPartA(AndroidLogger.getInstance(), iKey, context, correlationVector);
        this.cll = SingletonCll.getInstance(iKey, AndroidLogger.getInstance(), dataPath, partA, correlationVector);
        this.cllPreferences = context.getSharedPreferences("AndroidCllSettingsSharedPreferences", 0);
        this.hostPreferences = context.getSharedPreferences("AndroidHostSettingsSharedPreferences", 0);
        SettingsStore.setUpdateListener(this);
        setSettingsStoreValues();
    }

    protected AndroidCll() {
        this.TAG = "AndroidCll-AndroidCll";
        this.logger = AndroidLogger.getInstance();
        this.sharedCllPreferencesName = "AndroidCllSettingsSharedPreferences";
        this.sharedHostPreferencesName = "AndroidHostSettingsSharedPreferences";
        this.cllPreferences = null;
        this.hostPreferences = null;
    }

    @Override // com.microsoft.cll.android.ICll
    public void start() {
        this.cll.start();
    }

    @Override // com.microsoft.cll.android.ICll
    public void stop() {
        this.cll.stop();
    }

    @Override // com.microsoft.cll.android.ICll
    public void pause() {
        this.cll.pause();
    }

    @Override // com.microsoft.cll.android.ICll
    public void resume() {
        this.cll.resume();
    }

    @Override // com.microsoft.cll.android.ICll
    public void log(Base event) {
        log(event, null);
    }

    @Override // com.microsoft.cll.android.ICll
    public void log(Base event, List<String> ids) {
        log(event, EventEnums.Latency.LatencyUnspecified, EventEnums.Persistence.PersistenceUnspecified, EnumSet.of(EventEnums.Sensitivity.SensitivityUnspecified), -1.0d, ids);
    }

    @Override // com.microsoft.cll.android.ICll
    public void log(Base event, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity, double sampleRate, List<String> ids) {
        PreSerializedEvent preSerializedEvent = PreSerializedEvent.createFromStaticEvent(this.logger, event);
        this.cll.log(preSerializedEvent, latency, persistence, sensitivity, sampleRate, ids);
    }

    @Override // com.microsoft.cll.android.ICll
    public void log(String eventName, String eventData, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity, double sampleRate, List<String> ids) {
        if (!eventName.contains(".")) {
            this.logger.error("AndroidCll-AndroidCll", "Event Name does not follow a valid format. Your event must have at least one . between two words. E.g. Microsoft.MyEvent");
        } else {
            PreSerializedEvent preSerializedEvent = PreSerializedEvent.createFromDynamicEvent(eventName, eventData);
            this.cll.log(preSerializedEvent, latency, persistence, sensitivity, sampleRate, ids);
        }
    }

    public void logInternal(com.microsoft.telemetry.Base testEvent) {
        this.cll.log(testEvent, null, null, null, -1.0d, null);
    }

    @Override // com.microsoft.cll.android.ICll
    public void setDebugVerbosity(Verbosity verbosity) {
        this.cll.setDebugVerbosity(verbosity);
    }

    @Override // com.microsoft.cll.android.ICll
    public void send() {
        this.cll.send();
    }

    @Override // com.microsoft.cll.android.ICll
    public void setEndpointUrl(String url) {
        this.cll.setEndpointUrl(url);
    }

    @Override // com.microsoft.cll.android.ICll
    public void useLegacyCS(boolean value) {
        this.cll.useLegacyCS(value);
    }

    @Override // com.microsoft.cll.android.ICll
    public void setExperimentId(String id) {
        this.cll.setExperimentId(id);
    }

    @Override // com.microsoft.cll.android.ICll
    public void synchronize() {
        this.cll.synchronize();
    }

    @Override // com.microsoft.cll.android.ICll
    public void SubscribeCllEvents(ICllEvents cllEvents) {
        this.cll.SubscribeCllEvents(cllEvents);
    }

    @Override // com.microsoft.cll.android.ICll
    public void setAppUserId(String userId) {
        this.cll.setAppUserId(userId);
    }

    @Override // com.microsoft.cll.android.ICll
    public String getAppUserId() {
        return this.cll.getAppUserId();
    }

    public CorrelationVector getCorrelationVector() {
        return ((SingletonCll) this.cll).correlationVector;
    }

    @Override // com.microsoft.cll.android.ICll
    public void setXuidCallback(ITicketCallback callback) {
        this.cll.setXuidCallback(callback);
    }

    @Override // com.microsoft.cll.android.SettingsStore.UpdateListener
    public void OnHostSettingUpdate(String settingName, String settingValue) {
        SharedPreferences.Editor editor = this.hostPreferences.edit();
        editor.putString(settingName, settingValue);
        editor.apply();
    }

    @Override // com.microsoft.cll.android.SettingsStore.UpdateListener
    public void OnCllSettingUpdate(String settingName, String settingValue) {
        SharedPreferences.Editor editor = this.cllPreferences.edit();
        editor.putString(settingName, settingValue);
        editor.apply();
    }

    private void setSettingsStoreValues() {
        for (Map.Entry<String, ?> entry : this.cllPreferences.getAll().entrySet()) {
            try {
                SettingsStore.Settings settingKey = SettingsStore.Settings.valueOf(entry.getKey());
                SettingsStore.updateCllSetting(settingKey, (String) entry.getValue());
            } catch (Exception e) {
                SharedPreferences.Editor editor = this.cllPreferences.edit();
                editor.remove(entry.getKey());
                editor.apply();
            }
        }
        for (Map.Entry<String, ?> entry2 : this.hostPreferences.getAll().entrySet()) {
            SettingsStore.updateHostSetting(entry2.getKey(), (String) entry2.getValue());
        }
    }
}
