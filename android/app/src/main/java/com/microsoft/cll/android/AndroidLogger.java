package com.microsoft.cll.android;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AndroidLogger implements ILogger {
    private static AndroidLogger INSTANCE;
    private static Object InstanceLock = new Object();
    private Verbosity verbosity;

    public static ILogger getInstance() {
        if (INSTANCE == null) {
            synchronized (InstanceLock) {
                if (INSTANCE == null) {
                    INSTANCE = new AndroidLogger();
                }
            }
        }
        return INSTANCE;
    }

    private AndroidLogger() {
        setVerbosity(Verbosity.NONE);
    }

    @Override // com.microsoft.cll.android.ILogger
    public void setVerbosity(Verbosity verbosity) {
        this.verbosity = verbosity;
    }

    @Override // com.microsoft.cll.android.ILogger
    public Verbosity getVerbosity() {
        return this.verbosity;
    }

    @Override // com.microsoft.cll.android.ILogger
    public void info(String TAG, String message) {
        if (this.verbosity == Verbosity.INFO) {
            Log.i(TAG, message);
        }
    }

    @Override // com.microsoft.cll.android.ILogger
    public void warn(String TAG, String message) {
        if (this.verbosity == Verbosity.WARN || this.verbosity == Verbosity.INFO) {
            Log.d(TAG, message);
        }
    }

    @Override // com.microsoft.cll.android.ILogger
    public void error(String TAG, String message) {
        if (this.verbosity == Verbosity.ERROR || this.verbosity == Verbosity.WARN || this.verbosity == Verbosity.INFO) {
            Log.e(TAG, message);
        }
    }
}
