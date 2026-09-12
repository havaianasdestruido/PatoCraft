package com.microsoft.xbox.service.model;

import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.DataLoadUtil;
import com.microsoft.xbox.toolkit.ModelData;
import com.microsoft.xbox.toolkit.SingleEntryLoadingStatus;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEObservable;
import com.microsoft.xbox.toolkit.network.IDataLoaderRunnable;
import com.microsoft.xbox.xle.app.XLEUtil;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ModelBase<T> extends XLEObservable<UpdateData> implements ModelData<T> {
    protected static final long MilliSecondsInADay = 86400000;
    protected static final long MilliSecondsInAnHour = 3600000;
    protected static final long MilliSecondsInHalfHour = 1800000;
    protected Date lastRefreshTime;
    protected IDataLoaderRunnable<T> loaderRunnable;
    protected long lifetime = MilliSecondsInADay;
    protected boolean isLoading = false;
    protected long lastInvalidatedTick = 0;
    private SingleEntryLoadingStatus loadingStatus = new SingleEntryLoadingStatus();

    public boolean shouldRefresh() {
        return shouldRefresh(this.lastRefreshTime);
    }

    public boolean hasValidData() {
        return this.lastRefreshTime != null;
    }

    protected boolean shouldRefresh(Date lastRefreshTime) {
        return XLEUtil.shouldRefresh(lastRefreshTime, this.lifetime);
    }

    protected boolean isLoaded() {
        return this.lastRefreshTime != null;
    }

    @Override // com.microsoft.xbox.toolkit.ModelData
    public void updateWithNewData(AsyncResult<T> result) {
        this.isLoading = false;
        if (result.getException() == null && result.getStatus() == AsyncActionStatus.SUCCESS) {
            this.lastRefreshTime = new Date();
        }
    }

    public boolean getIsLoading() {
        return this.loadingStatus.getIsLoading();
    }

    public void invalidateData() {
        this.lastRefreshTime = null;
    }

    protected AsyncResult<T> loadData(boolean forceRefresh, IDataLoaderRunnable<T> runnable) {
        XLEAssert.assertIsNotUIThread();
        return DataLoadUtil.Load(forceRefresh, this.lifetime, this.lastRefreshTime, this.loadingStatus, runnable);
    }

    protected void loadInternal(boolean forceRefresh, UpdateType updateType, IDataLoaderRunnable<T> runnable) {
        loadInternal(forceRefresh, updateType, runnable, this.lastRefreshTime);
    }

    protected void loadInternal(boolean forceRefresh, UpdateType updateType, IDataLoaderRunnable<T> runnable, Date lastRefreshTime) {
        XLEAssert.assertIsUIThread();
        if (!getIsLoading() && (forceRefresh || shouldRefresh(lastRefreshTime))) {
            DataLoadUtil.StartLoadFromUI(forceRefresh, this.lifetime, this.lastRefreshTime, this.loadingStatus, runnable);
            notifyObservers(new AsyncResult<>(new UpdateData(updateType, false), this, null));
        } else {
            notifyObservers(new AsyncResult<>(new UpdateData(updateType, getIsLoading() ? false : true), this, null));
        }
    }
}
