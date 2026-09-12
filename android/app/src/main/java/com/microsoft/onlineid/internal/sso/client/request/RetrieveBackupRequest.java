package com.microsoft.onlineid.internal.sso.client.request;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.microsoft.onlineid.exception.AuthenticationException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RetrieveBackupRequest extends SingleSsoRequest<Bundle> {
    public RetrieveBackupRequest(Context applicationContext) {
        super(applicationContext, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest
    public Bundle performRequestTask() throws AuthenticationException, RemoteException {
        Bundle bundle = this._msaSsoService.retrieveBackup(getDefaultCallingParams());
        SingleSsoRequest.checkForErrors(bundle);
        return bundle;
    }
}
