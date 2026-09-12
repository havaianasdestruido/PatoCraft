package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SingleEntryLoadingStatus {
    private boolean isLoading = false;
    private XLEException lastError = null;
    private Object syncObj = new Object();

    public class WaitResult {
        public XLEException error;
        public boolean waited;

        public WaitResult(boolean waited, XLEException error) {
            this.waited = waited;
            this.error = error;
        }
    }

    public boolean getIsLoading() {
        return this.isLoading;
    }

    public XLEException getLastError() {
        return this.lastError;
    }

    public void setSuccess() {
        setDone(null);
    }

    public void setFailed(XLEException ex) {
        setDone(ex);
    }

    private void setDone(XLEException ex) {
        synchronized (this.syncObj) {
            this.isLoading = false;
            this.lastError = ex;
            this.syncObj.notifyAll();
        }
    }

    public WaitResult waitForNotLoading() {
        WaitResult waitResult;
        synchronized (this.syncObj) {
            if (this.isLoading) {
                try {
                    this.syncObj.wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
                waitResult = new WaitResult(true, this.lastError);
            } else {
                this.isLoading = true;
                waitResult = new WaitResult(false, null);
            }
        }
        return waitResult;
    }

    public void reset() {
        synchronized (this.syncObj) {
            this.isLoading = false;
            this.lastError = null;
            this.syncObj.notifyAll();
        }
    }
}
