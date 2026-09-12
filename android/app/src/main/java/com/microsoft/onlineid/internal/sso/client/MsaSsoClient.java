package com.microsoft.onlineid.internal.sso.client;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.OnlineIdConfiguration;
import com.microsoft.onlineid.SignInOptions;
import com.microsoft.onlineid.SignUpOptions;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.MasterRedirectException;
import com.microsoft.onlineid.internal.sso.SsoService;
import com.microsoft.onlineid.internal.sso.client.request.GetAccountByIdRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetAccountPickerIntentRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetAccountRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetAllAccountsRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetSignInIntentRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetSignOutIntentRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetSignUpIntentRequest;
import com.microsoft.onlineid.internal.sso.client.request.GetTicketRequest;
import com.microsoft.onlineid.internal.sso.client.request.SingleSsoRequest;
import com.microsoft.onlineid.internal.sso.exception.ClientNotAuthorizedException;
import com.microsoft.onlineid.internal.sso.exception.UnsupportedClientVersionException;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.sts.ConfigManager;
import com.microsoft.onlineid.sts.ServerConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MsaSsoClient {
    private final Context _applicationContext;
    private final ServerConfig _config;
    private final ConfigManager _configManager;
    private final MigrationManager _migrationManager;
    private final ServiceFinder _serviceFinder;

    public MsaSsoClient(Context applicationContext) {
        this._applicationContext = applicationContext;
        this._config = new ServerConfig(applicationContext);
        this._serviceFinder = new ServiceFinder(applicationContext);
        this._configManager = new ConfigManager(applicationContext);
        this._migrationManager = new MigrationManager(applicationContext);
    }

    public SsoResponse<AuthenticatorUserAccount> getAccount(OnlineIdConfiguration onlineIdConfiguration, Bundle state) throws AuthenticationException {
        return (SsoResponse) performRequestWithFallback(new GetAccountRequest(this._applicationContext, state, onlineIdConfiguration));
    }

    public AuthenticatorUserAccount getAccountById(String cid, Bundle state) throws AuthenticationException {
        return (AuthenticatorUserAccount) performRequestWithFallback(new GetAccountByIdRequest(this._applicationContext, state, cid));
    }

    public Set<AuthenticatorUserAccount> getAllAccounts(Bundle state) throws AuthenticationException {
        return (Set) performRequestWithFallback(new GetAllAccountsRequest(this._applicationContext, state));
    }

    public PendingIntent getSignInIntent(SignInOptions signInOptions, OnlineIdConfiguration onlineIdConfiguration, Bundle state) throws AuthenticationException {
        return (PendingIntent) performRequestWithFallback(new GetSignInIntentRequest(this._applicationContext, state, signInOptions, onlineIdConfiguration));
    }

    public PendingIntent getSignUpIntent(SignUpOptions signUpOptions, OnlineIdConfiguration onlineIdConfiguration, Bundle state) throws AuthenticationException {
        return (PendingIntent) performRequestWithFallback(new GetSignUpIntentRequest(this._applicationContext, state, signUpOptions, onlineIdConfiguration));
    }

    public PendingIntent getSignOutIntent(String cid, Bundle state) throws AuthenticationException {
        return (PendingIntent) performRequestWithFallback(new GetSignOutIntentRequest(this._applicationContext, state, cid));
    }

    public PendingIntent getAccountPickerIntent(ArrayList<String> cidExclusionList, OnlineIdConfiguration onlineIdConfiguration, Bundle state) throws AuthenticationException {
        return (PendingIntent) performRequestWithFallback(new GetAccountPickerIntentRequest(this._applicationContext, state, cidExclusionList, onlineIdConfiguration));
    }

    public SsoResponse<Ticket> getTicket(String cid, ISecurityScope securityScope, OnlineIdConfiguration onlineIdConfiguration, Bundle state) throws AuthenticationException {
        return (SsoResponse) performRequestWithFallback(new GetTicketRequest(this._applicationContext, state, cid, securityScope, onlineIdConfiguration));
    }

    protected <T> T performRequestWithFallback(SingleSsoRequest<T> singleSsoRequest) throws AuthenticationException {
        this._configManager.updateIfFirstDownloadNeeded();
        this._migrationManager.migrateAndUpgradeStorageIfNeeded();
        int i = this._config.getInt(ServerConfig.Int.MaxTriesForSsoRequestWithFallback);
        if (i < 1) {
            String str = "Invalid MaxTriesForSsoRequestWithFallback: " + i;
            Logger.error(str);
            ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.SsoFallback, str);
            i = 1;
        }
        int i2 = 0;
        boolean z = false;
        Iterator<SsoService> it = this._serviceFinder.getOrderedSsoServices().iterator();
        SsoService next = it.hasNext() ? it.next() : null;
        while (i2 < i && next != null) {
            try {
                return singleSsoRequest.performRequest(next);
            } catch (MasterRedirectException e) {
                String redirectRequestTo = e.getRedirectRequestTo();
                String str2 = "Redirect to: " + redirectRequestTo;
                Logger.info(str2, e);
                ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.SsoFallback, str2);
                next = this._serviceFinder.getSsoService(redirectRequestTo);
                if (next == null) {
                    Logger.error("Cannot find redirected master", e);
                    ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.SsoFallback, "Cannot find redirected master");
                    next = it.hasNext() ? it.next() : null;
                }
                i2++;
            } catch (ClientConfigUpdateNeededException e2) {
                Logger.info("Client needs config update: " + e2.getMessage());
                if (this._configManager.update()) {
                    it = this._serviceFinder.getOrderedSsoServices().iterator();
                    next = it.hasNext() ? it.next() : null;
                    if (!z) {
                        i2--;
                    }
                    z = true;
                }
                i2++;
            } catch (ServiceBindingException e3) {
                next = it.hasNext() ? it.next() : null;
                i2++;
            } catch (ClientNotAuthorizedException e4) {
                return (T) performRequestWithSelf(singleSsoRequest);
            } catch (UnsupportedClientVersionException e5) {
                return (T) performRequestWithSelf(singleSsoRequest);
            }
        }
        String str3 = String.format(Locale.US, "SSO request failed after %d tries", Integer.valueOf(i2));
        Logger.error(str3);
        ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.SsoFallback, str3);
        return (T) performRequestWithSelf(singleSsoRequest);
    }

    private <T> T performRequestWithSelf(SingleSsoRequest<T> request) throws AuthenticationException {
        Logger.info("Attempting to self-service request.");
        return request.performRequest(this._serviceFinder.getSelfSsoService());
    }
}
