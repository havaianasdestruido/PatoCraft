package com.microsoft.onlineid.internal.sso.service.operation;

import android.content.Context;
import android.os.Bundle;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetAllAccountsOperation extends ServiceOperation {
    public GetAllAccountsOperation(Context context, Bundle params, AuthenticatorAccountManager accountManager, TicketManager ticketManager) {
        super(context, params, accountManager, ticketManager);
    }

    @Override // com.microsoft.onlineid.internal.sso.service.operation.ServiceOperation
    public Bundle call() {
        ArrayList<Bundle> accountsBundles = new ArrayList<>();
        for (AuthenticatorUserAccount account : getAccountManager().getAccounts()) {
            accountsBundles.add(BundleMarshaller.limitedUserAccountToBundle(account));
        }
        Bundle accountsBundle = new Bundle();
        accountsBundle.putParcelableArrayList(BundleMarshaller.AllUsersKey, accountsBundles);
        return accountsBundle;
    }
}
