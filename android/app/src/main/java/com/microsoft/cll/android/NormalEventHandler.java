package com.microsoft.cll.android;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NormalEventHandler extends AbstractHandler {
    private final String TAG;
    private final int queueSize;
    private ArrayBlockingQueue<Tuple<String, List<String>>> queueStorage;

    public NormalEventHandler(ILogger logger, String filePath, ClientTelemetry clientTelemetry) {
        super(logger, filePath, clientTelemetry);
        this.TAG = "AndroidCll-NormalEventHandler";
        this.queueSize = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.NORMALEVENTMEMORYQUEUESIZE);
        this.fileStorage = new FileStorage(".norm.cllevent", logger, filePath, this);
        this.queueStorage = new ArrayBlockingQueue<>(this.queueSize);
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public synchronized void add(String event, List<String> ids) {
        Tuple<String, List<String>> tuple = new Tuple<>(event, ids);
        if (!this.queueStorage.offer(tuple)) {
            writeQueueToDisk();
            this.queueStorage.offer(tuple);
        }
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public void close() {
        this.logger.info("AndroidCll-NormalEventHandler", "Closing normal file");
        writeQueueToDisk();
        this.fileStorage.close();
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public void dispose(IStorage storage) {
        totalStorageUsed.getAndAdd((-1) * storage.size());
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public synchronized List<IStorage> getFilesForDraining() {
        List<IStorage> storageList;
        if (this.queueStorage.size() > 0) {
            writeQueueToDisk();
        }
        if (this.fileStorage.size() > 0) {
            this.fileStorage.close();
            storageList = getFilesByExtensionForDraining(".norm.cllevent");
            this.fileStorage = new FileStorage(".norm.cllevent", this.logger, this.filePath, this);
        } else {
            storageList = getFilesByExtensionForDraining(".norm.cllevent");
        }
        return storageList;
    }

    synchronized void writeQueueToDisk() {
        try {
            List<Tuple<String, List<String>>> events = new ArrayList<>(this.queueSize);
            this.queueStorage.drainTo(events);
            this.logger.info("AndroidCll-NormalEventHandler", "Writing " + events.size() + " events to disk");
            for (Tuple<String, List<String>> tuple : events) {
                boolean canAddResult = ensureCanAdd(tuple, EventEnums.Persistence.PersistenceNormal);
                if (!canAddResult) {
                    this.clientTelemetry.IncrementEventsDroppedDueToQuota();
                    this.logger.warn("AndroidCll-NormalEventHandler", "Out of storage space for normal events. Logged event was dropped.");
                } else {
                    if (!this.fileStorage.canAdd(tuple)) {
                        this.logger.info("AndroidCll-NormalEventHandler", "Closing full file and opening a new one");
                        this.fileStorage.close();
                        this.fileStorage = new FileStorage(".norm.cllevent", this.logger, this.filePath, this);
                    }
                    this.fileStorage.add(tuple);
                    totalStorageUsed.getAndAdd(tuple.a.length());
                }
            }
        } catch (Exception e) {
            this.logger.error("AndroidCll-NormalEventHandler", "Could not write events to disk");
        }
        this.fileStorage.flush();
    }
}
