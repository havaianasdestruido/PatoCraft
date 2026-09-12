package com.microsoft.onlineid.internal.log;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CrashErrorReportHandler implements Thread.UncaughtExceptionHandler {
    private static Thread.UncaughtExceptionHandler defaultExceptionHandler = null;
    private static ErrorReportManager reportManager = new ErrorReportManager();

    private static class InstanceHolder {
        private static CrashErrorReportHandler instance = new CrashErrorReportHandler();

        private InstanceHolder() {
        }
    }

    private CrashErrorReportHandler() {
    }

    public static CrashErrorReportHandler getInstance() {
        return InstanceHolder.instance;
    }

    public synchronized void init(Context applicationContext) {
        if (defaultExceptionHandler == null) {
            defaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
        reportManager.init(applicationContext);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread t, Throwable e) throws Throwable {
        try {
            Logger.info("Handling of the uncaughtException");
            reportManager.generateAndSaveCrashReport(e);
        } catch (Exception ex) {
            Logger.warning("Error CollectPackageInformation", ex);
        }
        defaultExceptionHandler.uncaughtException(t, e);
    }

    public void sendPriorCrashReport(Context activityContext) {
        reportManager.checkAndSendCrashReportWithUserPermission(activityContext);
    }

    public void setSendScreenshot(boolean sendScreenshotNewValue) {
        reportManager.setSendScreenshot(sendScreenshotNewValue);
    }
}
