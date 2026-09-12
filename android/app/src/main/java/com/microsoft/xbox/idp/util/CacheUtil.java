package com.microsoft.xbox.idp.util;

import android.util.Log;
import com.microsoft.xbox.idp.toolkit.BitmapLoader;
import com.microsoft.xbox.idp.toolkit.EventInitializationLoader;
import com.microsoft.xbox.idp.toolkit.FinishSignInLoader;
import com.microsoft.xbox.idp.toolkit.ObjectLoader;
import com.microsoft.xbox.idp.toolkit.SignOutLoader;
import com.microsoft.xbox.idp.toolkit.StartSignInLoader;
import com.microsoft.xbox.idp.toolkit.XBLoginLoader;
import com.microsoft.xbox.idp.toolkit.XTokenLoader;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class CacheUtil {
    private static final String TAG = CacheUtil.class.getSimpleName();
    private static final HashMap<Class<?>, ResultCache<?>> map = new HashMap<>();
    private static final ObjectLoader.Cache objectLoaderCache = new ObjectLoaderCache();
    private static final BitmapLoader.Cache bitmapCache = new BitmapLoaderCache(50);

    static {
        map.put(XTokenLoader.Result.class, new ResultCache<>());
        map.put(XBLoginLoader.Result.class, new ResultCache<>());
        map.put(EventInitializationLoader.Result.class, new ResultCache<>());
        map.put(StartSignInLoader.Result.class, new ResultCache<>());
        map.put(FinishSignInLoader.Result.class, new ResultCache<>());
        map.put(SignOutLoader.Result.class, new ResultCache<>());
    }

    private CacheUtil() {
    }

    public static ObjectLoader.Cache getObjectLoaderCache() {
        return objectLoaderCache;
    }

    public static BitmapLoader.Cache getBitmapCache() {
        return bitmapCache;
    }

    public static <R> ResultCache<R> getResultCache(Class<R> cls) {
        return (ResultCache) map.get(cls);
    }

    public static void clearCaches() {
        Log.d(TAG, "clearCaches");
        synchronized (objectLoaderCache) {
            objectLoaderCache.clear();
        }
        synchronized (bitmapCache) {
            bitmapCache.clear();
        }
        for (ResultCache<?> cache : map.values()) {
            synchronized (cache) {
                cache.clear();
            }
        }
    }
}
