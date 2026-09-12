package com.microsoft.xbox.toolkit;

import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ThreadManager {
    public static Handler Handler;
    public static Thread UIThread;

    public static void UIThreadPost(Runnable runnable) {
        UIThreadPostDelayed(runnable, 0L);
    }

    public static void UIThreadPostDelayed(Runnable runnable, long delayMS) {
        Handler.postDelayed(runnable, delayMS);
    }

    public static void UIThreadSend(final Runnable runnable) {
        if (UIThread == Thread.currentThread()) {
            runnable.run();
            return;
        }
        final Ready actionComplete = new Ready();
        Handler.post(new Runnable() { // from class: com.microsoft.xbox.toolkit.ThreadManager.1
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                actionComplete.setReady();
            }
        });
        actionComplete.waitForReady();
    }
}
