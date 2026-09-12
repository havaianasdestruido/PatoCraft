package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.network.IDataLoaderRunnable;
import com.microsoft.xbox.xle.app.XLEUtil;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DataLoadUtil {
    public static <T> NetworkAsyncTask StartLoadFromUI(boolean forceLoad, final long lifetime, final Date lastRefreshedTime, final SingleEntryLoadingStatus loadingStatus, final IDataLoaderRunnable<T> runner) {
        NetworkAsyncTask<T> task = new NetworkAsyncTask<T>() { // from class: com.microsoft.xbox.toolkit.DataLoadUtil.1
            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            protected boolean checkShouldExecute() {
                return this.forceLoad;
            }

            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            protected void onNoAction() {
            }

            @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
            protected void onPreExecute() {
            }

            @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
            protected void onPostExecute(T result) {
            }

            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            protected T onError() {
                return null;
            }

            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            protected T loadDataInBackground() {
                return (T) DataLoadUtil.Load(this.forceLoad, lifetime, lastRefreshedTime, loadingStatus, runner).getResult();
            }
        };
        task.execute();
        return task;
    }

    public static <T> AsyncResult<T> Load(boolean forceLoad, long lifetime, Date lastRefreshedTime, SingleEntryLoadingStatus loadingStatus, final IDataLoaderRunnable<T> runner) {
        XLEAssert.assertNotNull(loadingStatus);
        XLEAssert.assertNotNull(runner);
        XLEAssert.assertIsNotUIThread();
        SingleEntryLoadingStatus.WaitResult waitResult = loadingStatus.waitForNotLoading();
        if (!waitResult.waited) {
            if (XLEUtil.shouldRefresh(lastRefreshedTime, lifetime) || forceLoad) {
                ThreadManager.UIThreadSend(new Runnable() { // from class: com.microsoft.xbox.toolkit.DataLoadUtil.2
                    @Override // java.lang.Runnable
                    public void run() {
                        runner.onPreExecute();
                    }
                });
                XLEException error = null;
                int retryCount = runner.getShouldRetryCountOnTokenError();
                for (int i = 0; i <= retryCount; i++) {
                    try {
                        T result = runner.buildData();
                        postExecute(result, runner, null, AsyncActionStatus.SUCCESS);
                        loadingStatus.setSuccess();
                        return new AsyncResult<>(result, runner, null, AsyncActionStatus.SUCCESS);
                    } catch (XLEException xex) {
                        error = xex;
                        if (xex.getErrorCode() != XLEErrorCode.NOT_AUTHORIZED) {
                            if (xex.getErrorCode() != XLEErrorCode.INVALID_ACCESS_TOKEN) {
                                break;
                            }
                        }
                    } catch (Exception ex) {
                        error = new XLEException(runner.getDefaultErrorCode(), ex);
                    }
                }
                loadingStatus.setFailed(error);
                return safeReturnResult(null, runner, error, AsyncActionStatus.FAIL);
            }
            loadingStatus.setSuccess();
            return safeReturnResult(null, runner, null, AsyncActionStatus.NO_CHANGE);
        }
        XLEException exception = waitResult.error;
        if (exception == null) {
            return safeReturnResult(null, runner, null, AsyncActionStatus.NO_OP_SUCCESS);
        }
        return safeReturnResult(null, runner, exception, AsyncActionStatus.NO_OP_FAIL);
    }

    private static <T> AsyncResult<T> safeReturnResult(T result, IDataLoaderRunnable<T> runner, XLEException error, AsyncActionStatus status) {
        postExecute(result, runner, error, status);
        return new AsyncResult<>(result, runner, error, status);
    }

    private static <T> void postExecute(final T result, final IDataLoaderRunnable<T> runner, final XLEException error, final AsyncActionStatus status) {
        ThreadManager.UIThreadSend(new Runnable() { // from class: com.microsoft.xbox.toolkit.DataLoadUtil.3
            @Override // java.lang.Runnable
            public void run() {
                runner.onPostExcute(new AsyncResult(result, runner, error, status));
            }
        });
    }
}
