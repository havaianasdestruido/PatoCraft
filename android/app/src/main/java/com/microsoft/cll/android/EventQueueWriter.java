package com.microsoft.cll.android;

import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventQueueWriter implements Runnable {
    protected static ScheduledFuture future;
    private final String TAG;
    private final EventBatcher batcher;
    private final ClientTelemetry clientTelemetry;
    private final List<ICllEvents> cllEvents;
    private EventCompressor compressor;
    private URL endpoint;
    private final SerializedEvent event;
    private final ScheduledExecutorService executorService;
    private EventHandler handler;
    private final List<String> ids;
    private final ILogger logger;
    private final Random random;
    private List<IStorage> removedStorages;
    private EventSender sender;
    private final List<IStorage> storages;
    private final ITicketCallback ticketCallback;
    private final TicketManager ticketManager;
    protected static AtomicBoolean running = new AtomicBoolean(false);
    private static int backoffSeconds = 0;
    private static int retryAfterBackoffSeconds = 0;
    private static AtomicInteger s_threadCount = new AtomicInteger(0);

    enum SendResult {
        SUCCESS,
        ERROR
    }

    public EventQueueWriter(URL endpoint, List<IStorage> storages, ClientTelemetry clientTelemetry, List<ICllEvents> cllEvents, ILogger logger, ScheduledExecutorService executorService, ITicketCallback ticketCallback) {
        this.TAG = "AndroidCll-EventQueueWriter";
        this.random = new Random();
        this.cllEvents = cllEvents;
        this.storages = storages;
        this.logger = logger;
        this.ticketCallback = ticketCallback;
        this.batcher = new EventBatcher();
        this.sender = new EventSender(endpoint, clientTelemetry, logger);
        this.compressor = new EventCompressor(logger);
        this.event = null;
        this.ids = null;
        this.executorService = executorService;
        this.clientTelemetry = clientTelemetry;
        this.endpoint = endpoint;
        this.removedStorages = new ArrayList();
        this.ticketManager = new TicketManager(ticketCallback, logger);
    }

    public EventQueueWriter(URL endpoint, SerializedEvent event, List<String> ids, ClientTelemetry clientTelemetry, List<ICllEvents> cllEvents, ILogger logger, ScheduledExecutorService executorService, EventHandler handler, ITicketCallback ticketCallback) {
        this.TAG = "AndroidCll-EventQueueWriter";
        this.random = new Random();
        this.cllEvents = cllEvents;
        this.event = event;
        this.ids = ids;
        this.logger = logger;
        this.ticketCallback = ticketCallback;
        this.sender = new EventSender(endpoint, clientTelemetry, logger);
        this.batcher = null;
        this.storages = null;
        this.executorService = executorService;
        this.clientTelemetry = clientTelemetry;
        this.handler = handler;
        this.endpoint = endpoint;
        this.ticketManager = new TicketManager(ticketCallback, logger);
        clientTelemetry.IncrementEventsQueuedForUpload();
    }

    void setSender(EventSender sender) {
        this.sender = sender;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            s_threadCount.getAndAdd(1);
            this.logger.info("AndroidCll-EventQueueWriter", "Starting upload");
            if (this.storages == null) {
                sendRealTimeEvent(this.event);
            } else if (!running.compareAndSet(false, true)) {
                this.logger.info("AndroidCll-EventQueueWriter", "Skipping send, event sending is already in progress on different thread.");
            } else {
                send();
                running.set(false);
            }
        } finally {
            s_threadCount.getAndAdd(-1);
        }
    }

    protected void sendRealTimeEvent(SerializedEvent singleEvent) {
        String eventString = singleEvent.getSerializedData();
        if (eventString.length() <= SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES)) {
            boolean sendCompleted = false;
            try {
                this.ticketManager.clean();
                this.ticketManager.addTickets(this.ids);
                TicketHeaders ticketHeaders = this.ticketManager.getHeaders(false);
                byte[] eventData = getEventData(eventString);
                int sendErrorCode = sendRequest(eventData, false, ticketHeaders);
                if (sendErrorCode == 401) {
                    TicketHeaders ticketHeaders2 = this.ticketManager.getHeaders(true);
                    sendErrorCode = sendRequest(eventData, false, ticketHeaders2);
                }
                if (sendErrorCode == 200 || sendErrorCode == 400) {
                    sendCompleted = true;
                }
            } catch (IOException e) {
                this.logger.error("AndroidCll-EventQueueWriter", "Cannot send event");
            }
            if (sendCompleted) {
                cancelBackoff();
                for (ICllEvents event : this.cllEvents) {
                    event.sendComplete();
                }
                return;
            }
            this.handler.addToStorage(singleEvent, this.ids);
        }
    }

    protected void send() {
        SendResult sendResult = sendInternal();
        if (sendResult == SendResult.SUCCESS) {
            cancelBackoff();
            return;
        }
        int interval = generateBackoffInterval();
        this.storages.removeAll(this.removedStorages);
        EventQueueWriter eventQueueWriter = new EventQueueWriter(this.endpoint, this.storages, this.clientTelemetry, this.cllEvents, this.logger, this.executorService, this.ticketCallback);
        eventQueueWriter.setSender(this.sender);
        future = this.executorService.schedule(eventQueueWriter, interval, TimeUnit.SECONDS);
    }

    private SendResult sendInternal() {
        for (IStorage storage : this.storages) {
            if (this.executorService.isShutdown()) {
                return SendResult.SUCCESS;
            }
            this.ticketManager.clean();
            for (Tuple<String, List<String>> event : storage.drain()) {
                this.ticketManager.addTickets(event.b);
                this.clientTelemetry.IncrementEventsQueuedForUpload();
                if (event.a.length() > SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES)) {
                    this.logger.warn("AndroidCll-EventQueueWriter", "Dropping event because it is too large.");
                    for (ICllEvents cllEvent : this.cllEvents) {
                        cllEvent.eventDropped(event.a);
                    }
                } else if (this.batcher.tryAddingEventToBatch(event.a)) {
                    continue;
                } else {
                    this.logger.info("AndroidCll-EventQueueWriter", "Got a full batch, preparing to send");
                    String batchedEvents = this.batcher.getBatchedEvents();
                    if (!this.batcher.tryAddingEventToBatch(event.a)) {
                        this.logger.error("AndroidCll-EventQueueWriter", "Could not add events to an empty batch");
                    }
                    SendResult sendResult = sendBatch(batchedEvents, storage);
                    if (sendResult == SendResult.ERROR) {
                        storage.close();
                        return sendResult;
                    }
                }
            }
            this.logger.info("AndroidCll-EventQueueWriter", "Preparing to send");
            String batchedEvents2 = this.batcher.getBatchedEvents();
            SendResult sendResult2 = sendBatch(batchedEvents2, storage);
            storage.close();
            if (sendResult2 != SendResult.ERROR) {
                storage.discard();
            } else {
                return sendResult2;
            }
        }
        this.logger.info("AndroidCll-EventQueueWriter", "Sent " + this.clientTelemetry.snapshot.getEventsQueued() + " events.");
        Iterator<ICllEvents> it = this.cllEvents.iterator();
        while (it.hasNext()) {
            it.next().sendComplete();
        }
        return SendResult.SUCCESS;
    }

    private void cancelBackoff() {
        future = null;
        backoffSeconds = 0;
    }

    private SendResult sendBatch(String batchedEvents, IStorage storage) {
        this.logger.info("AndroidCll-EventQueueWriter", "Sending Batch of events");
        if (batchedEvents.equals("")) {
            this.removedStorages.add(storage);
            return SendResult.SUCCESS;
        }
        this.logger.info("AndroidCll-EventQueueWriter", "Compressing events");
        boolean isCompressed = true;
        byte[] eventsData = this.compressor.compress(batchedEvents);
        if (eventsData == null) {
            eventsData = getEventData(batchedEvents);
            isCompressed = false;
        }
        TicketHeaders ticketHeaders = this.ticketManager.getHeaders(false);
        boolean sendCompleted = false;
        try {
            int sendErrorCode = sendRequest(eventsData, isCompressed, ticketHeaders);
            if (sendErrorCode == 401) {
                this.logger.info("AndroidCll-EventQueueWriter", "We got a 401 while sending the events, refreshing the tokens and trying again");
                TicketHeaders ticketHeaders2 = this.ticketManager.getHeaders(true);
                sendErrorCode = sendRequest(eventsData, isCompressed, ticketHeaders2);
                if (sendErrorCode == 401) {
                    this.logger.info("AndroidCll-EventQueueWriter", "After refreshing the tokens we still got a 401. Most likely we couldn't get new tokens so we will keep these events on disk and try to get new tokens later");
                }
            }
            if (sendErrorCode == 200 || sendErrorCode == 400) {
                sendCompleted = true;
            }
        } catch (IOException e) {
            this.logger.error("AndroidCll-EventQueueWriter", "Cannot send event: " + e.getMessage());
        }
        if (sendCompleted) {
            return SendResult.SUCCESS;
        }
        return SendResult.ERROR;
    }

    private int sendRequest(byte[] body, boolean isCompressed, TicketHeaders ticketHeaders) throws IOException {
        if (!preValidateTickets(ticketHeaders)) {
            return 401;
        }
        EventSendResult sendResult = this.sender.sendEvent(body, isCompressed, ticketHeaders);
        if (sendResult.retryAfterSeconds > 0) {
            retryAfterBackoffSeconds = sendResult.retryAfterSeconds;
        }
        return sendResult.responseCode;
    }

    private boolean preValidateTickets(TicketHeaders ticketHeaders) {
        if (ticketHeaders != null && ticketHeaders.xtokens != null && !ticketHeaders.xtokens.isEmpty()) {
            for (Map.Entry<String, String> ticket : ticketHeaders.xtokens.entrySet()) {
                if (ticket.getValue().length() <= 3) {
                    return false;
                }
            }
            if (ticketHeaders.authXToken == null || ticketHeaders.authXToken.isEmpty()) {
                return false;
            }
            if (ticketHeaders.msaDeviceTicket != null && ticketHeaders.msaDeviceTicket.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    int generateBackoffInterval() {
        if (retryAfterBackoffSeconds > 0) {
            this.logger.info("AndroidCll-EventQueueWriter", "Using backoff interval from Retry-After header.");
            int interval = retryAfterBackoffSeconds;
            retryAfterBackoffSeconds = 0;
            return interval;
        }
        int startInterval = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.CONSTANTFORRETRYPERIOD);
        int maxInterval = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXRETRYPERIOD);
        int exponentBase = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.BASERETRYPERIOD);
        if (backoffSeconds == 0) {
            backoffSeconds = Math.max(0, startInterval);
        }
        if (this.logger.getVerbosity() == Verbosity.INFO) {
            this.logger.info("AndroidCll-EventQueueWriter", "Generating new backoff interval using \"Random.nextInt(" + (backoffSeconds + 1) + ") seconds\" formula.");
        }
        int interval2 = this.random.nextInt(backoffSeconds + 1);
        backoffSeconds = Math.min(backoffSeconds * exponentBase, maxInterval);
        if (this.logger.getVerbosity() == Verbosity.INFO) {
            this.logger.info("AndroidCll-EventQueueWriter", "The generated backoff interval is " + interval2 + ".");
            return interval2;
        }
        return interval2;
    }

    private byte[] getEventData(String body) {
        return body.getBytes(Charset.forName(HttpURLConnectionBuilder.DEFAULT_CHARSET));
    }

    public static int getRunningThreadCount() {
        return s_threadCount.get();
    }
}
