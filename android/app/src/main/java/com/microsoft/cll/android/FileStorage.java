package com.microsoft.cll.android;

import com.microsoft.telemetry.IJsonSerializable;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FileStorage implements IStorage {
    protected static final SynchronizedArrayList<String> fileLockList = new SynchronizedArrayList<>();
    private final String TAG;
    private int eventsWritten;
    private String filePathAndName;
    private long fileSize;
    private FileReader inputFile;
    private boolean isOpen;
    private boolean isWritable;
    private final ILogger logger;
    private FileWriter outputFile;
    private AbstractHandler parent;
    private BufferedReader reader;
    private final EventSerializer serializer;

    public FileStorage(String fileExtension, ILogger logger, String filePath, AbstractHandler parent) {
        this.TAG = "AndroidCll-FileStorage";
        this.eventsWritten = 0;
        this.fileSize = 0L;
        this.filePathAndName = filePath + File.separator + UUID.randomUUID() + fileExtension;
        this.logger = logger;
        this.serializer = new EventSerializer(logger);
        this.parent = parent;
        int tries = 1;
        while (!openFile()) {
            this.filePathAndName = filePath + "/" + UUID.randomUUID() + fileExtension;
            tries++;
            if (tries >= 5) {
                logger.error("AndroidCll-FileStorage", "Could not create a file");
                return;
            }
        }
    }

    public FileStorage(ILogger logger, String filePathAndName, AbstractHandler parent) throws Exception {
        this.TAG = "AndroidCll-FileStorage";
        this.logger = logger;
        this.serializer = new EventSerializer(logger);
        this.filePathAndName = filePathAndName;
        this.parent = parent;
        if (fileLockList.contains(filePathAndName)) {
            throw new Exception("Could not get lock for file");
        }
    }

    @Override // com.microsoft.cll.android.IStorage
    public void add(IJsonSerializable event) throws FileFullException, IOException {
        String serializedEvent = this.serializer.serialize(event);
        add(new Tuple<>(serializedEvent, null));
    }

    @Override // com.microsoft.cll.android.IStorage
    public void add(Tuple<String, List<String>> serializedEvent) throws FileFullException, IOException {
        if (!this.isOpen || !this.isWritable) {
            this.logger.warn("AndroidCll-FileStorage", "This file is not open or not writable");
            return;
        }
        if (!canAdd(serializedEvent)) {
            throw new FileFullException("The file is already full!");
        }
        if (serializedEvent.b != null) {
            for (String id : serializedEvent.b) {
                this.outputFile.write("x:" + id + CharsetUtil.CRLF);
            }
        }
        this.outputFile.write(serializedEvent.a);
        this.eventsWritten++;
        this.fileSize += (long) serializedEvent.a.length();
    }

    @Override // com.microsoft.cll.android.IStorage
    public boolean canAdd(IJsonSerializable event) {
        String serializedEvent = this.serializer.serialize(event);
        return canAdd(new Tuple<>(serializedEvent, null));
    }

    @Override // com.microsoft.cll.android.IStorage
    public boolean canAdd(Tuple<String, List<String>> event) {
        if (!this.isOpen || !this.isWritable) {
            this.logger.warn("AndroidCll-FileStorage", "This file is not open or not writable");
            return false;
        }
        int serializedSize = event.a.length();
        return this.eventsWritten < SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSPERPOST) && ((long) serializedSize) + this.fileSize < ((long) SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028 A[Catch: Exception -> 0x005d, TryCatch #1 {Exception -> 0x005d, blocks: (B:9:0x001b, B:11:0x0028, B:13:0x0030, B:14:0x0038, B:15:0x003f, B:17:0x0045, B:18:0x0053), top: B:25:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0030 A[Catch: Exception -> 0x005d, TryCatch #1 {Exception -> 0x005d, blocks: (B:9:0x001b, B:11:0x0028, B:13:0x0030, B:14:0x0038, B:15:0x003f, B:17:0x0045, B:18:0x0053), top: B:25:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:15:0x003f A[Catch: Exception -> 0x005d, TryCatch #1 {Exception -> 0x005d, blocks: (B:9:0x001b, B:11:0x0028, B:13:0x0030, B:14:0x0038, B:15:0x003f, B:17:0x0045, B:18:0x0053), top: B:25:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:17:0x0045 A[Catch: Exception -> 0x005d, TryCatch #1 {Exception -> 0x005d, blocks: (B:9:0x001b, B:11:0x0028, B:13:0x0030, B:14:0x0038, B:15:0x003f, B:17:0x0045, B:18:0x0053), top: B:25:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0053 A[Catch: Exception -> 0x005d, TRY_LEAVE, TryCatch #1 {Exception -> 0x005d, blocks: (B:9:0x001b, B:11:0x0028, B:13:0x0030, B:14:0x0038, B:15:0x003f, B:17:0x0045, B:18:0x0053), top: B:25:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:25:0x001b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.microsoft.cll.android.IStorage
    public List<Tuple<String, List<String>>> drain() {
        String input;
        List ids;
        List<Tuple<String, List<String>>> drainedQueue = new ArrayList<>();
        if (!this.isOpen) {
            try {
                if (openFile()) {
                    try {
                        input = this.reader.readLine();
                        ids = new ArrayList();
                        while (input != null) {
                            if (input.startsWith("x:")) {
                                ids.add(input.substring(2));
                            } else if (ids.size() > 0) {
                                drainedQueue.add(new Tuple<>(input, ids));
                                ids = new ArrayList();
                            } else {
                                drainedQueue.add(new Tuple<>(input, null));
                            }
                            input = this.reader.readLine();
                        }
                    } catch (Exception e) {
                        this.logger.error("AndroidCll-FileStorage", "Error reading from input file");
                    }
                    this.logger.info("AndroidCll-FileStorage", "Read " + drainedQueue.size() + " events from file");
                }
            } catch (Exception e2) {
                this.logger.error("AndroidCll-FileStorage", "Error opening file");
            }
        } else {
            input = this.reader.readLine();
            ids = new ArrayList();
            while (input != null) {
                if (input.startsWith("x:")) {
                    ids.add(input.substring(2));
                } else if (ids.size() > 0) {
                    drainedQueue.add(new Tuple<>(input, ids));
                    ids = new ArrayList();
                } else {
                    drainedQueue.add(new Tuple<>(input, null));
                }
                input = this.reader.readLine();
            }
            this.logger.info("AndroidCll-FileStorage", "Read " + drainedQueue.size() + " events from file");
        }
        return drainedQueue;
    }

    @Override // com.microsoft.cll.android.IStorage
    public long size() {
        if (this.isOpen) {
            return this.fileSize;
        }
        File f = new File(this.filePathAndName);
        return f.length();
    }

    @Override // com.microsoft.cll.android.IStorage
    public void discard() {
        this.logger.info("AndroidCll-FileStorage", "Discarding file");
        close();
        this.parent.dispose(this);
        File f = new File(this.filePathAndName);
        f.delete();
    }

    public void flush() {
        if (this.isOpen && this.isWritable) {
            try {
                this.outputFile.flush();
            } catch (Exception e) {
                this.logger.error("AndroidCll-FileStorage", "Could not flush file");
            }
        }
    }

    @Override // com.microsoft.cll.android.IStorage
    public void close() {
        if (this.isOpen) {
            flush();
            fileLockList.remove(this.filePathAndName);
            try {
                if (this.isWritable) {
                    this.outputFile.close();
                } else {
                    this.inputFile.close();
                    this.reader.close();
                }
                this.isOpen = false;
            } catch (Exception e) {
                this.logger.error("AndroidCll-FileStorage", "Error when closing file");
            }
        }
    }

    private boolean openFile() {
        boolean lockResult = getLock();
        if (!lockResult) {
            this.logger.info("AndroidCll-FileStorage", "Could not get lock for file");
            return false;
        }
        File f = new File(this.filePathAndName);
        boolean doesFileExist = f.exists();
        if (doesFileExist) {
            this.isWritable = false;
            try {
                this.inputFile = new FileReader(this.filePathAndName);
                this.reader = new BufferedReader(this.inputFile);
                this.fileSize = f.length();
            } catch (IOException e) {
                this.logger.error("AndroidCll-FileStorage", "Event file was not found");
                return false;
            }
        } else {
            this.isWritable = true;
            this.logger.info("AndroidCll-FileStorage", "Creating new file");
            try {
                this.outputFile = new FileWriter(this.filePathAndName);
            } catch (IOException e2) {
                this.logger.error("AndroidCll-FileStorage", "Error opening file");
                return false;
            }
        }
        this.isOpen = true;
        return true;
    }

    private boolean getLock() {
        return fileLockList.add(this.filePathAndName);
    }

    class FileFullException extends Exception {
        public FileFullException(String message) {
            super(message);
        }
    }
}
