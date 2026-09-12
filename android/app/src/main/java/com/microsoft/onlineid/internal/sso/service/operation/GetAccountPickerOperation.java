package com.microsoft.onlineid.internal.sso.service.operation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.internal.ui.AccountPickerActivity;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetAccountPickerOperation extends ServiceOperation {
    public GetAccountPickerOperation(Context applicationContext, Bundle params, AuthenticatorAccountManager accountManager, TicketManager ticketManager) {
        super(applicationContext, params, accountManager, ticketManager);
    }

    @Override // com.microsoft.onlineid.internal.sso.service.operation.ServiceOperation
    public Bundle call() {
        ArrayList<String> excludedCids = getParameters().getStringArrayList(BundleMarshaller.CidExclusionListKey);
        AppProperties appProperties = BundleMarshaller.appPropertiesFromBundle(getParameters());
        appProperties.setLegacyParameters(getParameters());
        Set<String> set = new HashSet<>();
        if (excludedCids != null) {
            set.addAll(excludedCids);
        }
        Set<AuthenticatorUserAccount> accounts = getAccountManager().getFilteredAccounts(set);
        if (!accounts.isEmpty()) {
            Intent pickerIntent = AccountPickerActivity.getAccountPickerIntent(getContext(), excludedCids, appProperties, getCallingPackage(), getCallerStateBundle());
            return BundleMarshaller.pendingIntentToBundle(getPendingIntentBuilder(pickerIntent).setContext(getContext()).buildActivity());
        }
        return new GetSignInIntentOperation(getContext(), getParameters(), getAccountManager(), getTicketManager()).call();
    }
}
