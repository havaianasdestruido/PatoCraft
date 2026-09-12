package com.microsoft.onlineid.analytics;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NopTimedAnalyticsEvent implements ITimedAnalyticsEvent {
    @Override // com.microsoft.onlineid.analytics.ITimedAnalyticsEvent
    public NopTimedAnalyticsEvent setLabel(String label) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.ITimedAnalyticsEvent
    public NopTimedAnalyticsEvent start() {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.ITimedAnalyticsEvent
    public void end() {
    }
}
