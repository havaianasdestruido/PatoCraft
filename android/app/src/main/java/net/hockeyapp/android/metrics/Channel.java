package net.hockeyapp.android.metrics;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import net.hockeyapp.android.metrics.model.Base;
import net.hockeyapp.android.metrics.model.Data;
import net.hockeyapp.android.metrics.model.Domain;
import net.hockeyapp.android.metrics.model.Envelope;
import net.hockeyapp.android.metrics.model.TelemetryData;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.Util;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Channel {
    private static final String TAG = "HockeyApp-Metrics";
    private final Persistence mPersistence;
    private SynchronizeChannelTask mSynchronizeTask;
    protected final TelemetryContext mTelemetryContext;
    private static final Object LOCK = new Object();
    protected static int mMaxBatchCount = 50;
    protected static int mMaxBatchInterval = 15000;
    protected final List<String> mQueue = new LinkedList();
    private final Timer mTimer = new Timer("HockeyApp User Metrics Sender Queue", true);

    public Channel(TelemetryContext telemetryContext, Persistence persistence) {
        this.mTelemetryContext = telemetryContext;
        this.mPersistence = persistence;
    }

    protected void enqueue(String serializedItem) {
        if (serializedItem != null) {
            synchronized (LOCK) {
                if (this.mQueue.add(serializedItem)) {
                    if (this.mQueue.size() >= mMaxBatchCount) {
                        synchronize();
                    } else if (this.mQueue.size() == 1) {
                        scheduleSynchronizeTask();
                    }
                } else {
                    HockeyLog.verbose(TAG, "Unable to add item to queue");
                }
            }
        }
    }

    protected void synchronize() {
        if (this.mSynchronizeTask != null) {
            this.mSynchronizeTask.cancel();
        }
        if (!this.mQueue.isEmpty()) {
            String[] data = new String[this.mQueue.size()];
            this.mQueue.toArray(data);
            this.mQueue.clear();
            if (this.mPersistence != null) {
                this.mPersistence.persist(data);
            }
        }
    }

    protected Envelope createEnvelope(Data<Domain> data) {
        Envelope envelope = new Envelope();
        envelope.setData(data);
        Domain baseData = data.getBaseData();
        if (baseData instanceof TelemetryData) {
            String envelopeName = ((TelemetryData) baseData).getEnvelopeName();
            envelope.setName(envelopeName);
        }
        this.mTelemetryContext.updateScreenResolution();
        envelope.setTime(Util.dateToISO8601(new Date()));
        envelope.setIKey(this.mTelemetryContext.getInstrumentationKey());
        Map<String, String> tags = this.mTelemetryContext.getContextTags();
        if (tags != null) {
            envelope.setTags(tags);
        }
        return envelope;
    }

    protected void scheduleSynchronizeTask() {
        this.mSynchronizeTask = new SynchronizeChannelTask();
        this.mTimer.schedule(this.mSynchronizeTask, mMaxBatchInterval);
    }

    public void enqueueData(Base data) {
        if (data instanceof Data) {
            Envelope envelope = null;
            try {
                envelope = createEnvelope((Data) data);
            } catch (ClassCastException e) {
                HockeyLog.debug(TAG, "Telemetry not enqueued, could not create envelope, must be of type ITelemetry");
            }
            if (envelope != null) {
                String serializedEnvelope = serializeEnvelope(envelope);
                enqueue(serializedEnvelope);
                HockeyLog.debug(TAG, "enqueued telemetry: " + envelope.getName());
                return;
            }
            return;
        }
        HockeyLog.debug(TAG, "Telemetry not enqueued, must be of type ITelemetry");
    }

    protected String serializeEnvelope(Envelope envelope) {
        String string = null;
        try {
            if (envelope != null) {
                StringWriter stringWriter = new StringWriter();
                envelope.serialize(stringWriter);
                string = stringWriter.toString();
            } else {
                HockeyLog.debug(TAG, "Envelope wasn't empty but failed to serialize anything, returning null");
            }
        } catch (IOException e) {
            HockeyLog.debug(TAG, "Failed to save data with exception: " + e.toString());
        }
        return string;
    }

    private class SynchronizeChannelTask extends TimerTask {
        public SynchronizeChannelTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Channel.this.synchronize();
        }
    }
}
