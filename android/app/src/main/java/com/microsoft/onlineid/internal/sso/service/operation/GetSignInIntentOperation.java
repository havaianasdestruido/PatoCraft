package com.microsoft.onlineid.internal.sso.service.operation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.ui.AddAccountActivity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetSignInIntentOperation extends ServiceOperation {
    public GetSignInIntentOperation(Context applicationContext, Bundle params, AuthenticatorAccountManager accountManager, TicketManager ticketManager) {
        super(applicationContext, params, accountManager, ticketManager);
    }

    @Override // com.microsoft.onlineid.internal.sso.service.operation.ServiceOperation
    public Bundle call() {
        AppProperties appProperties = BundleMarshaller.appPropertiesFromBundle(getParameters());
        appProperties.setLegacyParameters(getParameters());
        Intent signInIntent = AddAccountActivity.getSignInIntent(getContext(), appProperties.toBundle(), getCallingPackage(), getCallerStateBundle());
        return BundleMarshaller.pendingIntentToBundle(getPendingIntentBuilder(signInIntent).setContext(getContext()).buildActivity());
    }
}
