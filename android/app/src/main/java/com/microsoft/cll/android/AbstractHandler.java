package com.microsoft.cll.android;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractHandler {
    protected static final String criticalEventFileExtension = ".crit.cllevent";
    protected static final String normalEventFileExtension = ".norm.cllevent";
    protected static AtomicLong totalStorageUsed = new AtomicLong(0);
    private final String TAG = "AndroidCll-AbstractHandler";
    protected final ClientTelemetry clientTelemetry;
    protected String filePath;
    protected FileStorage fileStorage;
    protected final ILogger logger;

    public abstract void add(String str, List<String> list) throws FileStorage.FileFullException, IOException;

    public abstract void close();

    public abstract void dispose(IStorage iStorage);

    public abstract List<IStorage> getFilesForDraining();

    public AbstractHandler(ILogger logger, String filePath, ClientTelemetry clientTelemetry) {
        this.filePath = filePath;
        this.logger = logger;
        this.clientTelemetry = clientTelemetry;
        setFileStorageUsed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean canAdd(Tuple serializedEvent) {
        return ((long) ((String) serializedEvent.a).length()) + totalStorageUsed.get() <= ((long) SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXFILESSPACE));
    }

    protected List<IStorage> getFilesByExtensionForDraining(String fileExtension) {
        List<IStorage> fullFiles = new ArrayList<>();
        for (File file : findExistingFiles(fileExtension)) {
            try {
                IStorage storage = new FileStorage(this.logger, file.getAbsolutePath(), this);
                fullFiles.add(storage);
                storage.close();
            } catch (Exception e) {
                this.logger.info("AndroidCll-AbstractHandler", "File " + file.getName() + " is in use still");
            }
        }
        return fullFiles;
    }

    protected File[] findExistingFiles(final String fileExtension) {
        FilenameFilter filter = new FilenameFilter() { // from class: com.microsoft.cll.android.AbstractHandler.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String name) {
                String lowercaseName = name.toLowerCase();
                return lowercaseName.endsWith(fileExtension);
            }
        };
        File[] files = new File(this.filePath).listFiles(filter);
        if (files == null) {
            return new File[0];
        }
        return files;
    }

    private void setFileStorageUsed() {
        totalStorageUsed.set(0L);
        for (File file : findExistingFiles(criticalEventFileExtension)) {
            totalStorageUsed.getAndAdd(file.length());
        }
        for (File file2 : findExistingFiles(normalEventFileExtension)) {
            totalStorageUsed.getAndAdd(file2.length());
        }
    }

    protected boolean ensureCanAdd(Tuple<String, List<String>> tuple, EventEnums.Persistence persistence) {
        int maxAttempts = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXCRITICALCANADDATTEMPTS);
        boolean considerCritical = persistence == EventEnums.Persistence.PersistenceCritical;
        boolean dropFileResult = true;
        boolean canAddResult = canAdd(tuple);
        for (int attempts = 0; !canAddResult && attempts < maxAttempts && dropFileResult; attempts++) {
            this.logger.warn("AndroidCll-AbstractHandler", "Out of storage space. Attempting to drop one oldest file.");
            dropFileResult = dropOldestFile(considerCritical);
            canAddResult = canAdd(tuple);
        }
        return canAddResult;
    }

    protected boolean dropOldestFile(boolean z) {
        boolean zDeleteFile = false;
        File[] fileArrFindExistingFiles = findExistingFiles(normalEventFileExtension);
        if (fileArrFindExistingFiles.length <= 1 && z) {
            fileArrFindExistingFiles = findExistingFiles(criticalEventFileExtension);
        }
        if (fileArrFindExistingFiles.length <= 1) {
            this.logger.info("AndroidCll-AbstractHandler", "There are no files to delete");
        } else {
            long jLastModified = fileArrFindExistingFiles[0].lastModified();
            File file = fileArrFindExistingFiles[0];
            for (File file2 : fileArrFindExistingFiles) {
                if (file2.lastModified() < jLastModified) {
                    jLastModified = file2.lastModified();
                    file = file2;
                }
            }
            long length = file.length();
            zDeleteFile = deleteFile(file);
            if (zDeleteFile) {
                totalStorageUsed.getAndAdd(-length);
            }
        }
        return zDeleteFile;
    }

    private boolean deleteFile(File file) {
        try {
            boolean result = file.delete();
            return result;
        } catch (Exception e) {
            this.logger.info("AndroidCll-AbstractHandler", "Exception while deleting the file: " + e.toString());
            return false;
        }
    }
}
