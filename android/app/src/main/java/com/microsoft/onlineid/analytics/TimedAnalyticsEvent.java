package com.microsoft.onlineid.analytics;

import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.log.Logger;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TimedAnalyticsEvent implements ITimedAnalyticsEvent {
    private static final long StartTimeNotSet = -1;
    private final HitBuilders.TimingBuilder _builder;
    private long _startTime = -1;
    private final Tracker _tracker;

    TimedAnalyticsEvent(Tracker tracker, String category, String name, String label) {
        Assertion.check((category == null || name == null) ? false : true);
        this._tracker = tracker;
        this._builder = new HitBuilders.TimingBuilder();
        this._builder.setCategory(category);
        this._builder.setVariable(name);
        if (label != null) {
            this._builder.setLabel(label);
        }
    }

    @Override // com.microsoft.onlineid.analytics.ITimedAnalyticsEvent
    public TimedAnalyticsEvent setLabel(String label) {
        this._builder.setLabel(label);
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.ITimedAnalyticsEvent
    public TimedAnalyticsEvent start() {
        this._startTime = System.nanoTime();
        return this;
    }

    @Override // com.microsoft.onlineid.analytics.ITimedAnalyticsEvent
    public void end() {
        if (this._startTime != -1) {
            long durationNanoseconds = System.nanoTime() - this._startTime;
            long milliseconds = TimeUnit.MILLISECONDS.convert(durationNanoseconds, TimeUnit.NANOSECONDS);
            this._builder.setValue(milliseconds);
            send(this._builder.build());
            return;
        }
        Logger.error("TimedAnalyticsEvent.end() called before start().");
    }

    protected void send(Map<String, String> params) {
        this._tracker.send(params);
    }
}
