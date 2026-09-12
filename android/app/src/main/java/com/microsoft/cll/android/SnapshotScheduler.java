package com.microsoft.cll.android;

import Microsoft.Android.LoggingLibrary.Snapshot;
import java.util.EnumSet;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SnapshotScheduler extends ScheduledWorker {
    private final String TAG;
    private final ClientTelemetry clientTelemetry;
    private final ISingletonCll cll;
    private final ILogger logger;

    public SnapshotScheduler(ClientTelemetry clientTelemetry, ILogger logger, ISingletonCll cll) {
        super(SettingsStore.getCllSettingsAsLong(SettingsStore.Settings.SNAPSHOTSCHEDULEINTERVAL));
        this.TAG = "AndroidCll-SnapshotScheduler";
        this.cll = cll;
        this.clientTelemetry = clientTelemetry;
        this.logger = logger;
    }

    @Override // com.microsoft.cll.android.ScheduledWorker
    public void start(ScheduledExecutorService executor) {
        this.executor = executor;
        this.nextExecution = executor.scheduleAtFixedRate(this, this.interval, this.interval, TimeUnit.SECONDS);
    }

    @Override // com.microsoft.cll.android.ScheduledWorker
    public void resume(ScheduledExecutorService executor) {
        this.executor = executor;
        this.nextExecution = executor.scheduleAtFixedRate(this, this.interval, this.interval, TimeUnit.SECONDS);
        this.isPaused = false;
    }

    @Override // com.microsoft.cll.android.ScheduledWorker, java.lang.Runnable
    public void run() {
        this.logger.info("AndroidCll-SnapshotScheduler", "Uploading snapshot");
        if (this.interval != SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.SNAPSHOTSCHEDULEINTERVAL)) {
            this.nextExecution.cancel(false);
            this.interval = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.SNAPSHOTSCHEDULEINTERVAL);
            this.nextExecution = this.executor.scheduleAtFixedRate(this, this.interval, this.interval, TimeUnit.SECONDS);
        }
        recordStatistics();
    }

    private void recordStatistics() {
        Snapshot snapshot = this.clientTelemetry.GetEvent();
        this.cll.log(snapshot, EventEnums.Latency.LatencyUnspecified, EventEnums.Persistence.PersistenceUnspecified, EnumSet.of(EventEnums.Sensitivity.SensitivityUnspecified), -1.0d, null);
        this.clientTelemetry.Reset();
    }
}
