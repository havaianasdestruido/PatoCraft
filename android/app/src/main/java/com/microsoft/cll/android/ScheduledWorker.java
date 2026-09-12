package com.microsoft.cll.android;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ScheduledWorker implements Runnable {
    protected ScheduledExecutorService executor;
    protected long interval;
    protected boolean isPaused = false;
    protected ScheduledFuture nextExecution;

    @Override // java.lang.Runnable
    public abstract void run();

    public ScheduledWorker(long interval) {
        this.interval = interval;
    }

    protected void start(ScheduledExecutorService executor) {
        setupExecutor(executor);
    }

    protected void stop() {
        this.nextExecution.cancel(true);
    }

    protected void pause() {
        this.nextExecution.cancel(false);
        this.isPaused = true;
    }

    protected void resume(ScheduledExecutorService executor) {
        setupExecutor(executor);
        this.isPaused = false;
    }

    private void setupExecutor(ScheduledExecutorService executor) {
        this.executor = executor;
        this.nextExecution = executor.scheduleAtFixedRate(this, 0L, this.interval, TimeUnit.SECONDS);
    }
}
