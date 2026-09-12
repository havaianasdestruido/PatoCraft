package com.microsoft.xbox.idp.util;

import android.app.LoaderManager;
import com.microsoft.xbox.idp.toolkit.ObjectLoader;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ObjectLoaderInfo implements ErrorHelper.LoaderInfo {
    private final LoaderManager.LoaderCallbacks<?> callbacks;

    public ObjectLoaderInfo(LoaderManager.LoaderCallbacks<?> callbacks) {
        this.callbacks = callbacks;
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.LoaderInfo
    public LoaderManager.LoaderCallbacks<?> getLoaderCallbacks() {
        return this.callbacks;
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.LoaderInfo
    public void clearCache(Object key) {
        ObjectLoader.Cache cache = CacheUtil.getObjectLoaderCache();
        synchronized (cache) {
            cache.remove(key);
        }
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.LoaderInfo
    public boolean hasCachedData(Object key) {
        boolean z;
        ObjectLoader.Cache cache = CacheUtil.getObjectLoaderCache();
        synchronized (cache) {
            z = cache.get(key) != null;
        }
        return z;
    }
}
