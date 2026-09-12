package com.microsoft.xbox.toolkit;

import android.app.ActivityManager;
import android.os.Debug;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MemoryMonitor {
    public static final int KB_TO_BYTES = 1024;
    public static final int MB_TO_BYTES = 1048576;
    public static final int MB_TO_KB = 1024;
    private static MemoryMonitor instance = new MemoryMonitor();
    private Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();

    public static MemoryMonitor instance() {
        return instance;
    }

    public synchronized int getDalvikFreeMb() {
        return getDalvikFreeKb() / 1024;
    }

    public synchronized int getDalvikFreeKb() {
        int remainingKb;
        Debug.getMemoryInfo(this.memoryInfo);
        int availableKb = ((ActivityManager) XboxTcuiSdk.getSystemService("activity")).getMemoryClass() * 1024;
        remainingKb = availableKb - getDalvikUsedKb();
        return remainingKb;
    }

    public synchronized int getDalvikUsedKb() {
        int dalvikKb;
        Debug.getMemoryInfo(this.memoryInfo);
        dalvikKb = this.memoryInfo.dalvikPss;
        return dalvikKb;
    }

    public static synchronized int getTotalPss() {
        Debug.getMemoryInfo(instance.memoryInfo);
        return instance.memoryInfo.getTotalPss();
    }

    public synchronized int getUsedKb() {
        int usedKb;
        Debug.getMemoryInfo(this.memoryInfo);
        usedKb = this.memoryInfo.dalvikPss + this.memoryInfo.nativePss;
        return usedKb;
    }

    public int getMemoryClass() {
        return ((ActivityManager) XboxTcuiSdk.getSystemService("activity")).getLargeMemoryClass();
    }

    private MemoryMonitor() {
    }
}
