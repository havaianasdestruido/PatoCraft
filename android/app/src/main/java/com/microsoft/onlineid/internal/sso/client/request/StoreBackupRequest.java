package com.microsoft.onlineid.internal.sso.client.request;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.microsoft.onlineid.exception.AuthenticationException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StoreBackupRequest extends SingleSsoRequest<Void> {
    private final Bundle _backup;

    public StoreBackupRequest(Context applicationContext, Bundle backup) {
        super(applicationContext, null);
        this._backup = backup;
    }

    @Override // com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest
    public Void performRequestTask() throws AuthenticationException, RemoteException {
        Bundle params = getDefaultCallingParams();
        params.putAll(this._backup);
        Bundle bundle = this._msaSsoService.storeBackup(params);
        SingleSsoRequest.checkForErrors(bundle);
        return null;
    }
}
