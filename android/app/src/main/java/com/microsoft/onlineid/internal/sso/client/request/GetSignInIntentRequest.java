package com.microsoft.onlineid.internal.sso.client.request;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.microsoft.onlineid.OnlineIdConfiguration;
import com.microsoft.onlineid.SignInOptions;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.Bundles;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetSignInIntentRequest extends SingleSsoRequest<PendingIntent> {
    private final OnlineIdConfiguration _onlineIdConfiguration;
    private final SignInOptions _signInOptions;

    public GetSignInIntentRequest(Context applicationContext, Bundle state, SignInOptions signInOptions, OnlineIdConfiguration onlineIdConfiguration) {
        super(applicationContext, state);
        this._signInOptions = signInOptions == null ? new SignInOptions() : signInOptions;
        this._onlineIdConfiguration = onlineIdConfiguration == null ? new OnlineIdConfiguration() : onlineIdConfiguration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest
    public PendingIntent performRequestTask() throws AuthenticationException, RemoteException {
        Bundle params = getDefaultCallingParams();
        Bundle appParameters = Bundles.merge(this._onlineIdConfiguration.asBundle(), this._signInOptions.asBundle());
        params.putAll(BundleMarshaller.appPropertiesToBundle(appParameters));
        Bundle bundle = this._msaSsoService.getSignInIntent(params);
        SingleSsoRequest.checkForErrors(bundle);
        return BundleMarshaller.pendingIntentFromBundle(bundle);
    }
}
