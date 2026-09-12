package com.microsoft.xbox.idp.util;

import android.app.LoaderManager;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ResultLoaderInfo<R> implements ErrorHelper.LoaderInfo {
    private final LoaderManager.LoaderCallbacks<?> callbacks;
    private final Class<R> cls;

    public ResultLoaderInfo(Class<R> cls, LoaderManager.LoaderCallbacks<?> callbacks) {
        this.cls = cls;
        this.callbacks = callbacks;
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.LoaderInfo
    public LoaderManager.LoaderCallbacks<?> getLoaderCallbacks() {
        return this.callbacks;
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.LoaderInfo
    public void clearCache(Object key) {
        ResultCache<R> cache = CacheUtil.getResultCache(this.cls);
        synchronized (cache) {
            cache.remove(key);
        }
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.LoaderInfo
    public boolean hasCachedData(Object key) {
        boolean z;
        ResultCache<R> cache = CacheUtil.getResultCache(this.cls);
        synchronized (cache) {
            z = cache.get(key) != null;
        }
        return z;
    }
}
