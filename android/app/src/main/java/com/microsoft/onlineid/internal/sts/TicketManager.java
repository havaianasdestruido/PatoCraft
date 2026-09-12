package com.microsoft.onlineid.internal.sts;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.MonitorMessages;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.MsaService;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Resources;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.exception.AccountNotFoundException;
import com.microsoft.onlineid.internal.exception.PromptNeededException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.client.BackupService;
import com.microsoft.onlineid.internal.storage.TicketStorage;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.internal.ui.InterruptResolutionActivity;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.sts.ConfigManager;
import com.microsoft.onlineid.sts.DAToken;
import com.microsoft.onlineid.sts.DeviceIdentity;
import com.microsoft.onlineid.sts.DeviceIdentityManager;
import com.microsoft.onlineid.sts.FlightManager;
import com.microsoft.onlineid.sts.StsError;
import com.microsoft.onlineid.sts.exception.InvalidResponseException;
import com.microsoft.onlineid.sts.exception.StsException;
import com.microsoft.onlineid.sts.request.ServiceRequest;
import com.microsoft.onlineid.sts.request.StsRequestFactory;
import com.microsoft.onlineid.sts.response.ServiceResponse;
import com.microsoft.onlineid.ui.AddAccountActivity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TicketManager {
    private final Context _applicationContext;
    private final ConfigManager _configManager;
    private final DeviceIdentityManager _deviceManager;
    private final FlightManager _flightManager;
    private final StsRequestFactory _stsRequestFactory;
    private final TicketStorage _ticketStorage;
    private final TypedStorage _typedStorage;

    @Deprecated
    public TicketManager() {
        this._applicationContext = null;
        this._configManager = null;
        this._deviceManager = null;
        this._stsRequestFactory = null;
        this._typedStorage = null;
        this._ticketStorage = null;
        this._flightManager = null;
    }

    public TicketManager(Context applicationContext) {
        this._applicationContext = applicationContext;
        this._configManager = new ConfigManager(applicationContext);
        this._deviceManager = new DeviceIdentityManager(applicationContext);
        this._stsRequestFactory = new StsRequestFactory(applicationContext);
        this._typedStorage = new TypedStorage(applicationContext);
        this._ticketStorage = new TicketStorage(applicationContext);
        this._flightManager = new FlightManager(applicationContext);
    }

    public ApiRequest createTicketRequest(String accountPuid, ISecurityScope scope, String packageName, String cobrandingId, Bundle clientState) {
        return new ApiRequest(this._applicationContext, new Intent(this._applicationContext, (Class<?>) MsaService.class).setAction(MsaService.ActionGetTicket)).setAccountPuid(accountPuid).setScope(scope).setClientPackageName(packageName).setCobrandingId(cobrandingId).setClientStateBundle(clientState);
    }

    public Ticket getTicket(String accountPuid, ISecurityScope scope, String flowToken) throws NetworkException, PromptNeededException, AccountNotFoundException, StsException, InvalidResponseException {
        return getTicket(accountPuid, scope, this._applicationContext.getPackageName(), flowToken, false, null, false, null);
    }

    public Ticket getTicket(String accountPuid, ISecurityScope scope, String packageName, String flowToken, String cobrandingId) throws NetworkException, PromptNeededException, AccountNotFoundException, StsException, InvalidResponseException {
        return getTicket(accountPuid, scope, packageName, flowToken, false, cobrandingId, false, null);
    }

    public Ticket getTicket(String accountPuid, ISecurityScope scope, String flowToken, boolean requestFlights) throws NetworkException, PromptNeededException, AccountNotFoundException, StsException, InvalidResponseException {
        return getTicket(accountPuid, scope, this._applicationContext.getPackageName(), flowToken, false, null, false, null);
    }

    public Ticket getTicket(String accountPuid, ISecurityScope scope, String packageName, String flowToken, boolean requestFlights, String cobrandingId, boolean webTelemetryRequested, Bundle clientState) throws NetworkException, PromptNeededException, AccountNotFoundException, StsException, InvalidResponseException {
        Strings.verifyArgumentNotNullOrEmpty(accountPuid, "accountPuid");
        Objects.verifyArgumentNotNull(scope, "scope");
        Strings.verifyArgumentNotNullOrEmpty(packageName, MonitorMessages.PACKAGE);
        Ticket ticket = this._ticketStorage.getTicket(accountPuid, packageName, scope);
        if (ticket != null) {
            Logger.info("Ticket request serviced from cache: " + scope.toString());
            return ticket;
        }
        AuthenticatorUserAccount account = this._typedStorage.readAccount(accountPuid);
        if (account == null) {
            throw new AccountNotFoundException("The account was deleted.");
        }
        Logger.info("Attempting to get ticket from server: " + scope.toString());
        ServiceResponse response = performServiceRequest(account, scope, packageName, flowToken, requestFlights, cobrandingId, webTelemetryRequested, clientState);
        Assertion.check(response.succeeded(), "Service request failure not handled by performServiceRequest");
        updateAccountDetails(accountPuid, response, requestFlights);
        if (flowToken != null) {
            BackupService.pushBackup(this._applicationContext);
        } else {
            BackupService.pushBackupIfNeeded(this._applicationContext);
        }
        if (requestFlights) {
            this._flightManager.enrollInFlights();
        }
        Ticket ticket2 = response.getTicket();
        Assertion.check(ticket2 != null);
        this._ticketStorage.storeTicket(accountPuid, packageName, ticket2);
        return ticket2;
    }

    public Ticket getTicketNoCache(AuthenticatorUserAccount account, ISecurityScope scope, String flowToken) throws NetworkException, PromptNeededException, StsException, InvalidResponseException {
        return getTicketNoCache(account, scope, this._applicationContext.getPackageName(), flowToken);
    }

    public Ticket getTicketNoCache(AuthenticatorUserAccount account, ISecurityScope scope, String packageName, String flowToken) throws NetworkException, PromptNeededException, StsException, InvalidResponseException {
        Objects.verifyArgumentNotNull(account, "account");
        Objects.verifyArgumentNotNull(scope, "scope");
        Strings.verifyArgumentNotNullOrEmpty(packageName, MonitorMessages.PACKAGE);
        Logger.info("Attempting to get ticket from server: " + scope.toString());
        ServiceResponse response = performServiceRequest(account, scope, packageName, flowToken, false, null, false, null);
        Assertion.check(response.succeeded(), "Service request failure not handled by performServiceRequest");
        Ticket ticket = response.getTicket();
        Assertion.check(ticket != null);
        return ticket;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ServiceResponse performServiceRequest(AuthenticatorUserAccount account, ISecurityScope scope, String packageName, String flowToken, boolean requestFlights, String cobrandingId, boolean webTelemetryRequested, Bundle clientState) throws NetworkException, PromptNeededException, StsException, InvalidResponseException {
        DeviceIdentity deviceIdentity = this._deviceManager.getDeviceIdentity(false);
        ServiceRequest serviceRequest = this._stsRequestFactory.createServiceRequest(account, deviceIdentity, scope, packageName, flowToken, requestFlights);
        ServiceResponse response = (ServiceResponse) serviceRequest.send();
        if (!response.succeeded() && response.getError().isRetryableDeviceDAErrorForUserAuth()) {
            DeviceIdentity deviceIdentity2 = this._deviceManager.getDeviceIdentity(true);
            ServiceRequest serviceRequest2 = this._stsRequestFactory.createServiceRequest(account, deviceIdentity2, scope, packageName, flowToken, requestFlights);
            response = (ServiceResponse) serviceRequest2.send();
        }
        this._configManager.updateIfNeeded(response.getConfigVersion());
        if (!response.succeeded()) {
            StsError error = response.getError();
            Logger.error("ServiceRequest failed with error: " + error.getMessage());
            String authUrl = response.getInlineAuthUrl();
            if (authUrl != null) {
                String platformValue = AddAccountActivity.PlatformName + getSdkVersion();
                Uri.Builder authUriBuilder = Uri.parse(authUrl).buildUpon();
                authUriBuilder.appendQueryParameter("platform", platformValue);
                if (cobrandingId != null) {
                    authUriBuilder.appendQueryParameter(AppProperties.CobrandIdKey, cobrandingId);
                }
                Intent intent = InterruptResolutionActivity.getResolutionIntent(this._applicationContext, authUriBuilder.build(), account, scope, cobrandingId, webTelemetryRequested, packageName, clientState);
                throw new PromptNeededException(new ApiRequest(this._applicationContext, intent));
            }
            throw new StsException("Could not acquire ticket.", error);
        }
        return response;
    }

    private void updateAccountDetails(String accountPuid, ServiceResponse response, boolean flightsRequested) {
        AuthenticatorUserAccount account;
        Assertion.check(response.succeeded());
        DAToken userDA = response.getDAToken();
        if (userDA != null && (account = this._typedStorage.readAccount(accountPuid)) != null) {
            if (flightsRequested) {
                account.setFlights(response.getFlights());
            }
            account.setDAToken(userDA);
            this._typedStorage.writeAccount(account);
        }
    }

    protected String getSdkVersion() {
        return Resources.getSdkVersion(this._applicationContext);
    }
}
