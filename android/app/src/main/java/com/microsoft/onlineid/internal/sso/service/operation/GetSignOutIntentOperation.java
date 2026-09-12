package com.microsoft.onlineid.internal.sso.service.operation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.exception.AccountNotFoundException;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.ui.SignOutActivity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetSignOutIntentOperation extends ServiceOperation {
    public GetSignOutIntentOperation(Context applicationContext, Bundle params, AuthenticatorAccountManager accountManager, TicketManager ticketManager) {
        super(applicationContext, params, accountManager, ticketManager);
    }

    @Override // com.microsoft.onlineid.internal.sso.service.operation.ServiceOperation
    public Bundle call() throws AccountNotFoundException {
        String cid = getParameters().getString(BundleMarshaller.UserCidKey);
        Strings.verifyArgumentNotNullOrEmpty(cid, BundleMarshaller.UserCidKey);
        AuthenticatorUserAccount account = getAccountManager().getAccountByCid(cid);
        if (account == null) {
            throw new AccountNotFoundException("No account was found with the specified ID.");
        }
        Intent signOutIntent = SignOutActivity.getSignOutIntent(getContext(), account.getPuid(), account.getCid(), account.getUsername(), getCallerStateBundle());
        return BundleMarshaller.pendingIntentToBundle(getPendingIntentBuilder(signOutIntent).setContext(getContext()).buildActivity());
    }
}
