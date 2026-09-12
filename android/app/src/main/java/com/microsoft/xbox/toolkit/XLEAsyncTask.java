package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.network.XLEThreadPool;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class XLEAsyncTask<Result> {
    private Runnable doBackgroundAndPostExecuteRunnable;
    private XLEThreadPool threadPool;
    protected boolean cancelled = false;
    protected boolean isBusy = false;
    private XLEAsyncTask chainedTask = null;

    protected abstract Result doInBackground();

    protected abstract void onPostExecute(Result result);

    protected abstract void onPreExecute();

    public XLEAsyncTask(XLEThreadPool threadPool) {
        this.doBackgroundAndPostExecuteRunnable = null;
        this.threadPool = null;
        this.threadPool = threadPool;
        this.doBackgroundAndPostExecuteRunnable = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEAsyncTask.1
            @Override // java.lang.Runnable
            public void run() {
                final Object objDoInBackground;
                if (XLEAsyncTask.this.cancelled) {
                    objDoInBackground = null;
                } else {
                    objDoInBackground = XLEAsyncTask.this.doInBackground();
                }
                ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEAsyncTask.1.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        XLEAsyncTask.this.isBusy = false;
                        if (!XLEAsyncTask.this.cancelled) {
                            XLEAsyncTask.this.onPostExecute(objDoInBackground);
                            if (XLEAsyncTask.this.chainedTask != null) {
                                XLEAsyncTask.this.chainedTask.execute();
                            }
                        }
                    }
                });
            }
        };
    }

    public void cancel() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.cancelled = true;
    }

    public void execute() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.cancelled = false;
        this.isBusy = true;
        onPreExecute();
        executeBackground();
    }

    public boolean getIsBusy() {
        return this.isBusy && !this.cancelled;
    }

    public static void executeAll(XLEAsyncTask... tasks) {
        if (tasks.length > 0) {
            for (int i = 0; i < tasks.length - 1; i++) {
                tasks[i].chainedTask = tasks[i + 1];
            }
            tasks[0].execute();
        }
    }

    protected void executeBackground() {
        this.cancelled = false;
        this.threadPool.run(this.doBackgroundAndPostExecuteRunnable);
    }
}
