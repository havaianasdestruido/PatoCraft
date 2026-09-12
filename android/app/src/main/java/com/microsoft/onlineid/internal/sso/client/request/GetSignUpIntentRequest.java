package com.microsoft.onlineid.internal.sso.client.request;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.microsoft.onlineid.OnlineIdConfiguration;
import com.microsoft.onlineid.SignUpOptions;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.Bundles;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GetSignUpIntentRequest extends SingleSsoRequest<PendingIntent> {
    private final OnlineIdConfiguration _onlineIdConfiguration;
    private final SignUpOptions _signUpOptions;

    public GetSignUpIntentRequest(Context applicationContext, Bundle state, SignUpOptions signUpOptions, OnlineIdConfiguration onlineIdConfiguration) {
        super(applicationContext, state);
        this._signUpOptions = signUpOptions == null ? new SignUpOptions() : signUpOptions;
        this._onlineIdConfiguration = onlineIdConfiguration == null ? new OnlineIdConfiguration() : onlineIdConfiguration;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest
    public PendingIntent performRequestTask() throws AuthenticationException, RemoteException {
        Bundle params = getDefaultCallingParams();
        Bundle appParameters = Bundles.merge(this._onlineIdConfiguration.asBundle(), this._signUpOptions.asBundle());
        params.putAll(BundleMarshaller.appPropertiesToBundle(appParameters));
        Bundle bundle = this._msaSsoService.getSignUpIntent(params);
        SingleSsoRequest.checkForErrors(bundle);
        return BundleMarshaller.pendingIntentFromBundle(bundle);
    }
}
