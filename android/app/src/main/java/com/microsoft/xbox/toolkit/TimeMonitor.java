package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TimeMonitor {
    private long startTicks = 0;
    private long endTicks = 0;
    private final long NSTOMSEC = 1000000;

    public boolean getIsStarted() {
        return this.startTicks != 0;
    }

    public boolean getIsEnded() {
        return this.endTicks != 0;
    }

    public void reset() {
        this.startTicks = 0L;
        this.endTicks = 0L;
    }

    public void start() {
        this.startTicks = System.nanoTime();
        this.endTicks = 0L;
    }

    public void stop() {
        if (this.startTicks != 0 && this.endTicks == 0) {
            this.endTicks = System.nanoTime();
        }
    }

    public long currentTime() {
        long elapsed = (System.nanoTime() - this.startTicks) / 1000000;
        return elapsed;
    }

    public void saveCurrentTime() {
        if (getIsStarted()) {
            this.endTicks = System.nanoTime();
        }
    }

    public long getElapsedMs() {
        long end;
        if (!getIsStarted()) {
            return 0L;
        }
        if (this.endTicks != 0) {
            end = this.endTicks;
        } else {
            end = System.nanoTime();
        }
        long result = (end - this.startTicks) / 1000000;
        return result;
    }
}
