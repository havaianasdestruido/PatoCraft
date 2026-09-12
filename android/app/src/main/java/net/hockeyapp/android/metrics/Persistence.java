package net.hockeyapp.android.metrics;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import net.hockeyapp.android.utils.HockeyLog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Persistence {
    private static final String BIT_TELEMETRY_DIRECTORY = "/net.hockeyapp.android/telemetry/";
    private static final Object LOCK = new Object();
    private static final Integer MAX_FILE_COUNT = 50;
    private static final String TAG = "HA-MetricsPersistence";
    protected ArrayList<File> mServedFiles;
    protected final File mTelemetryDirectory;
    private final WeakReference<Context> mWeakContext;
    protected WeakReference<Sender> mWeakSender;

    protected Persistence(Context context, File telemetryDirectory, Sender sender) {
        this.mWeakContext = new WeakReference<>(context);
        this.mServedFiles = new ArrayList<>(51);
        this.mTelemetryDirectory = telemetryDirectory;
        this.mWeakSender = new WeakReference<>(sender);
        createDirectoriesIfNecessary();
    }

    protected Persistence(Context context, Sender sender) {
        this(context, new File(context.getFilesDir().getAbsolutePath() + BIT_TELEMETRY_DIRECTORY), null);
        setSender(sender);
    }

    protected void persist(String[] data) throws Throwable {
        if (!isFreeSpaceAvailable()) {
            HockeyLog.warn(TAG, "Failed to persist file: Too many files on disk.");
            getSender().triggerSending();
            return;
        }
        StringBuilder buffer = new StringBuilder();
        for (String aData : data) {
            if (buffer.length() > 0) {
                buffer.append('\n');
            }
            buffer.append(aData);
        }
        String serializedData = buffer.toString();
        boolean isSuccess = writeToDisk(serializedData);
        if (isSuccess) {
            getSender().triggerSending();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0069 */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x006a, code lost:
    
        r6 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean writeToDisk(java.lang.String r11) throws java.lang.Throwable {
        /*
            r10 = this;
            java.util.UUID r6 = java.util.UUID.randomUUID()
            java.lang.String r5 = r6.toString()
            r6 = 0
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r6)
            r3 = 0
            java.lang.Object r7 = net.hockeyapp.android.metrics.Persistence.LOCK     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L9a
            monitor-enter(r7)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L9a
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69
            r6.<init>()     // Catch: java.lang.Throwable -> L69
            java.io.File r8 = r10.mTelemetryDirectory     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r6 = r6.append(r8)     // Catch: java.lang.Throwable -> L69
            java.lang.String r8 = "/"
            java.lang.StringBuilder r6 = r6.append(r8)     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r6 = r6.append(r5)     // Catch: java.lang.Throwable -> L69
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L69
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L69
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L69
            r6 = 1
            r4.<init>(r1, r6)     // Catch: java.lang.Throwable -> L69
            byte[] r6 = r11.getBytes()     // Catch: java.lang.Throwable -> Lac
            r4.write(r6)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r6 = "HA-MetricsPersistence"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lac
            r8.<init>()     // Catch: java.lang.Throwable -> Lac
            java.lang.String r9 = "Saving data to: "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r9 = r1.toString()     // Catch: java.lang.Throwable -> Lac
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> Lac
            net.hockeyapp.android.utils.HockeyLog.warn(r6, r8)     // Catch: java.lang.Throwable -> Lac
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lac
            r6 = 1
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r6)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La9
            if (r4 == 0) goto Laf
            r4.close()     // Catch: java.io.IOException -> L94
            r3 = r4
        L64:
            boolean r6 = r2.booleanValue()
            return r6
        L69:
            r6 = move-exception
        L6a:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L69
            throw r6     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L9a
        L6c:
            r0 = move-exception
        L6d:
            java.lang.String r6 = "HA-MetricsPersistence"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9a
            r7.<init>()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r8 = "Failed to save data with exception: "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r8 = r0.toString()     // Catch: java.lang.Throwable -> L9a
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L9a
            net.hockeyapp.android.utils.HockeyLog.warn(r6, r7)     // Catch: java.lang.Throwable -> L9a
            if (r3 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L8f
            goto L64
        L8f:
            r0 = move-exception
            r0.printStackTrace()
            goto L64
        L94:
            r0 = move-exception
            r0.printStackTrace()
            r3 = r4
            goto L64
        L9a:
            r6 = move-exception
        L9b:
            if (r3 == 0) goto La0
            r3.close()     // Catch: java.io.IOException -> La1
        La0:
            throw r6
        La1:
            r0 = move-exception
            r0.printStackTrace()
            goto La0
        La6:
            r6 = move-exception
            r3 = r4
            goto L9b
        La9:
            r0 = move-exception
            r3 = r4
            goto L6d
        Lac:
            r6 = move-exception
            r3 = r4
            goto L6a
        Laf:
            r3 = r4
            goto L64
        */
        throw new UnsupportedOperationException("Method not decompiled: net.hockeyapp.android.metrics.Persistence.writeToDisk(java.lang.String):boolean");
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00b9 */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0028, code lost:
    
        r7 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String load(java.io.File r12) {
        /*
            r11 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            if (r12 == 0) goto L4c
            r4 = 0
            java.lang.Object r8 = net.hockeyapp.android.metrics.Persistence.LOCK     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L94
            monitor-enter(r8)     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L94
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Lb9
            r3.<init>(r12)     // Catch: java.lang.Throwable -> Lb9
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lb9
            r6.<init>(r3)     // Catch: java.lang.Throwable -> Lb9
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lb9
            r5.<init>(r6)     // Catch: java.lang.Throwable -> Lb9
        L1a:
            int r1 = r5.read()     // Catch: java.lang.Throwable -> L26
            r7 = -1
            if (r1 == r7) goto L51
            char r7 = (char) r1     // Catch: java.lang.Throwable -> L26
            r0.append(r7)     // Catch: java.lang.Throwable -> L26
            goto L1a
        L26:
            r7 = move-exception
            r4 = r5
        L28:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> Lb9
            throw r7     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L94
        L2a:
            r2 = move-exception
            java.lang.String r7 = "HA-MetricsPersistence"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L94
            r8.<init>()     // Catch: java.lang.Throwable -> L94
            java.lang.String r9 = "Error reading telemetry data from file with exception message "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L94
            java.lang.String r9 = r2.getMessage()     // Catch: java.lang.Throwable -> L94
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L94
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L94
            net.hockeyapp.android.utils.HockeyLog.warn(r7, r8)     // Catch: java.lang.Throwable -> L94
            if (r4 == 0) goto L4c
            r4.close()     // Catch: java.io.IOException -> L76
        L4c:
            java.lang.String r7 = r0.toString()
            return r7
        L51:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L26
            if (r5 == 0) goto L4c
            r5.close()     // Catch: java.io.IOException -> L58
            goto L4c
        L58:
            r2 = move-exception
            java.lang.String r7 = "HA-MetricsPersistence"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Error closing stream."
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r9 = r2.getMessage()
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            net.hockeyapp.android.utils.HockeyLog.warn(r7, r8)
            goto L4c
        L76:
            r2 = move-exception
            java.lang.String r7 = "HA-MetricsPersistence"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Error closing stream."
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r9 = r2.getMessage()
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            net.hockeyapp.android.utils.HockeyLog.warn(r7, r8)
            goto L4c
        L94:
            r7 = move-exception
            if (r4 == 0) goto L9a
            r4.close()     // Catch: java.io.IOException -> L9b
        L9a:
            throw r7
        L9b:
            r2 = move-exception
            java.lang.String r8 = "HA-MetricsPersistence"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "Error closing stream."
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r10 = r2.getMessage()
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r9 = r9.toString()
            net.hockeyapp.android.utils.HockeyLog.warn(r8, r9)
            goto L9a
        Lb9:
            r7 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: net.hockeyapp.android.metrics.Persistence.load(java.io.File):java.lang.String");
    }

    protected boolean hasFilesAvailable() {
        return nextAvailableFileInDirectory() != null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0074 A[Catch: all -> 0x00a1, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:11:0x0013, B:13:0x0018, B:15:0x0022, B:16:0x0049, B:18:0x004b, B:19:0x0070, B:21:0x0074, B:23:0x009f), top: B:28:0x0003 }] */
    protected File nextAvailableFileInDirectory() {
        File file;
        File[] files;
        synchronized (LOCK) {
            if (this.mTelemetryDirectory != null && (files = this.mTelemetryDirectory.listFiles()) != null && files.length > 0) {
                for (int i = 0; i <= files.length - 1; i++) {
                    file = files[i];
                    if (!this.mServedFiles.contains(file)) {
                        HockeyLog.info(TAG, "The directory " + file.toString() + " (ADDING TO SERVED AND RETURN)");
                        this.mServedFiles.add(file);
                    } else {
                        HockeyLog.info(TAG, "The directory " + file.toString() + " (WAS ALREADY SERVED)");
                    }
                }
                if (this.mTelemetryDirectory != null) {
                    HockeyLog.info(TAG, "The directory " + this.mTelemetryDirectory.toString() + " did not contain any unserved files");
                }
                file = null;
            } else {
                if (this.mTelemetryDirectory != null) {
                    HockeyLog.info(TAG, "The directory " + this.mTelemetryDirectory.toString() + " did not contain any unserved files");
                }
                file = null;
            }
        }
        return file;
    }

    protected void deleteFile(File file) {
        if (file != null) {
            synchronized (LOCK) {
                boolean deletedFile = file.delete();
                if (!deletedFile) {
                    HockeyLog.warn(TAG, "Error deleting telemetry file " + file.toString());
                } else {
                    HockeyLog.warn(TAG, "Successfully deleted telemetry file at: " + file.toString());
                    this.mServedFiles.remove(file);
                }
            }
            return;
        }
        HockeyLog.warn(TAG, "Couldn't delete file, the reference to the file was null");
    }

    protected void makeAvailable(File file) {
        synchronized (LOCK) {
            if (file != null) {
                this.mServedFiles.remove(file);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: all -> 0x0048, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x000e, B:8:0x002f, B:10:0x003a, B:13:0x0044, B:15:0x0046), top: B:20:0x0004 }] */
    protected boolean isFreeSpaceAvailable() {
        boolean z = false;
        synchronized (LOCK) {
            Context context = getContext();
            if (context.getFilesDir() != null) {
                File filesDir = context.getFilesDir();
                String path = filesDir.getAbsolutePath() + BIT_TELEMETRY_DIRECTORY;
                if (!TextUtils.isEmpty(path)) {
                    File dir = new File(path);
                    File[] files = dir.listFiles();
                    if (files != null && files.length < MAX_FILE_COUNT.intValue()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    protected void createDirectoriesIfNecessary() {
        if (this.mTelemetryDirectory != null && !this.mTelemetryDirectory.exists()) {
            if (this.mTelemetryDirectory.mkdirs()) {
                HockeyLog.info(TAG, "Successfully created directory");
            } else {
                HockeyLog.info(TAG, "Error creating directory");
            }
        }
    }

    private Context getContext() {
        if (this.mWeakContext == null) {
            return null;
        }
        Context context = this.mWeakContext.get();
        return context;
    }

    protected Sender getSender() {
        if (this.mWeakSender == null) {
            return null;
        }
        Sender sender = this.mWeakSender.get();
        return sender;
    }

    protected void setSender(Sender sender) {
        this.mWeakSender = new WeakReference<>(sender);
    }
}
