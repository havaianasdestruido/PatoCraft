package com.microsoft.onlineid.internal.sso.service.operation;

import android.content.Context;
import android.os.Bundle;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.exception.InternalException;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.ApiResult;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.BlockingApiRequestResultReceiver;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.exception.AccountNotFoundException;
import com.microsoft.onlineid.internal.exception.UserCancelledException;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sso.client.SsoResponse;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetTicketOperation extends ServiceOperation {
    public GetTicketOperation(Context applicationContext, Bundle params, AuthenticatorAccountManager accountManager, TicketManager ticketManager) {
        super(applicationContext, params, accountManager, ticketManager);
    }

    @Override // com.microsoft.onlineid.internal.sso.service.operation.ServiceOperation
    public Bundle call() throws NetworkException, InternalException, AccountNotFoundException {
        Bundle bundlePendingIntentToBundle;
        String cid = getParameters().getString(BundleMarshaller.UserCidKey);
        Strings.verifyArgumentNotNullOrEmpty(cid, BundleMarshaller.UserCidKey);
        AuthenticatorUserAccount account = getAccountManager().getAccountByCid(cid);
        if (account == null) {
            throw new AccountNotFoundException();
        }
        ISecurityScope scope = BundleMarshaller.scopeFromBundle(getParameters());
        AppProperties appProperties = BundleMarshaller.appPropertiesFromBundle(getParameters());
        appProperties.setLegacyParameters(getParameters());
        String cobrandingId = appProperties.get(AppProperties.CobrandIdKey);
        boolean webTelemetryRequested = appProperties.is(AppProperties.ClientWebTelemetryRequestedKey);
        BlockingApiRequestResultReceiver<Ticket> receiver = new BlockingApiRequestResultReceiver<Ticket>() { // from class: com.microsoft.onlineid.internal.sso.service.operation.GetTicketOperation.1
            @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
            protected void onSuccess(ApiResult result) {
                setResult(result.getTicket());
            }
        };
        ApiRequest ticketRequest = new TicketManager(getContext()).createTicketRequest(account.getPuid(), scope, getCallingPackage(), cobrandingId, getCallerStateBundle()).setIsWebFlowTelemetryRequested(webTelemetryRequested).setIsSdkRequest(true).setResultReceiver(receiver);
        getContext().startService(ticketRequest.asIntent());
        try {
            SsoResponse<Ticket> response = receiver.blockForResult();
            if (response.hasData()) {
                bundlePendingIntentToBundle = BundleMarshaller.ticketToBundle(response.getData());
            } else if (response.hasPendingIntent()) {
                bundlePendingIntentToBundle = BundleMarshaller.pendingIntentToBundle(response.getPendingIntent());
            } else {
                Assertion.check(false, "GetTicketOperation did not receive an expected result from MsaService.");
                throw new InternalException("GetTicketOperation did not receive an expected result from MsaService.");
            }
            return bundlePendingIntentToBundle;
        } catch (UserCancelledException e) {
            Assertion.check(false, "Unexpected UserCancelledException caught in GetTicketOperation.");
            return BundleMarshaller.exceptionToBundle(e);
        } catch (Exception e2) {
            return BundleMarshaller.exceptionToBundle(e2);
        }
    }
}
