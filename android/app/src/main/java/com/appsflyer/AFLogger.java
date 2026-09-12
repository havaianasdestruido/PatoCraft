package com.appsflyer;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AFLogger {
    private static final String LOG_TAG = "AppsFlyer_4.7.1";

    AFLogger() {
    }

    static void afLog(String logMessage, boolean shouldRemoteDebug) {
        if (shouldLog()) {
            Log.i("AppsFlyer_4.7.1", logMessage);
        }
        if (shouldRemoteDebug) {
            RemoteDebuggingManager.getInstance().addLogEntry("I", logMessage);
        }
    }

    static void afDebugLog(String debugLogMessage, boolean shouldRemoteDebug) {
        if (shouldLog()) {
            Log.d("AppsFlyer_4.7.1", debugLogMessage);
        }
        if (shouldRemoteDebug) {
            RemoteDebuggingManager.getInstance().addLogEntry("D", debugLogMessage);
        }
    }

    static void afLogE(String errorLogMessage, Throwable ex, boolean shouldRemoteDebug, boolean shouldOutputToLog) {
        if (shouldLog() && shouldOutputToLog) {
            Log.e("AppsFlyer_4.7.1", errorLogMessage, ex);
        }
        if (shouldRemoteDebug) {
            RemoteDebuggingManager.getInstance().addExceptionEvent(ex);
        }
    }

    static void afWarnLog(String warningLogMessage, boolean shouldRemoteDebug) {
        if (shouldLog()) {
            Log.w("AppsFlyer_4.7.1", warningLogMessage);
        }
        if (shouldRemoteDebug) {
            RemoteDebuggingManager.getInstance().addLogEntry("W", warningLogMessage);
        }
    }

    private static boolean shouldLog() {
        return AppsFlyerProperties.getInstance().isEnableLog();
    }

    static void afLogM(String logMessage) {
        if (!noLogsAllowed()) {
            Log.d("AppsFlyer_4.7.1", logMessage);
        }
        RemoteDebuggingManager.getInstance().addLogEntry("M", logMessage);
    }

    private static boolean noLogsAllowed() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    static void afDebugLog(String debugLogMessage) {
        afDebugLog(debugLogMessage, true);
    }

    static void afLog(String logMessage) {
        afLog(logMessage, true);
    }

    static void afLogE(String errorLogMessage, Throwable ex) {
        afLogE(errorLogMessage, ex, true, false);
    }

    static void afWarnLog(String warningLogMessage) {
        afWarnLog(warningLogMessage, true);
    }
}
