package com.microsoft.cll.android;

import com.microsoft.telemetry.Base;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SingletonCll implements ISingletonCll {
    private static SingletonCll Instance;
    private static Object InstanceLock = new Object();
    protected final String TAG = "AndroidCll-SingletonCll";
    protected final ClientTelemetry clientTelemetry;
    protected final List<ICllEvents> cllEvents;
    public CorrelationVector correlationVector;
    protected EventHandler eventHandler;
    private ScheduledExecutorService executor;
    private final AtomicBoolean isChanging;
    private final AtomicBoolean isPaused;
    private final AtomicBoolean isStarted;
    protected ILogger logger;
    protected PartA partA;
    protected SettingsSync settingsSync;
    protected SnapshotScheduler snapshotScheduler;
    private ITicketCallback ticketCallback;

    public static ISingletonCll getInstance(String iKey, ILogger logger, String eventDir, PartA partA, CorrelationVector correlationVector) {
        if (Instance == null) {
            synchronized (InstanceLock) {
                if (Instance == null) {
                    Instance = new SingletonCll(iKey, logger, eventDir, partA, correlationVector);
                }
            }
        }
        return Instance;
    }

    private SingletonCll(String iKey, ILogger logger, String eventDir, PartA partA, CorrelationVector correlationVector) {
        if (iKey == null || iKey == "") {
            throw new IllegalArgumentException("iKey cannot be null or \"\"");
        }
        logger.setVerbosity(Verbosity.NONE);
        this.correlationVector = correlationVector;
        this.logger = logger;
        this.partA = partA;
        this.clientTelemetry = new ClientTelemetry();
        this.cllEvents = new ArrayList();
        this.eventHandler = new EventHandler(this.clientTelemetry, this.cllEvents, logger, eventDir);
        this.isChanging = new AtomicBoolean(false);
        this.isStarted = new AtomicBoolean(false);
        this.isPaused = new AtomicBoolean(false);
        this.settingsSync = new SettingsSync(this.clientTelemetry, logger, iKey, partA);
        this.snapshotScheduler = new SnapshotScheduler(this.clientTelemetry, logger, this);
        setEndpointUrl(SettingsStore.getCllSettingsAsString(SettingsStore.Settings.VORTEXPRODURL));
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void start() {
        if (this.isChanging.compareAndSet(false, true)) {
            if (!this.isStarted.get()) {
                this.executor = Executors.newScheduledThreadPool(3);
                this.snapshotScheduler.start(this.executor);
                this.eventHandler.start(this.executor);
                this.settingsSync.start(this.executor);
                this.isStarted.set(true);
            }
            this.isChanging.set(false);
        }
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void stop() {
        if (this.isChanging.compareAndSet(false, true)) {
            if (this.isStarted.get()) {
                this.eventHandler.stop();
                this.settingsSync.stop();
                this.snapshotScheduler.stop();
                this.executor.shutdown();
                this.isStarted.set(false);
            }
            for (ICllEvents event : this.cllEvents) {
                event.stopped();
            }
            this.isChanging.set(false);
        }
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void pause() {
        if (this.isChanging.compareAndSet(false, true)) {
            if (this.isStarted.get() && !this.isPaused.get()) {
                this.eventHandler.pause();
                this.settingsSync.pause();
                this.snapshotScheduler.pause();
                this.executor.shutdown();
                this.isPaused.set(true);
            }
            this.isChanging.set(false);
        }
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void resume() {
        if (this.isChanging.compareAndSet(false, true)) {
            if (this.isStarted.get() && this.isPaused.get()) {
                this.executor = Executors.newScheduledThreadPool(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.THREADSTOUSEWITHEXECUTOR));
                this.snapshotScheduler.resume(this.executor);
                this.eventHandler.resume(this.executor);
                this.settingsSync.resume(this.executor);
                this.isPaused.set(false);
            }
            this.isChanging.set(false);
        }
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void setDebugVerbosity(Verbosity verbosity) {
        this.logger.setVerbosity(verbosity);
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void log(Base event, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity, double sampleRate, List<String> ids) {
        if (!this.isStarted.get()) {
            this.logger.error("AndroidCll-SingletonCll", "Cll must be started before logging events");
        } else if (ids != null && this.ticketCallback == null) {
            this.logger.error("AndroidCll-SingletonCll", "You must set the ticket callback if you want to log ids with your events");
        } else {
            SerializedEvent serializedEvent = this.partA.populate(event, latency, persistence, sensitivity, sampleRate, ids);
            this.eventHandler.log(serializedEvent, ids);
        }
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void send() {
        if (this.isStarted.get()) {
            this.eventHandler.send();
        } else {
            this.logger.info("AndroidCll-SingletonCll", "Cannot send while the CLL is stopped.");
        }
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void setEndpointUrl(String url) {
        this.eventHandler.setEndpointUrl(url);
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void useLegacyCS(boolean value) {
        this.partA.useLegacyCS(value);
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void setExperimentId(String id) {
        this.partA.setExpId(id);
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void synchronize() {
        this.eventHandler.synchronize();
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void SubscribeCllEvents(ICllEvents cllEvents) {
    }

    protected void setEventSender(EventSender sender) {
        this.eventHandler.setSender(sender);
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void setAppUserId(String userId) {
        this.partA.setAppUserId(userId);
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public String getAppUserId() {
        return this.partA.getAppUserId();
    }

    @Override // com.microsoft.cll.android.ISingletonCll
    public void setXuidCallback(ITicketCallback callback) {
        this.ticketCallback = callback;
        if (this.isStarted.get() || this.isPaused.get()) {
            this.logger.warn("AndroidCll-SingletonCll", "Xuid callback must be set before start.");
        } else {
            this.eventHandler.setXuidCallback(callback);
        }
    }
}
