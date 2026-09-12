package com.microsoft.onlineid.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.microsoft.onlineid.exception.InternalException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ApiRequestResultReceiver extends ResultReceiver {
    protected abstract void onFailure(Exception exc);

    protected abstract void onSuccess(ApiResult apiResult);

    protected abstract void onUINeeded(PendingIntent pendingIntent);

    protected abstract void onUserCancel();

    public ApiRequestResultReceiver(Handler handler) {
        super(handler);
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int resultCode, Bundle resultData) {
        ApiResult request = new ApiResult(resultData);
        switch (resultCode) {
            case -1:
                onSuccess(request);
                break;
            case 0:
                onUserCancel();
                break;
            case 1:
                onFailure(request.getException());
                break;
            case 2:
                onUINeeded(request.getUINeededIntent());
                break;
            default:
                onUnknownResult(request, resultCode);
                break;
        }
    }

    protected void onUnknownResult(ApiResult result, int resultCode) {
        Assertion.check(false, "Unknown result code: " + resultCode);
        onFailure(new InternalException("Unknown result code: " + resultCode));
    }
}
