package com.microsoft.cll.android;

import Microsoft.Android.LoggingLibrary.Snapshot;
import Ms.Telemetry.CllHeartBeat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ClientTelemetry {
    protected CllHeartBeat snapshot = new CllHeartBeat();
    private ArrayList<Integer> settingsCallLatencies = new ArrayList<>();
    private ArrayList<Integer> vortexCallLatencies = new ArrayList<>();

    public ClientTelemetry() {
        Reset();
    }

    protected Snapshot GetEvent() {
        Snapshot snapshotEvent = new Snapshot();
        snapshotEvent.setBaseData(this.snapshot);
        return snapshotEvent;
    }

    protected void Reset() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'Z'", Locale.US);
        dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.snapshot.setLastHeartBeat(dateFormat.format(new Date()).toString());
        this.snapshot.setEventsQueued(0);
        this.snapshot.setLogFailures(0);
        this.snapshot.setQuotaDropCount(0);
        this.snapshot.setRejectDropCount(0);
        this.snapshot.setVortexHttpAttempts(0);
        this.snapshot.setVortexHttpFailures(0);
        this.snapshot.setCacheUsagePercent(EventEnums.SampleRate_0_percent);
        this.snapshot.setAvgVortexLatencyMs(0);
        this.snapshot.setMaxVortexLatencyMs(0);
        this.snapshot.setSettingsHttpAttempts(0);
        this.snapshot.setSettingsHttpFailures(0);
        this.snapshot.setAvgSettingsLatencyMs(0);
        this.snapshot.setMaxSettingsLatencyMs(0);
        this.snapshot.setVortexFailures4xx(0);
        this.snapshot.setVortexFailures5xx(0);
        this.snapshot.setVortexFailuresTimeout(0);
        this.snapshot.setSettingsFailures4xx(0);
        this.snapshot.setSettingsFailures5xx(0);
        this.snapshot.setSettingsFailuresTimeout(0);
        this.settingsCallLatencies.clear();
        this.vortexCallLatencies.clear();
    }

    protected void IncrementEventsQueuedForUpload() {
        IncrementEventsQueuedForUpload(1);
    }

    protected void IncrementEventsQueuedForUpload(int count) {
        int queueCount = this.snapshot.getEventsQueued() + count;
        this.snapshot.setEventsQueued(queueCount);
    }

    protected void IncrementLogFailures() {
        int errorCount = this.snapshot.getLogFailures() + 1;
        this.snapshot.setLogFailures(errorCount);
    }

    protected void IncrementEventsDroppedDueToQuota() {
        int count = this.snapshot.getQuotaDropCount() + 1;
        this.snapshot.setQuotaDropCount(count);
    }

    protected void IncrementSettingsHttpAttempts() {
        int attempts = this.snapshot.getSettingsHttpAttempts() + 1;
        this.snapshot.setSettingsHttpAttempts(attempts);
    }

    protected void IncrementVortexHttpAttempts() {
        int failures = this.snapshot.getVortexHttpAttempts() + 1;
        this.snapshot.setVortexHttpAttempts(failures);
    }

    protected void IncrementVortexHttpFailures(int errorCode) {
        int failures = this.snapshot.getVortexHttpFailures() + 1;
        this.snapshot.setVortexHttpFailures(failures);
        if (errorCode >= 400 && errorCode < 500) {
            int fourHundredFailures = this.snapshot.getVortexFailures4xx() + 1;
            this.snapshot.setVortexFailures4xx(fourHundredFailures);
        }
        if (errorCode >= 500 && errorCode < 600) {
            int fiveHundredFailures = this.snapshot.getVortexFailures5xx() + 1;
            this.snapshot.setVortexFailures5xx(fiveHundredFailures);
        }
        if (errorCode == -1) {
            int timeoutFailures = this.snapshot.getVortexFailuresTimeout() + 1;
            this.snapshot.setVortexFailuresTimeout(timeoutFailures);
        }
    }

    protected void IncrementSettingsHttpFailures(int errorCode) {
        int failures = this.snapshot.getSettingsHttpFailures() + 1;
        this.snapshot.setSettingsHttpFailures(failures);
        if (errorCode >= 400 && errorCode < 500) {
            int fourHunredFailures = this.snapshot.getSettingsFailures4xx() + 1;
            this.snapshot.setSettingsFailures4xx(fourHunredFailures);
        }
        if (errorCode >= 500 && errorCode < 600) {
            int fiveHunredFailures = this.snapshot.getSettingsFailures5xx() + 1;
            this.snapshot.setSettingsFailures5xx(fiveHunredFailures);
        }
        if (errorCode == -1) {
            int timeoutFailures = this.snapshot.getSettingsFailuresTimeout() + 1;
            this.snapshot.setSettingsFailuresTimeout(timeoutFailures);
        }
    }

    protected void SetCacheUsagePercent(double percent) {
        this.snapshot.setCacheUsagePercent(percent);
    }

    protected void SetAvgSettingsLatencyMs(int time) {
        this.settingsCallLatencies.add(Integer.valueOf(time));
        int total = 0;
        Iterator<Integer> it = this.settingsCallLatencies.iterator();
        while (it.hasNext()) {
            int i = it.next().intValue();
            total += i;
        }
        int average = total / this.settingsCallLatencies.size();
        this.snapshot.setAvgSettingsLatencyMs(average);
    }

    protected void SetMaxSettingsLatencyMs(int time) {
        if (this.snapshot.getMaxSettingsLatencyMs() < time) {
            this.snapshot.setMaxSettingsLatencyMs(time);
        }
    }

    protected void SetAvgVortexLatencyMs(int time) {
        this.vortexCallLatencies.add(Integer.valueOf(time));
        int total = 0;
        Iterator<Integer> it = this.vortexCallLatencies.iterator();
        while (it.hasNext()) {
            int i = it.next().intValue();
            total += i;
        }
        int average = total / this.vortexCallLatencies.size();
        this.snapshot.setAvgVortexLatencyMs(average);
    }

    protected void SetMaxVortexLatencyMs(int time) {
        if (this.snapshot.getMaxVortexLatencyMs() < time) {
            this.snapshot.setMaxVortexLatencyMs(time);
        }
    }

    protected void IncrementRejectDropCount(int numberOfEventsDropped) {
        int dropped = this.snapshot.getRejectDropCount() + numberOfEventsDropped;
        this.snapshot.setRejectDropCount(dropped);
    }
}
