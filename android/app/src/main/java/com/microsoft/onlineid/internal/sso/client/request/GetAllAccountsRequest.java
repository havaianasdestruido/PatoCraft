package com.microsoft.onlineid.internal.sso.client.request;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sso.BundleMarshallerException;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetAllAccountsRequest extends SingleSsoRequest<Set<AuthenticatorUserAccount>> {
    public GetAllAccountsRequest(Context applicationContext, Bundle state) {
        super(applicationContext, state);
    }

    @Override // com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest
    public Set<AuthenticatorUserAccount> performRequestTask() throws AuthenticationException, RemoteException {
        Bundle bundle = this._msaSsoService.getAllAccounts(getDefaultCallingParams());
        SingleSsoRequest.checkForErrors(bundle);
        Set<AuthenticatorUserAccount> accounts = new HashSet<>();
        List<Bundle> accountsBundles = bundle.getParcelableArrayList(BundleMarshaller.AllUsersKey);
        for (Bundle accountBundle : accountsBundles) {
            try {
                accounts.add(BundleMarshaller.limitedUserAccountFromBundle(accountBundle));
            } catch (BundleMarshallerException e) {
                Logger.error("Encountered an error while trying to unbundle accounts.", e);
                ClientAnalytics.get().logException(e);
            }
        }
        return accounts;
    }
}
