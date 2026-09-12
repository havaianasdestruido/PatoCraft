package com.microsoft.cll.android;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SerializedEvent {
    private String deviceId;
    private EventEnums.Latency latency;
    private EventEnums.Persistence persistence;
    private double sampleRate;
    private String serializedData;

    public String getSerializedData() {
        return this.serializedData;
    }

    public void setSerializedData(String serializedData) {
        this.serializedData = serializedData;
    }

    public EventEnums.Latency getLatency() {
        return this.latency;
    }

    public void setLatency(EventEnums.Latency latency) {
        this.latency = latency;
    }

    public EventEnums.Persistence getPersistence() {
        return this.persistence;
    }

    public void setPersistence(EventEnums.Persistence persistence) {
        this.persistence = persistence;
    }

    public double getSampleRate() {
        return this.sampleRate;
    }

    public void setSampleRate(double sampleRate) {
        this.sampleRate = sampleRate;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }
}
