package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.system.SystemUtil;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEFileCacheManager {
    private static HashMap<String, XLEFileCache> sAllCaches = new HashMap<>();
    private static HashMap<XLEFileCache, File> sCacheRootDirMap = new HashMap<>();
    public static XLEFileCache emptyFileCache = new XLEFileCache();

    public static synchronized XLEFileCache createCache(String subDirectory, int maxFileNumber) {
        return createCache(subDirectory, maxFileNumber, true);
    }

    public static synchronized XLEFileCache createCache(String subDirectory, int maxFileNumber, boolean enabled) {
        XLEFileCache xLEFileCache;
        try {
            if (maxFileNumber <= 0) {
                throw new IllegalArgumentException("maxFileNumber must be > 0");
            }
            if (subDirectory == null || subDirectory.length() <= 0) {
                throw new IllegalArgumentException("subDirectory must be not null and at least one character length");
            }
            XLEFileCache fileCache = sAllCaches.get(subDirectory);
            if (fileCache == null) {
                if (!enabled || !SystemUtil.isSDCardAvailable()) {
                    xLEFileCache = emptyFileCache;
                } else {
                    fileCache = new XLEFileCache(subDirectory, maxFileNumber);
                    File rootDir = new File(XboxTcuiSdk.getActivity().getCacheDir(), subDirectory);
                    if (!rootDir.exists()) {
                        rootDir.mkdirs();
                    }
                    fileCache.size = rootDir.list().length;
                    sAllCaches.put(subDirectory, fileCache);
                    sCacheRootDirMap.put(fileCache, rootDir);
                }
            } else if (fileCache.maxFileNumber != maxFileNumber) {
                throw new IllegalArgumentException("The same subDirectory with different maxFileNumber already exist.");
            }
            xLEFileCache = fileCache;
        } catch (Throwable th) {
            throw th;
        }
        return xLEFileCache;
    }

    static File getCacheRootDir(XLEFileCache cache) {
        return sCacheRootDirMap.get(cache);
    }

    public static String getCacheStatus() {
        return sAllCaches.values().toString();
    }
}
