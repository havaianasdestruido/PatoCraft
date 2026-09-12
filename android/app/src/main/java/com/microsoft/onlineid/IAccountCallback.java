package com.microsoft.onlineid;

import android.app.PendingIntent;
import android.os.Bundle;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.IFailureCallback;
import com.microsoft.onlineid.internal.IUserInteractionCallback;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IAccountCallback extends IFailureCallback, IUserInteractionCallback {
    void onAccountAcquired(UserAccount userAccount, Bundle bundle);

    void onAccountSignedOut(String str, boolean z, Bundle bundle);

    @Override // com.microsoft.onlineid.internal.IFailureCallback
    void onFailure(AuthenticationException authenticationException, Bundle bundle);

    @Override // com.microsoft.onlineid.internal.IUserInteractionCallback
    void onUINeeded(PendingIntent pendingIntent, Bundle bundle);

    @Override // com.microsoft.onlineid.internal.IUserInteractionCallback
    void onUserCancel(Bundle bundle);
}
