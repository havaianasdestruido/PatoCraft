package com.microsoft.onlineid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Bundle;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.exception.InternalException;
import com.microsoft.onlineid.internal.ActivityResultSender;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.Bundles;
import com.microsoft.onlineid.internal.IFailureCallback;
import com.microsoft.onlineid.internal.IUserInteractionCallback;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.internal.exception.AccountNotFoundException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sso.BundleMarshallerException;
import com.microsoft.onlineid.internal.sso.client.MsaSsoClient;
import com.microsoft.onlineid.internal.sso.client.SsoResponse;
import com.microsoft.onlineid.internal.sso.client.SsoRunnable;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AccountManager {
    private IAccountCallback _accountCallback;
    private IAccountCollectionCallback _accountCollectionCallback;
    private final Context _applicationContext;
    private final OnlineIdConfiguration _onlineIdConfiguration;
    private final MsaSsoClient _ssoClient;
    private ITelemetryCallback _telemetryCallback;
    private ITicketCallback _ticketCallback;

    public AccountManager(Context applicationContext) {
        this(applicationContext, new OnlineIdConfiguration());
    }

    public AccountManager(Context context, OnlineIdConfiguration onlineIdConfiguration) {
        this._applicationContext = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this._onlineIdConfiguration = onlineIdConfiguration == null ? new OnlineIdConfiguration() : onlineIdConfiguration;
        this._ssoClient = new MsaSsoClient(this._applicationContext);
        ClientAnalytics.initialize(this._applicationContext);
        Logger.initialize(this._applicationContext);
    }

    public void getAccount(Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        new Thread(getAccountRunnable(state)).start();
    }

    protected SsoRunnable getAccountRunnable(final Bundle state) {
        return new SsoRunnable(this._accountCallback, state) { // from class: com.microsoft.onlineid.AccountManager.1
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                SsoResponse<AuthenticatorUserAccount> ssoResponse = AccountManager.this._ssoClient.getAccount(AccountManager.this._onlineIdConfiguration, state);
                if (!ssoResponse.hasData()) {
                    AccountManager.this._accountCallback.onUINeeded(ssoResponse.getPendingIntent(), state);
                } else {
                    AccountManager.this._accountCallback.onAccountAcquired(new UserAccount(AccountManager.this.getAccountManager(), ssoResponse.getData()), state);
                }
            }
        };
    }

    public void getSignInIntent(SignInOptions options, Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        new Thread(getSignInIntentRunnable(options, state)).start();
    }

    protected SsoRunnable getSignInIntentRunnable(final SignInOptions options, final Bundle state) {
        return new SsoRunnable(this._accountCallback, state) { // from class: com.microsoft.onlineid.AccountManager.2
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                PendingIntent intent = AccountManager.this._ssoClient.getSignInIntent(options, AccountManager.this._onlineIdConfiguration, state);
                AccountManager.this._accountCallback.onUINeeded(intent, state);
            }
        };
    }

    public void getSignUpIntent(Bundle state) {
        getSignUpIntent(null, state);
    }

    public void getSignUpIntent(SignUpOptions options, Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        new Thread(getSignUpIntentRunnable(options, state)).start();
    }

    protected SsoRunnable getSignUpIntentRunnable(final SignUpOptions options, final Bundle state) {
        return new SsoRunnable(this._accountCallback, state) { // from class: com.microsoft.onlineid.AccountManager.3
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                PendingIntent intent = AccountManager.this._ssoClient.getSignUpIntent(options, AccountManager.this._onlineIdConfiguration, state);
                AccountManager.this._accountCallback.onUINeeded(intent, state);
            }
        };
    }

    public void getAccountById(String cid, Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        new Thread(getAccountByIdRunnable(cid, state)).start();
    }

    protected SsoRunnable getAccountByIdRunnable(final String cid, final Bundle state) {
        return new SsoRunnable(this._accountCallback, state) { // from class: com.microsoft.onlineid.AccountManager.4
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                try {
                    Strings.verifyArgumentNotNullOrEmpty(cid, "cid");
                    AuthenticatorUserAccount user = AccountManager.this._ssoClient.getAccountById(cid, state);
                    AccountManager.this._accountCallback.onAccountAcquired(new UserAccount(AccountManager.this.getAccountManager(), user), state);
                } catch (AccountNotFoundException e) {
                    AccountManager.this._accountCallback.onAccountSignedOut(cid, false, state);
                }
            }
        };
    }

    public void getAllAccounts(Bundle state) {
        verifyCallback(this._accountCollectionCallback, IAccountCollectionCallback.class.getSimpleName());
        new Thread(getAllAccountsRunnable(state)).start();
    }

    protected SsoRunnable getAllAccountsRunnable(final Bundle state) {
        return new SsoRunnable(this._accountCollectionCallback, state) { // from class: com.microsoft.onlineid.AccountManager.5
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                Set<AuthenticatorUserAccount> fullAccounts = AccountManager.this._ssoClient.getAllAccounts(state);
                Set<UserAccount> result = new HashSet<>();
                for (AuthenticatorUserAccount account : fullAccounts) {
                    result.add(new UserAccount(AccountManager.this.getAccountManager(), account));
                }
                AccountManager.this._accountCollectionCallback.onAccountCollectionAcquired(result, state);
            }
        };
    }

    public void getAccountPickerIntent(Iterable<String> cidExclusionList, Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        new Thread(getAccountPickerIntentRunnable(cidExclusionList, state)).start();
    }

    protected SsoRunnable getAccountPickerIntentRunnable(final Iterable<String> cidExclusionList, final Bundle state) {
        return new SsoRunnable(this._accountCallback, state) { // from class: com.microsoft.onlineid.AccountManager.6
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                ArrayList<String> excludedCids = new ArrayList<>();
                if (cidExclusionList != null) {
                    for (String cid : cidExclusionList) {
                        excludedCids.add(cid);
                    }
                }
                PendingIntent intent = AccountManager.this._ssoClient.getAccountPickerIntent(excludedCids, AccountManager.this._onlineIdConfiguration, state);
                AccountManager.this._accountCallback.onUINeeded(intent, state);
            }
        };
    }

    public void getSignOutIntent(UserAccount account, Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        new Thread(getSignOutIntentRunnable(account, state)).start();
    }

    protected SsoRunnable getSignOutIntentRunnable(final UserAccount account, final Bundle state) {
        return new SsoRunnable(this._accountCallback, state) { // from class: com.microsoft.onlineid.AccountManager.7
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                try {
                    PendingIntent intent = AccountManager.this._ssoClient.getSignOutIntent(account.getCid(), state);
                    AccountManager.this._accountCallback.onUINeeded(intent, state);
                } catch (AccountNotFoundException e) {
                    AccountManager.this._accountCallback.onAccountSignedOut(account.getCid(), false, state);
                }
            }
        };
    }

    void getTicket(UserAccount account, ISecurityScope scope, Bundle state) {
        verifyCallback(this._accountCallback, IAccountCallback.class.getSimpleName());
        verifyCallback(this._ticketCallback, ITicketCallback.class.getSimpleName());
        new Thread(getTicketRunnable(account, scope, state)).start();
    }

    protected SsoRunnable getTicketRunnable(final UserAccount account, final ISecurityScope scope, final Bundle state) {
        return new SsoRunnable(this._ticketCallback, state) { // from class: com.microsoft.onlineid.AccountManager.8
            @Override // com.microsoft.onlineid.internal.sso.client.SsoRunnable
            public void performRequest() throws AuthenticationException {
                try {
                    SsoResponse<Ticket> ssoResponse = AccountManager.this._ssoClient.getTicket(account.getCid(), scope, AccountManager.this._onlineIdConfiguration, state);
                    if (ssoResponse.hasData()) {
                        AccountManager.this._ticketCallback.onTicketAcquired(ssoResponse.getData(), account, state);
                    } else {
                        AccountManager.this._ticketCallback.onUINeeded(ssoResponse.getPendingIntent(), state);
                    }
                } catch (AccountNotFoundException e) {
                    AccountManager.this._accountCallback.onAccountSignedOut(account.getCid(), false, state);
                }
            }
        };
    }

    public boolean onActivityResult(int requestCode, int resultCode, Intent data) {
        String resultTypeString = null;
        ActivityResultSender.ResultType resultType = null;
        Bundle extras = null;
        Bundle state = null;
        if (data != null) {
            try {
                extras = data.getExtras();
                if (extras != null) {
                    state = extras.getBundle(BundleMarshaller.ClientStateBundleKey);
                    resultTypeString = extras.getString(BundleMarshaller.ActivityResultTypeKey);
                    resultType = ActivityResultSender.ResultType.fromString(resultTypeString);
                }
            } catch (BadParcelableException e) {
                Logger.info("Caught BadParcelableException when checking extras, ignoring: " + e);
                return false;
            } catch (RuntimeException e2) {
                if (e2.getCause() != null && (e2.getCause() instanceof ClassNotFoundException)) {
                    Logger.info("Caught RuntimeException when checking extras, ignoring: " + e2);
                    return false;
                }
                throw e2;
            }
        }
        if (Settings.isDebugBuild()) {
            Logger.info("Activity result: request: " + requestCode + ", result: " + resultCode);
            Bundles.log("With extras:", extras);
        }
        if (resultType == null) {
            Logger.info("Unknown result type (" + resultTypeString + ") encountered, ignoring.");
            return false;
        }
        IUserInteractionCallback uiCallback = resultType == ActivityResultSender.ResultType.Ticket ? this._ticketCallback : this._accountCallback;
        IFailureCallback failureCallback = resultType == ActivityResultSender.ResultType.Ticket ? this._ticketCallback : this._accountCallback;
        if (extras != null && this._telemetryCallback != null) {
            ArrayList<String> webTelemetryEvents = extras.getStringArrayList(BundleMarshaller.WebFlowTelemetryEventsKey);
            boolean wereAllEventsCaptured = extras.getBoolean(BundleMarshaller.WebFlowTelemetryAllEventsCapturedKey, false);
            if (webTelemetryEvents != null && !webTelemetryEvents.isEmpty()) {
                this._telemetryCallback.webTelemetryEventsReceived(webTelemetryEvents, wereAllEventsCaptured);
            }
        }
        if (resultCode == 0) {
            uiCallback.onUserCancel(state);
        } else if (resultCode == -1) {
            try {
                if (BundleMarshaller.hasError(extras)) {
                    AuthenticationException exception = BundleMarshaller.exceptionFromBundle(extras);
                    if (exception instanceof AccountNotFoundException) {
                        String cid = extras.getString(BundleMarshaller.UserCidKey);
                        Assertion.check(cid != null, "Expect to find a CID for sign-out notification.");
                        boolean thisAppOnly = extras.getBoolean(BundleMarshaller.IsSignedOutOfThisAppOnlyKey);
                        this._accountCallback.onAccountSignedOut(cid, thisAppOnly, state);
                    } else {
                        failureCallback.onFailure(exception, state);
                    }
                } else if (BundleMarshaller.hasPendingIntent(extras)) {
                    uiCallback.onUINeeded(BundleMarshaller.pendingIntentFromBundle(extras), state);
                } else if (resultType == ActivityResultSender.ResultType.Ticket && BundleMarshaller.hasTicket(extras)) {
                    AuthenticatorUserAccount account = BundleMarshaller.limitedUserAccountFromBundle(extras);
                    Ticket ticket = BundleMarshaller.ticketFromBundle(extras);
                    this._ticketCallback.onTicketAcquired(ticket, new UserAccount(this, account), state);
                } else if (resultType == ActivityResultSender.ResultType.Account && BundleMarshaller.hasLimitedUserAccount(extras)) {
                    AuthenticatorUserAccount account2 = BundleMarshaller.limitedUserAccountFromBundle(extras);
                    this._accountCallback.onAccountAcquired(new UserAccount(this, account2), state);
                } else {
                    failureCallback.onFailure(new InternalException("Unexpected onActivityResult found."), state);
                }
            } catch (BundleMarshallerException e3) {
                failureCallback.onFailure(new InternalException(e3), state);
            }
        }
        return true;
    }

    public AccountManager setAccountCallback(IAccountCallback callback) {
        this._accountCallback = callback;
        return this;
    }

    public AccountManager setTicketCallback(ITicketCallback callback) {
        this._ticketCallback = callback;
        return this;
    }

    public AccountManager setAccountCollectionCallback(IAccountCollectionCallback callback) {
        this._accountCollectionCallback = callback;
        return this;
    }

    public AccountManager setTelemetryCallback(ITelemetryCallback callback) {
        this._telemetryCallback = callback;
        return this;
    }

    private void verifyCallback(Object callback, String callbackName) {
        if (callback == null) {
            throw new IllegalStateException("You must specify an " + callbackName + " before invoking this method.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccountManager getAccountManager() {
        return this;
    }
}
