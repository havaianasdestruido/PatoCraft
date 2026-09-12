package net.hockeyapp.android;

import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Date;
import java.util.UUID;
import net.hockeyapp.android.objects.CrashDetails;
import net.hockeyapp.android.utils.HockeyLog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ExceptionHandler implements Thread.UncaughtExceptionHandler {
    private CrashManagerListener mCrashManagerListener;
    private Thread.UncaughtExceptionHandler mDefaultExceptionHandler;
    private boolean mIgnoreDefaultHandler;

    public ExceptionHandler(Thread.UncaughtExceptionHandler defaultExceptionHandler, CrashManagerListener listener, boolean ignoreDefaultHandler) {
        this.mIgnoreDefaultHandler = false;
        this.mDefaultExceptionHandler = defaultExceptionHandler;
        this.mIgnoreDefaultHandler = ignoreDefaultHandler;
        this.mCrashManagerListener = listener;
    }

    public void setListener(CrashManagerListener listener) {
        this.mCrashManagerListener = listener;
    }

    @Deprecated
    public static void saveException(Throwable exception, CrashManagerListener listener) throws Throwable {
        saveException(exception, null, listener);
    }

    public static void saveException(Throwable exception, Thread thread, CrashManagerListener listener) throws Throwable {
        Date now = new Date();
        Date startDate = new Date(CrashManager.getInitializeTimestamp());
        Writer result = new StringWriter();
        PrintWriter printWriter = new PrintWriter(result);
        exception.printStackTrace(printWriter);
        String filename = UUID.randomUUID().toString();
        CrashDetails crashDetails = new CrashDetails(filename, exception);
        crashDetails.setAppPackage(Constants.APP_PACKAGE);
        crashDetails.setAppVersionCode(Constants.APP_VERSION);
        crashDetails.setAppVersionName(Constants.APP_VERSION_NAME);
        crashDetails.setAppStartDate(startDate);
        crashDetails.setAppCrashDate(now);
        if (listener == null || listener.includeDeviceData()) {
            crashDetails.setOsVersion(Constants.ANDROID_VERSION);
            crashDetails.setOsBuild(Constants.ANDROID_BUILD);
            crashDetails.setDeviceManufacturer(Constants.PHONE_MANUFACTURER);
            crashDetails.setDeviceModel(Constants.PHONE_MODEL);
        }
        if (thread != null && (listener == null || listener.includeThreadDetails())) {
            crashDetails.setThreadName(thread.getName() + "-" + thread.getId());
        }
        if (Constants.CRASH_IDENTIFIER != null && (listener == null || listener.includeDeviceIdentifier())) {
            crashDetails.setReporterKey(Constants.CRASH_IDENTIFIER);
        }
        crashDetails.writeCrashReport();
        if (listener != null) {
            try {
                writeValueToFile(limitedString(listener.getUserID()), filename + ".user");
                writeValueToFile(limitedString(listener.getContact()), filename + ".contact");
                writeValueToFile(listener.getDescription(), filename + ".description");
            } catch (IOException e) {
                HockeyLog.error("Error saving crash meta data!", e);
            }
        }
    }

    public static void saveNativeException(Throwable exception, String managedExceptionString, Thread thread, CrashManagerListener listener) throws Throwable {
        String[] splits;
        if (!TextUtils.isEmpty(managedExceptionString) && (splits = managedExceptionString.split("--- End of managed exception stack trace ---", 2)) != null && splits.length > 0) {
            managedExceptionString = splits[0];
        }
        saveXamarinException(exception, thread, managedExceptionString, false, listener);
    }

    public static void saveManagedException(Throwable exception, Thread thread, CrashManagerListener listener) throws Throwable {
        saveXamarinException(exception, thread, null, true, listener);
    }

    private static void saveXamarinException(Throwable exception, Thread thread, String additionalManagedException, Boolean isManagedException, CrashManagerListener listener) throws Throwable {
        Date startDate = new Date(CrashManager.getInitializeTimestamp());
        String filename = UUID.randomUUID().toString();
        Date now = new Date();
        Writer result = new StringWriter();
        PrintWriter printWriter = new PrintWriter(result);
        if (exception != null) {
            exception.printStackTrace(printWriter);
        }
        CrashDetails crashDetails = new CrashDetails(filename, exception, additionalManagedException, isManagedException);
        crashDetails.setAppPackage(Constants.APP_PACKAGE);
        crashDetails.setAppVersionCode(Constants.APP_VERSION);
        crashDetails.setAppVersionName(Constants.APP_VERSION_NAME);
        crashDetails.setAppStartDate(startDate);
        crashDetails.setAppCrashDate(now);
        if (listener == null || listener.includeDeviceData()) {
            crashDetails.setOsVersion(Constants.ANDROID_VERSION);
            crashDetails.setOsBuild(Constants.ANDROID_BUILD);
            crashDetails.setDeviceManufacturer(Constants.PHONE_MANUFACTURER);
            crashDetails.setDeviceModel(Constants.PHONE_MODEL);
        }
        if (thread != null && (listener == null || listener.includeThreadDetails())) {
            crashDetails.setThreadName(thread.getName() + "-" + thread.getId());
        }
        if (Constants.CRASH_IDENTIFIER != null && (listener == null || listener.includeDeviceIdentifier())) {
            crashDetails.setReporterKey(Constants.CRASH_IDENTIFIER);
        }
        crashDetails.writeCrashReport();
        if (listener != null) {
            try {
                writeValueToFile(limitedString(listener.getUserID()), filename + ".user");
                writeValueToFile(limitedString(listener.getContact()), filename + ".contact");
                writeValueToFile(listener.getDescription(), filename + ".description");
            } catch (IOException e) {
                HockeyLog.error("Error saving crash meta data!", e);
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable exception) throws Throwable {
        if (Constants.FILES_PATH == null) {
            this.mDefaultExceptionHandler.uncaughtException(thread, exception);
            return;
        }
        saveException(exception, thread, this.mCrashManagerListener);
        if (!this.mIgnoreDefaultHandler) {
            this.mDefaultExceptionHandler.uncaughtException(thread, exception);
        } else {
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    private static void writeValueToFile(String value, String filename) throws Throwable {
        if (TextUtils.isEmpty(value)) {
            return;
        }
        BufferedWriter writer = null;
        try {
            String path = Constants.FILES_PATH + "/" + filename;
            if (!TextUtils.isEmpty(value) && TextUtils.getTrimmedLength(value) > 0) {
                BufferedWriter writer2 = new BufferedWriter(new FileWriter(path));
                try {
                    writer2.write(value);
                    writer2.flush();
                    writer = writer2;
                } catch (IOException e) {
                    writer = writer2;
                    if (writer != null) {
                        writer.close();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    th = th;
                    writer = writer2;
                    if (writer != null) {
                        writer.close();
                    }
                    throw th;
                }
            }
            if (writer != null) {
                writer.close();
            }
        } catch (IOException e2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String limitedString(String string) {
        if (!TextUtils.isEmpty(string) && string.length() > 255) {
            return string.substring(0, 255);
        }
        return string;
    }
}
