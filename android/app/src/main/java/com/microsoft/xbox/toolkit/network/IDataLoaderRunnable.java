package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.XLEException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class IDataLoaderRunnable<T> {
    protected int retryCountOnTokenError = 1;

    public abstract T buildData() throws XLEException;

    public abstract long getDefaultErrorCode();

    public abstract void onPostExcute(AsyncResult<T> asyncResult);

    public abstract void onPreExecute();

    public Object getUserObject() {
        return null;
    }

    public int getShouldRetryCountOnTokenError() {
        return this.retryCountOnTokenError;
    }
}
