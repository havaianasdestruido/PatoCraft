package com.microsoft.onlineid.internal.ui;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.SecurityScope;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.InternalException;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.ApiResult;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.NetworkConnectivity;
import com.microsoft.onlineid.internal.PackageInfoHelper;
import com.microsoft.onlineid.internal.exception.AccountNotFoundException;
import com.microsoft.onlineid.internal.exception.PromptNeededException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.sts.DAToken;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.exception.InlineFlowException;
import com.microsoft.onlineid.userdata.SignUpData;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class JavaScriptBridge {
    private static final String PPCRL_REQUEST_E_USER_CANCELED = "80048842";
    private IWebPropertyProvider _assetBundlePropertyProvider;
    private boolean _isOutOfBandInterrupt;
    private final PropertyBag _propertyBag;
    private final ServerConfig _serverConfig;
    private final WebTelemetryRecorder _telemetryRecorder;
    private final TicketManager _ticketManager;
    private final TypedStorage _typedStorage;
    private final WebFlowActivity _webFlowActivity;

    @Deprecated
    public JavaScriptBridge() {
        this._webFlowActivity = null;
        this._telemetryRecorder = null;
        this._propertyBag = null;
        this._serverConfig = null;
        this._typedStorage = null;
        this._ticketManager = null;
    }

    public JavaScriptBridge(WebFlowActivity webFlowActivity, WebTelemetryRecorder telemetryRecorder, WebFlowTelemetryData telemetryData) {
        this._webFlowActivity = webFlowActivity;
        this._telemetryRecorder = telemetryRecorder;
        this._propertyBag = new PropertyBag();
        Context applicationContext = this._webFlowActivity.getApplicationContext();
        this._serverConfig = new ServerConfig(applicationContext);
        this._typedStorage = new TypedStorage(applicationContext);
        this._ticketManager = new TicketManager(applicationContext);
        populatePropertyBag();
        populateTelemetryData(telemetryData);
    }

    public void setAssetBundlePropertyProvider(IWebPropertyProvider provider) {
        this._assetBundlePropertyProvider = provider;
    }

    protected void populatePropertyBag() {
        Context applicationContext = this._webFlowActivity.getApplicationContext();
        SignUpData signUpData = new SignUpData(applicationContext);
        this._propertyBag.set(PropertyBag.Key.PfFirstName, signUpData.getFirstName());
        this._propertyBag.set(PropertyBag.Key.PfLastName, signUpData.getLastName());
        this._propertyBag.set(PropertyBag.Key.PfPhone, signUpData.getPhone());
        this._propertyBag.set(PropertyBag.Key.PfCountryCode, signUpData.getCountryCode());
    }

    private void populateTelemetryData(WebFlowTelemetryData telemetryData) {
        try {
            Context applicationContext = this._webFlowActivity.getApplicationContext();
            boolean isRequestorMaster = PackageInfoHelper.isCurrentApp(telemetryData.getCallingAppPackageName(), applicationContext);
            this._propertyBag.set(PropertyBag.Key.TelemetryAppVersion, telemetryData.getCallingAppVersionName());
            this._propertyBag.set(PropertyBag.Key.TelemetryIsRequestorMaster, Boolean.toString(isRequestorMaster));
            this._propertyBag.set(PropertyBag.Key.TelemetryNetworkType, NetworkConnectivity.getNetworkTypeForServerTelemetry(applicationContext));
            this._propertyBag.set(PropertyBag.Key.TelemetryPrecaching, Boolean.toString(telemetryData.getWasPrecachingEnabled()));
        } catch (Exception e) {
            Logger.error("Encountered error setting telemetry items in property bag.", e);
        }
    }

    @JavascriptInterface
    public void FinalBack() {
        this._webFlowActivity.cancel();
    }

    @JavascriptInterface
    public void FinalNext() {
        String action = this._webFlowActivity.getIntent().getAction();
        String errorCode = this._propertyBag.get(PropertyBag.Key.ErrorCode);
        try {
            if (TextUtils.isEmpty(errorCode)) {
                if (WebFlowActivity.ActionSignIn.equals(action) || WebFlowActivity.ActionSignUp.equals(action)) {
                    handleSignInResult();
                    return;
                } else {
                    if (WebFlowActivity.ActionResolveInterrupt.equals(action)) {
                        handleInterruptResult();
                        return;
                    }
                    throw new InternalException("Unknown Action: " + action);
                }
            }
            if (this._isOutOfBandInterrupt) {
                this._webFlowActivity.cancel();
                return;
            }
            String extendedErrorString = this._propertyBag.get(PropertyBag.Key.ExtendedErrorString);
            if (extendedErrorString != null && extendedErrorString.contains(PPCRL_REQUEST_E_USER_CANCELED)) {
                FinalBack();
                return;
            }
            throw new InlineFlowException(this._propertyBag.get(PropertyBag.Key.ErrorString), this._propertyBag.get(PropertyBag.Key.ErrorURL), errorCode, extendedErrorString);
        } catch (Exception ex) {
            ClientAnalytics.get().logException(ex);
            Logger.error("Web flow with action " + action + " failed.", ex);
            this._webFlowActivity.sendResult(1, new ApiResult().setException(ex).asBundle());
        }
    }

    protected void handleSignInResult() throws NetworkException, InternalException {
        AuthenticatorUserAccount account = createAccountFromProperties(this._propertyBag);
        if (account.isNewAndInOutOfBandInterrupt()) {
            boolean isProduction = ServerConfig.KnownEnvironment.Production.getEnvironment().equals(this._serverConfig.getEnvironment());
            ISecurityScope scope = new SecurityScope(isProduction ? "ssl.live.com" : "ssl.live-int.com", "mbi_ssl");
            try {
                this._ticketManager.getTicketNoCache(account, scope, null);
                return;
            } catch (PromptNeededException ex) {
                final Intent intent = ex.getRequest().asIntent();
                intent.removeExtra(ApiRequest.Extras.Continuation.getKey());
                intent.fillIn(this._webFlowActivity.getIntent(), 0);
                intent.setAction(WebFlowActivity.ActionResolveInterrupt);
                intent.putExtra(BundleMarshaller.WebFlowTelemetryRequestedKey, this._telemetryRecorder.isRequested());
                this._webFlowActivity.runOnUiThread(new Runnable() { // from class: com.microsoft.onlineid.internal.ui.JavaScriptBridge.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JavaScriptBridge.this._webFlowActivity.setIntent(intent);
                        JavaScriptBridge.this._webFlowActivity.recreate();
                    }
                });
                return;
            }
        }
        this._typedStorage.writeAccount(account);
        this._webFlowActivity.sendResult(-1, new ApiResult().setAccountPuid(account.getPuid()).asBundle());
    }

    protected void handleInterruptResult() throws InternalException, AccountNotFoundException {
        String accountPuid = new ApiRequest(null, this._webFlowActivity.getIntent()).getAccountPuid();
        AuthenticatorUserAccount account = this._typedStorage.readAccount(accountPuid);
        if (account == null) {
            throw new AccountNotFoundException("Account was deleted before interrupt could be resolved.");
        }
        String tokenValue = this._propertyBag.get(PropertyBag.Key.DAToken);
        String encodedSessionKey = this._propertyBag.get(PropertyBag.Key.DASessionKey);
        if (!TextUtils.isEmpty(tokenValue) && !TextUtils.isEmpty(encodedSessionKey)) {
            try {
                byte[] sessionKey = Base64.decode(encodedSessionKey, 2);
                account.setDAToken(new DAToken(tokenValue, sessionKey));
                this._typedStorage.writeAccount(account);
            } catch (IllegalArgumentException e) {
                String message = "Could not decode Base64: " + encodedSessionKey;
                Logger.error(message);
                throw new InternalException("Session Key from interrupt resolution was invalid.");
            }
        } else {
            Logger.warning("WebWizard property bag did not have DAToken/SessionKey");
        }
        String flowToken = this._propertyBag.get(PropertyBag.Key.STSInlineFlowToken);
        if (TextUtils.isEmpty(flowToken)) {
            Logger.error("Interrupt resolution did not return a flow token.");
            Assertion.check(false, "Interrupt resolution did not return a flow token.");
        }
        this._webFlowActivity.sendResult(-1, new ApiResult().setFlowToken(flowToken).asBundle());
    }

    @JavascriptInterface
    public void Property(String propertyName, String newPropertyValue) {
        PropertyBag.Key key = getKeyForName(propertyName);
        if (key != null) {
            if (this._assetBundlePropertyProvider != null && this._assetBundlePropertyProvider.handlesProperty(key)) {
                this._assetBundlePropertyProvider.setProperty(key, newPropertyValue);
                return;
            }
            this._propertyBag.set(key, newPropertyValue);
            if (key.equals(PropertyBag.Key.IsSignUp)) {
                Logger.info(PropertyBag.Key.IsSignUp + "=" + newPropertyValue);
                ClientAnalytics.get().logEvent(ClientAnalytics.AppAccountsCategory, ClientAnalytics.SignUp);
            }
        }
    }

    @JavascriptInterface
    public String Property(String propertyName) {
        PropertyBag.Key key = getKeyForName(propertyName);
        if (key == null) {
            return null;
        }
        if (this._assetBundlePropertyProvider != null && this._assetBundlePropertyProvider.handlesProperty(key)) {
            return this._assetBundlePropertyProvider.getProperty(key);
        }
        return this._propertyBag.get(key);
    }

    void setIsOutOfBandInterrupt() {
        this._isOutOfBandInterrupt = true;
    }

    protected void validateProperty(PropertyBag.Key key, String value) throws InternalException {
        if (TextUtils.isEmpty(value)) {
            String message = "PropertyBag was missing required property: " + key.name();
            Logger.error(message);
            throw new InternalException(message);
        }
    }

    protected AuthenticatorUserAccount createAccountFromProperties(PropertyBag properties) throws InternalException {
        String tokenValue = properties.get(PropertyBag.Key.DAToken);
        String encodedSessionKey = properties.get(PropertyBag.Key.DASessionKey);
        String username = properties.get(PropertyBag.Key.SigninName);
        String cid = properties.get(PropertyBag.Key.CID);
        String puid = properties.get(PropertyBag.Key.PUID);
        validateProperty(PropertyBag.Key.DAToken, tokenValue);
        validateProperty(PropertyBag.Key.DASessionKey, encodedSessionKey);
        validateProperty(PropertyBag.Key.SigninName, username);
        byte[] sessionKey = Base64.decode(encodedSessionKey, 2);
        DAToken token = new DAToken(tokenValue, sessionKey);
        return new AuthenticatorUserAccount(puid, cid, username, token);
    }

    private static PropertyBag.Key getKeyForName(String propertyName) {
        if (propertyName == null) {
            Assertion.check(false);
            return null;
        }
        try {
            return PropertyBag.Key.valueOf(propertyName);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    @JavascriptInterface
    public void ReportTelemetry(String jsonEvent) {
        if (this._telemetryRecorder != null) {
            this._telemetryRecorder.recordEvent(jsonEvent);
        }
    }
}
