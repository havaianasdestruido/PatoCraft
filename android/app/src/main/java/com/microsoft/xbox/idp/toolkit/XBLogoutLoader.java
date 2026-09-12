package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import com.microsoft.xbox.idp.interop.Interop;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XBLogoutLoader extends WorkerLoader<Result> {
    public XBLogoutLoader(Context context, long userPtr) {
        super(context, new MyWorker(userPtr));
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

    public static class Result extends LoaderResult<Void> {
        protected Result() {
            super(null, null);
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
        private final long userPtr;

        private MyWorker(long userPtr) {
            this.userPtr = userPtr;
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void start(final WorkerLoader.ResultListener<Result> listener) {
            Interop.InvokeXBLogout(this.userPtr, new Interop.XBLogoutCallback() { // from class: com.microsoft.xbox.idp.toolkit.XBLogoutLoader.MyWorker.1
                @Override // com.microsoft.xbox.idp.interop.Interop.XBLogoutCallback
                public void onLoggedOut() {
                    listener.onResult(new Result());
                }
            });
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void cancel() {
        }
    }
}
