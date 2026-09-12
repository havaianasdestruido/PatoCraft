package com.microsoft.onlineid.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.InternalException;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.ActivityResultSender;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.ApiResult;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.Applications;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.Intents;
import com.microsoft.onlineid.internal.NetworkConnectivity;
import com.microsoft.onlineid.internal.PackageInfoHelper;
import com.microsoft.onlineid.internal.Resources;
import com.microsoft.onlineid.internal.Uris;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sso.client.BackupService;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.internal.ui.WebFlowActivity;
import com.microsoft.onlineid.internal.ui.WebFlowTelemetryData;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.sts.ServerConfig;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AddAccountActivity extends Activity {
    protected static final int AccountAddedRequest = 2;
    public static final String ActionAddAccount = "com.microsoft.onlineid.internal.ADD_ACCOUNT";
    public static final String ActionSignUpAccount = "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT";
    protected static final int AddPendingRequest = 1;
    protected static final int NoRequest = -1;
    public static final String PlatformLabel = "platform";
    public static final String PlatformName = "android";
    protected static final int SignInWebFlowRequest = 0;
    private static final String WReplyLabel = "wreply";
    protected String _accountPuid;
    protected Handler _handler;
    protected int _pendingChildRequest = -1;
    private ActivityResultSender _resultSender;
    protected TypedStorage _typedStorage;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Uri startUri;
        super.onCreate(savedInstanceState);
        ServerConfig serverConfig = new ServerConfig(getApplicationContext());
        String clientPackageName = getIntent().getStringExtra(BundleMarshaller.ClientPackageNameKey);
        boolean isCallerMsa = PackageInfoHelper.isAuthenticatorApp(clientPackageName);
        this._resultSender = new ActivityResultSender(this, ActivityResultSender.ResultType.Account);
        String action = getIntent().getAction();
        AppProperties appProperties = BundleMarshaller.appPropertiesFromBundle(getIntent().getExtras());
        boolean precachingEnabled = appProperties.is(AppProperties.ClientWebTelemetryPrecachingEnabledKey);
        boolean webTelemetryRequested = appProperties.is(AppProperties.ClientWebTelemetryRequestedKey);
        if (ActionSignUpAccount.equals(action)) {
            startUri = getSignupUri(serverConfig, isCallerMsa);
        } else {
            startUri = getLoginUri(serverConfig, isCallerMsa, false);
        }
        String webFlowAction = ActionSignUpAccount.equals(action) ? WebFlowActivity.ActionSignUp : WebFlowActivity.ActionSignIn;
        WebFlowTelemetryData telemetryData = new WebFlowTelemetryData().setIsWebTelemetryRequested(webTelemetryRequested).setCallingAppPackageName(clientPackageName).setCallingAppVersionName(PackageInfoHelper.getAppVersionName(getApplicationContext(), clientPackageName)).setWasPrecachingEnabled(precachingEnabled);
        Intent intent = WebFlowActivity.getFlowRequest(getApplicationContext(), startUri, webFlowAction, appProperties, telemetryData).asIntent();
        intent.addFlags(65536);
        this._pendingChildRequest = 0;
        if (!NetworkConnectivity.hasInternetConnectivity(getApplicationContext())) {
            ClientAnalytics.get().logEvent(ClientAnalytics.PerformanceCategory, ClientAnalytics.NoNetworkConnectivity, ClientAnalytics.AtStartOfWebFlow);
            sendFailureResult(new NetworkException());
        } else {
            startActivityForResult(intent, 0);
            this._handler = new Handler();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == this._pendingChildRequest) {
            this._pendingChildRequest = -1;
        }
        switch (requestCode) {
            case 0:
                addTelemetryToResult(data);
                switch (resultCode) {
                    case -1:
                        if (data == null || data.getExtras() == null) {
                            sendFailureResult("Sign in flow finished successfully with no extras set.");
                        } else {
                            onSetupSuccessful(new ApiResult(data.getExtras()).getAccountPuid());
                        }
                        break;
                    case 0:
                        sendCancelledResult();
                        break;
                    case 1:
                        sendFailureResult(new ApiResult(data.getExtras()).getException());
                        break;
                    default:
                        sendFailureResult("Sign in activity finished with unexpected result code: " + resultCode);
                        break;
                }
                break;
            case 1:
                break;
            case 2:
                switch (resultCode) {
                    case -1:
                    case 0:
                        sendSuccessResult(this._accountPuid);
                        break;
                    default:
                        sendFailureResult("Account added activity finished with unexpected result code: " + resultCode);
                        break;
                }
                break;
            default:
                Logger.error("Received activity result for unknown request code: " + requestCode);
                sendFailureResult("Received activity result for unknown request code: " + requestCode);
                break;
        }
    }

    protected Uri getLoginUri(ServerConfig serverConfig, boolean isCallerMsa, boolean isWreply) {
        ServerConfig.Endpoint endpoint;
        if (isCallerMsa) {
            endpoint = isWreply ? ServerConfig.Endpoint.SignupWReplyMsa : ServerConfig.Endpoint.ConnectMsa;
        } else {
            endpoint = isWreply ? ServerConfig.Endpoint.SignupWReplyPartner : ServerConfig.Endpoint.ConnectPartner;
        }
        Uri.Builder uriBuilder = Uri.parse(serverConfig.getUrl(endpoint).toExternalForm()).buildUpon();
        addCommonQueryStringParams(uriBuilder);
        AppProperties appProperties = BundleMarshaller.appPropertiesFromBundle(getIntent().getExtras());
        for (Map.Entry<String, String> property : appProperties.getServerQueryStringValues().entrySet()) {
            uriBuilder.appendQueryParameter(property.getKey(), property.getValue());
        }
        if (isWreply) {
            Uri loginUri = Uris.appendMarketQueryString(getApplicationContext(), uriBuilder.build());
            return loginUri;
        }
        Uri loginUri2 = uriBuilder.build();
        return loginUri2;
    }

    protected Uri getSignupUri(ServerConfig serverConfig, boolean isCallerMsa) {
        ServerConfig.Endpoint endpoint = isCallerMsa ? ServerConfig.Endpoint.SignupMsa : ServerConfig.Endpoint.SignupPartner;
        Uri.Builder uriBuilder = Uri.parse(serverConfig.getUrl(endpoint).toExternalForm()).buildUpon();
        addCommonQueryStringParams(uriBuilder);
        AppProperties appProperties = BundleMarshaller.appPropertiesFromBundle(getIntent().getExtras());
        for (Map.Entry<String, String> property : appProperties.getServerQueryStringValues().entrySet()) {
            uriBuilder.appendQueryParameter(property.getKey(), property.getValue());
        }
        uriBuilder.appendQueryParameter(WReplyLabel, getLoginUri(serverConfig, isCallerMsa, true).toString());
        return uriBuilder.build();
    }

    protected void addCommonQueryStringParams(Uri.Builder uriBuilder) {
        String platformValue = PlatformName + Resources.getSdkVersion(getApplicationContext());
        uriBuilder.appendQueryParameter("platform", platformValue);
        String appId = Applications.buildClientAppUri(getApplicationContext(), getIntent().getStringExtra(BundleMarshaller.ClientPackageNameKey));
        uriBuilder.appendQueryParameter("client_id", appId);
    }

    protected void addTelemetryToResult(Intent data) {
        if (data != null && data.getExtras() != null) {
            ApiResult result = new ApiResult(data.getExtras());
            if (result.hasWebFlowTelemetryEvents()) {
                this._resultSender.putWebFlowTelemetryFields(result).set();
            }
        }
    }

    protected void sendSuccessResult(String accountPuid) {
        Assertion.check(accountPuid != null);
        ApiRequest request = new ApiRequest(getApplicationContext(), getIntent());
        if (request.hasResultReceiver()) {
            request.sendSuccess(new ApiResult().setAccountPuid(accountPuid));
        } else {
            AuthenticatorUserAccount account = new TypedStorage(getApplicationContext()).readAccount(accountPuid);
            if (account == null) {
                sendFailureResult(new InternalException("AddAccountActivity could not acquire newly added account."));
                return;
            }
            this._resultSender.putLimitedUserAccount(account).set();
        }
        finish();
    }

    protected void sendFailureResult(Exception exception) {
        Assertion.check(exception != null);
        Logger.error("Failed to add account.", exception);
        ClientAnalytics.get().logException(exception);
        ApiRequest request = new ApiRequest(getApplicationContext(), getIntent());
        if (request.hasResultReceiver()) {
            request.sendFailure(exception);
        } else {
            this._resultSender.putException(exception).set();
        }
        finish();
    }

    protected void sendFailureResult(String message) {
        sendFailureResult(new InternalException(message));
    }

    protected void sendCancelledResult() {
        ApiRequest request = new ApiRequest(getApplicationContext(), getIntent());
        if (request.hasResultReceiver()) {
            request.sendUserCanceled();
        }
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        if (this._pendingChildRequest != -1) {
            finishActivity(this._pendingChildRequest);
            this._pendingChildRequest = -1;
        }
        super.finish();
    }

    protected void onSetupSuccessful(String accountPuid) {
        BackupService.pushBackup(getApplicationContext());
        if (!isFinishing()) {
            finishActivity(1);
            sendSuccessResult(accountPuid);
        }
    }

    protected void onSetupFailure(Exception exception) {
        sendFailureResult(exception);
    }

    public static Intent getSignUpIntent(Context applicationContext, Bundle appProperties, String clientPackageName, Bundle clientState) {
        Intent intent = new Intent(applicationContext, (Class<?>) AddAccountActivity.class).setAction(ActionSignUpAccount).putExtra(BundleMarshaller.AppPropertiesKey, appProperties).putExtra(BundleMarshaller.ClientPackageNameKey, clientPackageName).putExtra(BundleMarshaller.ClientStateBundleKey, clientState).setData(new Intents.DataBuilder().add(appProperties).add(clientPackageName).build());
        return intent;
    }

    public static Intent getSignInIntent(Context applicationContext, Bundle appProperties, String clientPackageName, Bundle clientState) {
        Intent intent = new Intent(applicationContext, (Class<?>) AddAccountActivity.class).setAction(ActionAddAccount).putExtra(BundleMarshaller.AppPropertiesKey, appProperties).putExtra(BundleMarshaller.ClientPackageNameKey, clientPackageName).putExtra(BundleMarshaller.ClientStateBundleKey, clientState).setData(new Intents.DataBuilder().add(appProperties).add(clientPackageName).build());
        return intent;
    }
}
