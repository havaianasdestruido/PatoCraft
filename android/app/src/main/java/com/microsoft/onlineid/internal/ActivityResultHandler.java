package com.microsoft.onlineid.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.onlineid.exception.InternalException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ActivityResultHandler {
    protected abstract void onFailure(Exception exc);

    protected abstract void onSuccess(ApiResult apiResult);

    protected abstract void onUINeeded(PendingIntent pendingIntent);

    protected abstract void onUserCancel();

    public void onActivityResult(int resultCode, Intent data) {
        Bundle extras = data != null ? data.getExtras() : null;
        ApiResult apiResult = new ApiResult(extras);
        switch (resultCode) {
            case -1:
                onSuccess(apiResult);
                break;
            case 0:
                onUserCancel();
                break;
            case 1:
                onFailure(apiResult.getException());
                break;
            case 2:
                onUINeeded(apiResult.getUINeededIntent());
                break;
            default:
                onUnknownResult(apiResult, resultCode);
                break;
        }
    }

    protected void onUnknownResult(ApiResult result, int resultCode) {
        Assertion.check(false, "Unknown result code: " + resultCode);
        onFailure(new InternalException("Unknown result code: " + resultCode));
    }
}
