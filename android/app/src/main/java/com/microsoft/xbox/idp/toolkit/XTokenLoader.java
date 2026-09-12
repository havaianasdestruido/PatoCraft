package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.util.AuthFlowResult;
import com.microsoft.xbox.idp.util.ResultCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XTokenLoader extends WorkerLoader<Result> {
    public XTokenLoader(Context context, long userPtr) {
        this(context, userPtr, null, null);
    }

    public XTokenLoader(Context context, long userPtr, ResultCache<Result> cache, Object resultKey) {
        super(context, new MyWorker(userPtr, cache, resultKey));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public boolean isDataReleased(Result data) {
        return data.isReleased();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public void releaseData(Result data) {
        data.release();
    }

    public static class Data {
        private final AuthFlowResult authFlowResult;

        public Data(AuthFlowResult authFlowResult) {
            this.authFlowResult = authFlowResult;
        }

        public AuthFlowResult getAuthFlowResult() {
            return this.authFlowResult;
        }
    }

    public static class Result extends LoaderResult<Data> {
        protected Result(Data data, HttpError error) {
            super(data, error);
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public boolean isReleased() {
            return true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public void release() {
        }
    }

    private static class MyWorker implements WorkerLoader.Worker<Result> {
        private final ResultCache<Result> cache;
        private final Object resultKey;
        private final long userPtr;

        public MyWorker(long userPtr, ResultCache<Result> cache, Object resultKey) {
            this.userPtr = userPtr;
            this.cache = cache;
            this.resultKey = resultKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasCache() {
            return (this.cache == null || this.resultKey == null) ? false : true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void start(final WorkerLoader.ResultListener<Result> listener) {
            Result r;
            if (hasCache()) {
                synchronized (this.cache) {
                    r = this.cache.get(this.resultKey);
                }
                if (r != null) {
                    listener.onResult(r);
                    return;
                }
            }
            Interop.InvokeXTokenCallback(this.userPtr, new Interop.Callback() { // from class: com.microsoft.xbox.idp.toolkit.XTokenLoader.MyWorker.1
                @Override // com.microsoft.xbox.idp.interop.Interop.Callback
                public void onXTokenAcquired(long authFlowResultPtr) {
                    Result result = new Result(new Data(new AuthFlowResult(authFlowResultPtr)), null);
                    if (MyWorker.this.hasCache()) {
                        synchronized (MyWorker.this.cache) {
                            MyWorker.this.cache.put(MyWorker.this.resultKey, result);
                        }
                    }
                    listener.onResult(result);
                }

                @Override // com.microsoft.xbox.idp.interop.Interop.ErrorCallback
                public void onError(int httpStatusCode, int errorCode, String errorMessage) {
                    Result result = new Result(null, new HttpError(errorCode, httpStatusCode, errorMessage));
                    if (MyWorker.this.hasCache()) {
                        synchronized (MyWorker.this.cache) {
                            MyWorker.this.cache.put(MyWorker.this.resultKey, result);
                        }
                    }
                    listener.onResult(result);
                }
            });
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void cancel() {
        }
    }
}
