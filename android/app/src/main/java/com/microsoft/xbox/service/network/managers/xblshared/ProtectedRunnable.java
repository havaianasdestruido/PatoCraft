package com.microsoft.xbox.service.network.managers.xblshared;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProtectedRunnable implements Runnable {
    private static final String TAG = ProtectedRunnable.class.getSimpleName();
    private final Runnable runnable;

    public ProtectedRunnable(Runnable runnable) {
        this.runnable = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean success = false;
        for (int i = 0; !success && i < 10; i++) {
            try {
                this.runnable.run();
                success = true;
            } catch (LinkageError e) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e2) {
                }
            }
        }
        if (!success) {
        }
    }
}
