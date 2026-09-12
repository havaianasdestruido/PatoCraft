package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.XLEThread;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEThreadPool {
    private ExecutorService executor;
    private String name;
    public static XLEThreadPool nativeOperationsThreadPool = new XLEThreadPool(true, 4, "XLENativeOperationsPool");
    public static XLEThreadPool networkOperationsThreadPool = new XLEThreadPool(false, 3, "XLENetworkOperationsPool");
    public static XLEThreadPool textureThreadPool = new XLEThreadPool(false, 1, "XLETexturePool");
    public static XLEThreadPool biOperationsThreadPool = new XLEThreadPool(false, 1, "XLEPerfMarkerOperationsPool");

    public XLEThreadPool(boolean singleThread, final int priority, String newname) {
        this.name = newname;
        ThreadFactory factory = new ThreadFactory() { // from class: com.microsoft.xbox.toolkit.network.XLEThreadPool.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable arg0) {
                Thread t = new XLEThread(arg0, XLEThreadPool.this.name);
                t.setDaemon(true);
                t.setPriority(priority);
                return t;
            }
        };
        if (singleThread) {
            this.executor = Executors.newSingleThreadExecutor(factory);
        } else {
            this.executor = Executors.newCachedThreadPool(factory);
        }
    }

    public void run(Runnable runnable) {
        this.executor.execute(runnable);
    }
}
