package com.microsoft.cll.android;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CriticalEventHandler extends AbstractHandler {
    private final String TAG;

    public CriticalEventHandler(ILogger logger, String filePath, ClientTelemetry clientTelemetry) {
        super(logger, filePath, clientTelemetry);
        this.TAG = "AndroidCll-CriticalEventHandler";
        this.fileStorage = new FileStorage(".crit.cllevent", logger, filePath, this);
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public synchronized void add(String event, List<String> ids) throws FileStorage.FileFullException, IOException {
        Tuple<String, List<String>> tuple = new Tuple<>(event, ids);
        boolean canAddResult = ensureCanAdd(tuple, EventEnums.Persistence.PersistenceCritical);
        if (!canAddResult) {
            this.clientTelemetry.IncrementEventsDroppedDueToQuota();
            this.logger.warn("AndroidCll-CriticalEventHandler", "Out of storage space for critical events. Logged event was dropped.");
        }
        if (!this.fileStorage.canAdd(tuple)) {
            this.logger.info("AndroidCll-CriticalEventHandler", "Closing full file and opening a new one");
            this.fileStorage.close();
            this.fileStorage = new FileStorage(".crit.cllevent", this.logger, this.filePath, this);
        }
        this.fileStorage.add(tuple);
        totalStorageUsed.getAndAdd(event.length());
        this.fileStorage.flush();
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public synchronized List<IStorage> getFilesForDraining() {
        List<IStorage> storageList;
        if (this.fileStorage.size() > 0) {
            this.fileStorage.close();
            storageList = getFilesByExtensionForDraining(".crit.cllevent");
            this.fileStorage = new FileStorage(".crit.cllevent", this.logger, this.filePath, this);
        } else {
            storageList = getFilesByExtensionForDraining(".crit.cllevent");
        }
        return storageList;
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public void close() {
        this.logger.info("AndroidCll-CriticalEventHandler", "Closing critical file");
        this.fileStorage.close();
    }

    @Override // com.microsoft.cll.android.AbstractHandler
    public void dispose(IStorage storage) {
        totalStorageUsed.getAndAdd((-1) * storage.size());
    }
}
