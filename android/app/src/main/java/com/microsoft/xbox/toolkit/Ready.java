package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Ready {
    private boolean ready = false;
    private Object syncObj = new Object();

    public boolean getIsReady() {
        boolean z;
        synchronized (this.syncObj) {
            z = this.ready;
        }
        return z;
    }

    public void setReady() {
        synchronized (this.syncObj) {
            this.ready = true;
            this.syncObj.notifyAll();
        }
    }

    public void waitForReady() {
        waitForReady(0);
    }

    public void waitForReady(int timeoutMs) {
        synchronized (this.syncObj) {
            if (!this.ready) {
                try {
                    if (timeoutMs > 0) {
                        this.syncObj.wait(timeoutMs);
                    } else {
                        this.syncObj.wait();
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public void reset() {
        synchronized (this.syncObj) {
            this.ready = false;
        }
    }
}
