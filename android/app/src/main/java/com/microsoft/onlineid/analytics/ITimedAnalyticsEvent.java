package com.microsoft.onlineid.analytics;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ITimedAnalyticsEvent {
    void end();

    ITimedAnalyticsEvent setLabel(String str);

    ITimedAnalyticsEvent start();
}
