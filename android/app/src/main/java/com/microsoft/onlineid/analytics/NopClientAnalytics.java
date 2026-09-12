package com.microsoft.onlineid.analytics;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NopClientAnalytics implements IClientAnalytics {
    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public void setTestMode() {
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics send(Map<String, String> params) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logScreenView(String screenName) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logEvent(String category, String action) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logEvent(String category, String action, String label) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logEvent(String category, String action, String label, Long value) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logTotalAccountsEvent(String category, int oldAccountCount, int newAccountCount) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public ITimedAnalyticsEvent createTimedEvent(String category, String name, String label) {
        return new NopTimedAnalyticsEvent();
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public ITimedAnalyticsEvent createTimedEvent(String category, String name) {
        return new NopTimedAnalyticsEvent();
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logException(Throwable throwable) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logClockSkew(long skew) {
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.IClientAnalytics
    public IClientAnalytics logCertificates(Map<String, byte[]> signatures) {
        return this;
    }
}
