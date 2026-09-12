package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEThread extends Thread {
    public XLEThread(Runnable runnable, String name) {
        super(runnable, name);
        setUncaughtExceptionHandler(XLEUnhandledExceptionHandler.Instance);
    }
}
