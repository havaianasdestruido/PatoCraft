package com.microsoft.cll.android;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventHandler extends ScheduledWorker {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final String TAG;
    private final ClientTelemetry clientTelemetry;
    private final List<ICllEvents> cllEvents;
    final AbstractHandler criticalHandler;
    private URL endpoint;
    private final ILogger logger;
    final AbstractHandler normalHandler;
    private double sampleId;
    private EventSender sender;
    private ITicketCallback ticketCallback;

    static {
        $assertionsDisabled = !EventHandler.class.desiredAssertionStatus();
    }

    protected EventHandler(ClientTelemetry clientTelemetry, List<ICllEvents> cllEvents, ILogger logger, AbstractHandler normalEventHandler, AbstractHandler criticalEventAbstractHandler) {
        super(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.QUEUEDRAININTERVAL));
        this.TAG = "AndroidCll-EventHandler";
        this.clientTelemetry = clientTelemetry;
        this.cllEvents = cllEvents;
        this.logger = logger;
        this.normalHandler = normalEventHandler;
        this.criticalHandler = criticalEventAbstractHandler;
        this.sampleId = -1.0d;
    }

    public EventHandler(ClientTelemetry clientTelemetry, List<ICllEvents> cllEvents, ILogger logger, String filePath) {
        super(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.QUEUEDRAININTERVAL));
        this.TAG = "AndroidCll-EventHandler";
        this.clientTelemetry = clientTelemetry;
        this.cllEvents = cllEvents;
        this.logger = logger;
        this.criticalHandler = new CriticalEventHandler(logger, filePath, clientTelemetry);
        this.normalHandler = new NormalEventHandler(logger, filePath, clientTelemetry);
        this.sampleId = -1.0d;
    }

    @Override // com.microsoft.cll.android.ScheduledWorker, java.lang.Runnable
    public void run() {
        if (this.interval != SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.QUEUEDRAININTERVAL)) {
            this.nextExecution.cancel(false);
            this.interval = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.QUEUEDRAININTERVAL);
            this.nextExecution = this.executor.scheduleAtFixedRate(this, this.interval, this.interval, TimeUnit.SECONDS);
        }
        if (EventQueueWriter.future != null) {
            this.logger.info("AndroidCll-EventHandler", "Retry logic in progress, skipping normal send");
        } else {
            send();
        }
    }

    @Override // com.microsoft.cll.android.ScheduledWorker
    public void stop() {
        super.stop();
        this.normalHandler.close();
        this.criticalHandler.close();
    }

    protected boolean log(SerializedEvent event, List<String> ids) {
        if (Filter(event)) {
            return false;
        }
        boolean isSenderBusy = EventQueueWriter.getRunningThreadCount() >= SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXREALTIMETHREADS);
        if (event.getLatency() == EventEnums.Latency.LatencyRealtime && !this.isPaused && !isSenderBusy) {
            boolean result = startEventQueueWriter(new EventQueueWriter(this.endpoint, event, ids, this.clientTelemetry, this.cllEvents, this.logger, this.executor, this, this.ticketCallback));
            if (result) {
                return true;
            }
        }
        boolean isSenderBusy2 = addToStorage(event, ids);
        return isSenderBusy2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected boolean addToStorage(SerializedEvent event, List<String> ids) {
        switch (event.getPersistence()) {
            case PersistenceNormal:
                try {
                    this.normalHandler.add(event.getSerializedData(), ids);
                    return true;
                } catch (FileStorage.FileFullException e) {
                    this.logger.warn("AndroidCll-EventHandler", "No space on disk to store events");
                    return false;
                } catch (IOException e2) {
                    this.logger.error("AndroidCll-EventHandler", "Could not add event to normal storage");
                    return false;
                }
            case PersistenceCritical:
                try {
                    this.criticalHandler.add(event.getSerializedData(), ids);
                    return true;
                } catch (FileStorage.FileFullException e3) {
                    this.logger.warn("AndroidCll-EventHandler", "No space on disk to store events");
                    return false;
                } catch (IOException e4) {
                    this.logger.error("AndroidCll-EventHandler", "Could not add event to normal storage");
                    return false;
                }
            default:
                this.logger.error("AndroidCll-EventHandler", "Unknown persistence");
                if (!$assertionsDisabled) {
                    throw new AssertionError();
                }
                this.normalHandler.add(event.getSerializedData(), ids);
                return true;
        }
    }

    private boolean Filter(SerializedEvent event) {
        if (event.getSerializedData().length() > SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES)) {
            this.logger.info("AndroidCll-EventHandler", "Event is too large");
            return true;
        }
        if (!IsUploadEnabled() || !IsInSample(event)) {
            this.logger.info("AndroidCll-EventHandler", "Filtered event");
            return true;
        }
        return false;
    }

    private boolean IsInSample(SerializedEvent event) {
        if (this.sampleId < -1.0E-5d) {
            this.sampleId = EventEnums.SampleRate_0_percent;
            String deviceId = event.getDeviceId();
            if (deviceId != null && deviceId.length() > 7) {
                try {
                    String lastDigits = deviceId.substring(deviceId.length() - 7);
                    this.sampleId = (Long.parseLong(lastDigits, 16) % 10000) / 100.0d;
                } catch (NumberFormatException e) {
                }
            }
            this.logger.info("AndroidCll-EventHandler", "Sample Id is " + String.valueOf(this.sampleId) + " based on deviceId of " + deviceId);
        }
        return this.sampleId < event.getSampleRate() + 1.0E-5d;
    }

    private boolean IsUploadEnabled() {
        return SettingsStore.getCllSettingsAsBoolean(SettingsStore.Settings.UPLOADENABLED);
    }

    protected boolean send() {
        return send(null);
    }

    protected boolean send(EventEnums.Persistence persistence) {
        if (this.isPaused) {
            return false;
        }
        List<IStorage> storages = null;
        if (persistence == null) {
            this.logger.info("AndroidCll-EventHandler", "Draining All events");
            storages = this.normalHandler.getFilesForDraining();
            storages.addAll(this.criticalHandler.getFilesForDraining());
        } else {
            switch (persistence) {
                case PersistenceNormal:
                    this.logger.info("AndroidCll-EventHandler", "Draining normal events");
                    storages = this.normalHandler.getFilesForDraining();
                    break;
                case PersistenceCritical:
                    this.logger.info("AndroidCll-EventHandler", "Draining Critical events");
                    storages = this.criticalHandler.getFilesForDraining();
                    break;
                default:
                    this.logger.error("AndroidCll-EventHandler", "Unknown persistence");
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    break;
            }
        }
        if (storages != null && storages.size() != 0) {
            return startEventQueueWriter(new EventQueueWriter(this.endpoint, storages, this.clientTelemetry, this.cllEvents, this.logger, this.executor, this.ticketCallback));
        }
        return true;
    }

    protected void setEndpointUrl(String endpointUrl) {
        try {
            this.endpoint = new URL(endpointUrl);
        } catch (MalformedURLException e) {
            this.logger.error("AndroidCll-EventHandler", "Bad Endpoint URL Form");
        }
    }

    void setSender(EventSender sender) {
        this.sender = sender;
    }

    void synchronize() {
        ((NormalEventHandler) this.normalHandler).writeQueueToDisk();
    }

    void setXuidCallback(ITicketCallback callback) {
        this.ticketCallback = callback;
    }

    private boolean startEventQueueWriter(Runnable r) {
        if (this.endpoint == null) {
            this.logger.warn("AndroidCll-EventHandler", "No endpoint set");
            return false;
        }
        EventQueueWriter eqw = (EventQueueWriter) r;
        if (this.sender != null) {
            eqw.setSender(this.sender);
        }
        try {
            this.executor.execute(r);
        } catch (NullPointerException e) {
            this.logger.error("AndroidCll-EventHandler", "Executor is null. Is the cll paused or stopped?");
        } catch (RejectedExecutionException e2) {
            this.logger.warn("AndroidCll-EventHandler", "Could not start new thread for EventQueueWriter");
            return false;
        }
        return true;
    }
}
