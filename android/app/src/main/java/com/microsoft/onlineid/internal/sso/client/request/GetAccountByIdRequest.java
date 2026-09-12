package com.microsoft.onlineid.internal.sso.client.request;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetAccountByIdRequest extends SingleSsoRequest<AuthenticatorUserAccount> {
    private final String _cid;

    public GetAccountByIdRequest(Context applicationContext, Bundle state, String cid) {
        super(applicationContext, state);
        this._cid = cid;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest
    public AuthenticatorUserAccount performRequestTask() throws AuthenticationException, RemoteException {
        Bundle params = getDefaultCallingParams();
        params.putString(BundleMarshaller.UserCidKey, this._cid);
        Bundle bundle = this._msaSsoService.getAccountById(params);
        SingleSsoRequest.checkForErrors(bundle);
        return BundleMarshaller.limitedUserAccountFromBundle(bundle);
    }
}
