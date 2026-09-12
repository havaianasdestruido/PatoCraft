package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.util.AuthFlowResult;
import com.microsoft.xbox.idp.util.ResultCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XBLoginLoader extends WorkerLoader<Result> {
    public XBLoginLoader(Context context, long userPtr, String rpsTicket) {
        this(context, userPtr, rpsTicket, null, null);
    }

    public XBLoginLoader(Context context, long userPtr, String rpsTicket, ResultCache<Result> cache, Object resultKey) {
        super(context, new MyWorker(userPtr, rpsTicket, cache, resultKey));
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
        private final boolean createAccount;

        public Data(AuthFlowResult authFlowResult, boolean createAccount) {
            this.authFlowResult = authFlowResult;
            this.createAccount = createAccount;
        }

        public AuthFlowResult getAuthFlowResult() {
            return this.authFlowResult;
        }

        public boolean isCreateAccount() {
            return this.createAccount;
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
        private final String rpsTicket;
        private final long userPtr;

        private MyWorker(long userPtr, String rpsTicket, ResultCache<Result> cache, Object resultKey) {
            this.userPtr = userPtr;
            this.rpsTicket = rpsTicket;
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
            Interop.InvokeXBLogin(this.userPtr, this.rpsTicket, new Interop.XBLoginCallback() { // from class: com.microsoft.xbox.idp.toolkit.XBLoginLoader.MyWorker.1
                @Override // com.microsoft.xbox.idp.interop.Interop.XBLoginCallback
                public void onLogin(long authFlowResultPtr, boolean createAccount) {
                    Result result = new Result(new Data(new AuthFlowResult(authFlowResultPtr), createAccount), null);
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
