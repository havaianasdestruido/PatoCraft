package com.microsoft.xbox.idp.toolkit;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Loader;
import android.os.Build;
import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class WorkerLoader<D> extends Loader<D> {
    private final Handler dispatcher;
    private final Object lock;
    private D result;
    private ResultListener<D> resultListener;
    private final Worker<D> worker;

    public interface ResultListener<D> {
        void onResult(D d);
    }

    public interface Worker<D> {
        void cancel();

        void start(ResultListener<D> resultListener);
    }

    protected abstract boolean isDataReleased(D d);

    protected abstract void releaseData(D d);

    public WorkerLoader(Context context, Worker<D> worker) {
        super(context);
        this.lock = new Object();
        this.dispatcher = new Handler();
        this.worker = worker;
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        if (this.result != null) {
            deliverResult(this.result);
        }
        if (takeContentChanged() || this.result == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        cancelLoadCompat();
    }

    public void onCanceled(D data) {
        if (data != null && !isDataReleased(data)) {
            releaseData(data);
        }
    }

    @Override // android.content.Loader
    protected void onForceLoad() {
        super.onForceLoad();
        cancelLoadCompat();
        synchronized (this.lock) {
            this.resultListener = new ResultListenerImpl();
            this.worker.start(this.resultListener);
        }
    }

    @Override // android.content.Loader
    protected boolean onCancelLoad() {
        boolean z;
        synchronized (this.lock) {
            if (this.resultListener != null) {
                this.worker.cancel();
                this.resultListener = null;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // android.content.Loader
    public void deliverResult(D data) {
        if (isReset()) {
            if (data != null) {
                releaseData(data);
                return;
            }
            return;
        }
        D oldResult = this.result;
        this.result = data;
        if (isStarted()) {
            super.deliverResult(data);
        }
        if (oldResult != null && oldResult != data && !isDataReleased(oldResult)) {
            releaseData(oldResult);
        }
    }

    @Override // android.content.Loader
    protected void onReset() {
        cancelLoadCompat();
        if (this.result != null && !isDataReleased(this.result)) {
            releaseData(this.result);
        }
        this.result = null;
    }

    @SuppressLint({"NewApi"})
    private boolean cancelLoadCompat() {
        return Build.VERSION.SDK_INT < 16 ? onCancelLoad() : cancelLoad();
    }

    private class ResultListenerImpl implements ResultListener<D> {
        private ResultListenerImpl() {
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.ResultListener
        public void onResult(final D result) {
            synchronized (WorkerLoader.this.lock) {
                final boolean canceled = this != WorkerLoader.this.resultListener;
                WorkerLoader.this.resultListener = null;
                WorkerLoader.this.dispatcher.post(new Runnable() { // from class: com.microsoft.xbox.idp.toolkit.WorkerLoader.ResultListenerImpl.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        if (canceled) {
                            WorkerLoader.this.onCanceled(result);
                        } else {
                            WorkerLoader.this.deliverResult(result);
                        }
                    }
                });
            }
        }
    }
}
