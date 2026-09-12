package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.network.XLEThreadPool;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class NetworkAsyncTask<T> extends XLEAsyncTask<T> {
    protected boolean forceLoad;
    private boolean shouldExecute;

    protected abstract boolean checkShouldExecute();

    protected abstract T loadDataInBackground();

    protected abstract T onError();

    protected abstract void onNoAction();

    public NetworkAsyncTask() {
        super(XLEThreadPool.networkOperationsThreadPool);
        this.forceLoad = true;
        this.shouldExecute = true;
    }

    public NetworkAsyncTask(XLEThreadPool threadPool) {
        super(XLEThreadPool.networkOperationsThreadPool);
        this.forceLoad = true;
        this.shouldExecute = true;
    }

    public void load(boolean forceLoad) {
        this.forceLoad = forceLoad;
        execute();
    }

    @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
    protected final T doInBackground() {
        try {
            return loadDataInBackground();
        } catch (Exception e) {
            return onError();
        }
    }

    @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
    public void execute() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (this.cancelled) {
        }
        this.shouldExecute = checkShouldExecute();
        if (this.shouldExecute || this.forceLoad) {
            this.isBusy = true;
            onPreExecute();
            super.executeBackground();
        } else {
            onNoAction();
            this.isBusy = false;
        }
    }
}
