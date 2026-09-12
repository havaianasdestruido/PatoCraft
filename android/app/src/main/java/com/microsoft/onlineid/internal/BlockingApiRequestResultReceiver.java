package com.microsoft.onlineid.internal;

import android.app.PendingIntent;
import com.microsoft.onlineid.internal.exception.UserCancelledException;
import com.microsoft.onlineid.internal.sso.client.SsoResponse;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class BlockingApiRequestResultReceiver<ResultType> extends ApiRequestResultReceiver {
    private final BlockingQueue<BlockingApiRequestResultReceiver<ResultType>.Result> _queue;

    public BlockingApiRequestResultReceiver() {
        super(null);
        this._queue = new LinkedBlockingQueue();
    }

    public SsoResponse<ResultType> blockForResult() throws Exception {
        BlockingApiRequestResultReceiver<ResultType>.Result result = this._queue.take();
        if (result == null) {
            throw new IllegalStateException("Expect a result to be available.");
        }
        if (result.getException() == null) {
            return result.getSsoResponse();
        }
        throw result.getException();
    }

    protected void setResult(ResultType result) {
        this._queue.add(new Result(result));
    }

    @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
    protected void onUserCancel() {
        this._queue.add(new Result((Exception) new UserCancelledException()));
    }

    @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
    protected void onUINeeded(PendingIntent intent) {
        this._queue.add(new Result(intent));
    }

    @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
    protected void onFailure(Exception e) {
        this._queue.add(new Result(e));
    }

    public class Result {
        private final Exception _exception;
        private final SsoResponse<ResultType> _result;

        private Result(ResultType result) {
            this._result = new SsoResponse().setData(result);
            this._exception = null;
        }

        private Result(PendingIntent intent) {
            this._result = new SsoResponse().setPendingIntent(intent);
            this._exception = null;
        }

        private Result(Exception e) {
            this._result = null;
            this._exception = e;
        }

        public SsoResponse<ResultType> getSsoResponse() {
            return this._result;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Exception getException() {
            return this._exception;
        }
    }
}
