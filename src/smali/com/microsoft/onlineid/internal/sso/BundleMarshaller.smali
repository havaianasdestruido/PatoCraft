.class public Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;
.super Ljava/lang/Object;
.source "BundleMarshaller.java"


# static fields
.field public static final AccountPickerBodyKey:Ljava/lang/String; = "com.microsoft.onlineid.account_picker_body"

.field public static final ActivityResultTypeKey:Ljava/lang/String; = "com.microsoft.onlineid.result_type"

.field public static final AllUsersKey:Ljava/lang/String; = "com.microsoft.onlineid.all_users"

.field public static final AppPropertiesKey:Ljava/lang/String; = "com.microsoft.onlineid.app_properties"

.field public static final BackupDeviceKey:Ljava/lang/String; = "com.microsoft.onlineid.backup_device"

.field public static final BackupUsersKey:Ljava/lang/String; = "com.microsoft.onlineid.backup_users"

.field public static final CidExclusionListKey:Ljava/lang/String; = "com.microsoft.onlineid.cid_exclusion_list"

.field public static final ClientAppVersionNameKey:Ljava/lang/String; = "com.microsoft.onlineid.client_app_version_name"

.field public static final ClientConfigLastDownloadedTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.client_config_last_downloaded_time"

.field public static final ClientConfigVersionKey:Ljava/lang/String; = "com.microsoft.onlineid.client_config_version"

.field public static final ClientFlightsKey:Ljava/lang/String; = "com.microsoft.onlineid.client_flights"

.field public static final ClientPackageNameKey:Ljava/lang/String; = "com.microsoft.onlineid.client_package_name"

.field public static final ClientSdkVersionKey:Ljava/lang/String; = "com.microsoft.onlineid.client_sdk_version"

.field public static final ClientSsoVersionKey:Ljava/lang/String; = "com.microsoft.onlineid.client_sso_version"

.field public static final ClientStateBundleKey:Ljava/lang/String; = "com.microsoft.onlineid.client_state"

.field public static final CobrandingIdKey:Ljava/lang/String; = "com.microsoft.onlineid.cobranding_id"

.field public static final DeviceDATokenKey:Ljava/lang/String; = "com.microsoft.onlineid.device_datoken"

.field public static final DeviceDATokenObtainedTime:Ljava/lang/String; = "com.microsoft.onlineid.device_datoken_obtained_time"

.field public static final DevicePasswordKey:Ljava/lang/String; = "com.microsoft.onlineid.device_password"

.field public static final DeviceProvisionTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.device_provision_time"

.field public static final DevicePuidKey:Ljava/lang/String; = "com.microsoft.onlineid.device_puid"

.field public static final DeviceSessionKeyBase64Key:Ljava/lang/String; = "com.microsoft.onlineid.device_session_key_base64"

.field public static final DeviceUsernameKey:Ljava/lang/String; = "com.microsoft.onlineid.device_username"

.field public static final ErrorCodeKey:Ljava/lang/String; = "com.microsoft.onlineid.error_code"

.field public static final ErrorMessageKey:Ljava/lang/String; = "com.microsoft.onlineid.error_message"

.field public static final IsRegisteredForNgc:Ljava/lang/String; = "com.microsoft.onlineid.registered_for_ngc"

.field public static final IsSignedOutOfThisAppOnlyKey:Ljava/lang/String; = "com.microsoft.onlineid.signed_out_this_app_only"

.field public static final KeyPrefix:Ljava/lang/String; = "com.microsoft.onlineid."

.field public static final PreferredMembernameTypeKey:Ljava/lang/String; = "com.microsoft.onlineid.preferred_membername_type"

.field public static final PrefillUsernameKey:Ljava/lang/String; = "com.microsoft.onlineid.prefill_username"

.field public static final RedirectRequestToKey:Ljava/lang/String; = "com.microsoft.onlineid.redirect_request_to"

.field public static final RemoteConnectCodeKey:Ljava/lang/String; = "com.microsoft.onlineid.remote_connect_code"

.field public static final TicketExpirationTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_expiration_time"

.field public static final TicketPolicyKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_scope_policy"

.field public static final TicketTargetKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_scope_target"

.field public static final TicketValueKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_value"

.field public static final UiResolutionIntentKey:Ljava/lang/String; = "com.microsoft.onlineid.ui_resolution_intent"

.field public static final UnauthenticatedSessionIdKey:Ljava/lang/String; = "com.microsoft.onlineid.unauth_session_id"

.field public static final UserCidKey:Ljava/lang/String; = "com.microsoft.onlineid.user_cid"

.field public static final UserDATokenKey:Ljava/lang/String; = "com.microsoft.onlineid.user_datoken"

.field public static final UserDATokenObtainedTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.user_datoken_obtained_time"

.field public static final UserDisplayNameKey:Ljava/lang/String; = "com.microsoft.onlineid.user_display_name"

.field public static final UserJustAddedKey:Ljava/lang/String; = "com.microsoft.onlineid.user_just_added"

.field public static final UserPuidKey:Ljava/lang/String; = "com.microsoft.onlineid.user_puid"

.field public static final UserSessionKeyBase64Key:Ljava/lang/String; = "com.microsoft.onlineid.user_session_key_base64"

.field public static final UserUsernameKey:Ljava/lang/String; = "com.microsoft.onlineid.user_username"

.field public static final WebFlowTelemetryAllEventsCapturedKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_all_events_captured"

.field public static final WebFlowTelemetryEventsKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_events"

.field public static final WebFlowTelemetryPrecachingEnabledKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_precaching_enabled"

.field public static final WebFlowTelemetryRequestedKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_requested"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 477
    new-instance v0, Lcom/microsoft/onlineid/internal/AppProperties;

    const-string v1, "com.microsoft.onlineid.app_properties"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/AppProperties;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static appPropertiesToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appProperties"    # Landroid/os/Bundle;

    .prologue
    .line 453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.app_properties"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 455
    return-object v0
.end method

.method public static appPropertiesToBundle(Lcom/microsoft/onlineid/internal/AppProperties;)Landroid/os/Bundle;
    .locals 1
    .param p0, "appProperties"    # Lcom/microsoft/onlineid/internal/AppProperties;

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/AppProperties;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static deviceAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    const-string v3, "com.microsoft.onlineid.device_username"

    .line 146
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.device_password"

    .line 147
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/microsoft/onlineid/sts/DeviceCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "deviceCredentials":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    new-instance v1, Lcom/microsoft/onlineid/sts/DAToken;

    const-string v3, "com.microsoft.onlineid.device_datoken"

    .line 150
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.device_session_key_base64"

    .line 151
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    .line 153
    .local v1, "deviceDAToken":Lcom/microsoft/onlineid/sts/DAToken;
    new-instance v3, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    const-string v4, "com.microsoft.onlineid.device_puid"

    .line 155
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;-><init>(Lcom/microsoft/onlineid/sts/DeviceCredentials;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v3

    .line 158
    .end local v0    # "deviceCredentials":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .end local v1    # "deviceDAToken":Lcom/microsoft/onlineid/sts/DAToken;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v4, "Could not create DeviceIdentity from Bundle."

    invoke-direct {v3, v4, v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static deviceAccountToBundle(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Landroid/os/Bundle;
    .locals 5
    .param p0, "deviceIdentity"    # Lcom/microsoft/onlineid/sts/DeviceIdentity;

    .prologue
    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "com.microsoft.onlineid.device_puid"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getPuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getCredentials()Lcom/microsoft/onlineid/sts/DeviceCredentials;

    move-result-object v1

    .line 123
    .local v1, "deviceCredentials":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    const-string v3, "com.microsoft.onlineid.device_username"

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "com.microsoft.onlineid.device_password"

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v2

    .line 127
    .local v2, "deviceDAToken":Lcom/microsoft/onlineid/sts/DAToken;
    const-string v3, "com.microsoft.onlineid.device_datoken"

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "com.microsoft.onlineid.device_session_key_base64"

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 130
    return-object v0
.end method

.method public static errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "error"    # Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    const-string v1, "com.microsoft.onlineid.error_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-object v0
.end method

.method public static exceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/exception/AuthenticationException;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 583
    const-string v3, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 584
    .local v0, "code":I
    const-string v3, "com.microsoft.onlineid.error_message"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 588
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->get(I)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    move-result-object v1

    .line 590
    .local v1, "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    sget-object v3, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller$1;->$SwitchMap$com$microsoft$onlineid$internal$sso$SsoServiceError:[I

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 616
    new-instance v3, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 621
    .end local v1    # "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    :goto_0
    return-object v3

    .line 593
    .restart local v1    # "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    :pswitch_0
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :pswitch_1
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_2
    new-instance v3, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v4, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v4, v2}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 599
    :pswitch_3
    new-instance v3, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 601
    :pswitch_4
    new-instance v3, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :pswitch_5
    new-instance v3, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :pswitch_6
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsException;

    new-instance v4, Lcom/microsoft/onlineid/sts/StsError;

    new-instance v5, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V

    invoke-direct {v3, v2, v4}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    goto :goto_0

    .line 607
    :pswitch_7
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :pswitch_8
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;

    const-string v4, "com.microsoft.onlineid.redirect_request_to"

    .line 611
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :pswitch_9
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    .end local v1    # "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    :cond_0
    if-eqz v2, :cond_1

    .line 621
    new-instance v3, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_1
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v4, "Neither error_code nor error_message was found in the given Bundle."

    invoke-direct {v3, v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;
    .locals 5
    .param p0, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 518
    :try_start_0
    throw p0
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/onlineid/internal/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/microsoft/onlineid/sts/exception/StsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/microsoft/onlineid/sts/exception/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/microsoft/onlineid/internal/sso/MasterRedirectException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 520
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 567
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;
    :goto_0
    return-object v0

    .line 524
    :catch_1
    move-exception v1

    .line 526
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 528
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;
    :catch_2
    move-exception v1

    .line 530
    .local v1, "e":Lcom/microsoft/onlineid/internal/storage/StorageException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/StorageException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 532
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/storage/StorageException;
    :catch_3
    move-exception v1

    .line 534
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 536
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 538
    .local v1, "e":Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 540
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;
    :catch_5
    move-exception v1

    .line 542
    .local v1, "e":Lcom/microsoft/onlineid/exception/NetworkException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/exception/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 544
    .end local v1    # "e":Lcom/microsoft/onlineid/exception/NetworkException;
    :catch_6
    move-exception v1

    .line 546
    .local v1, "e":Lcom/microsoft/onlineid/sts/exception/StsException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/exception/StsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 548
    .end local v1    # "e":Lcom/microsoft/onlineid/sts/exception/StsException;
    :catch_7
    move-exception v1

    .line 550
    .local v1, "e":Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 552
    .end local v1    # "e":Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;
    :catch_8
    move-exception v1

    .line 554
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 556
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    :catch_9
    move-exception v1

    .line 559
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 561
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 562
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "com.microsoft.onlineid.redirect_request_to"

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->getRedirectRequestTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
    :catch_a
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static hasError(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 503
    const-string v2, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, "code":I
    const-string v2, "com.microsoft.onlineid.error_message"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasLimitedUserAccount(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 228
    const-string v0, "com.microsoft.onlineid.user_puid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.user_cid"

    .line 229
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.user_username"

    .line 230
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPendingIntent(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 410
    const-string v0, "com.microsoft.onlineid.ui_resolution_intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasScope(Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 320
    const-string v2, "com.microsoft.onlineid.ticket_scope_target"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "ticketPolicy":Ljava/lang/String;
    const-string v2, "com.microsoft.onlineid.ticket_scope_policy"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "ticketTarget":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasTicket(Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 371
    const-string v0, "com.microsoft.onlineid.ticket_scope_target"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.ticket_scope_policy"

    .line 372
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.ticket_expiration_time"

    .line 373
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.ticket_value"

    .line 374
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    const-string v2, "com.microsoft.onlineid.user_puid"

    .line 247
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.user_cid"

    .line 248
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.user_username"

    .line 249
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 252
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    const-string v2, "com.microsoft.onlineid.user_display_name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDisplayName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-object v0

    .line 256
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v3, "Could not create limited AuthenticatorUserAccount from Bundle."

    invoke-direct {v2, v3, v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;
    .locals 3
    .param p0, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "com.microsoft.onlineid.user_puid"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "com.microsoft.onlineid.user_username"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "com.microsoft.onlineid.user_display_name"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v0
.end method

.method public static pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 436
    const-string v1, "com.microsoft.onlineid.ui_resolution_intent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 437
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 439
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v2, "PendingIntent not found in Bundle."

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_0
    return-object v0
.end method

.method public static pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;
    .locals 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.ui_resolution_intent"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 423
    return-object v0
.end method

.method public static scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    new-instance v1, Lcom/microsoft/onlineid/SecurityScope;

    const-string v2, "com.microsoft.onlineid.ticket_scope_target"

    .line 339
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.ticket_scope_policy"

    .line 340
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-object v1

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v2, "Could not create SecurityScope from Bundle."

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;
    .locals 3
    .param p0, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.ticket_scope_target"

    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "com.microsoft.onlineid.ticket_scope_policy"

    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object v0
.end method

.method public static ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 389
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    .line 391
    .local v1, "securityScope":Lcom/microsoft/onlineid/ISecurityScope;
    new-instance v2, Lcom/microsoft/onlineid/Ticket;

    new-instance v3, Ljava/util/Date;

    const-string v4, "com.microsoft.onlineid.ticket_expiration_time"

    .line 393
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v4, "com.microsoft.onlineid.ticket_value"

    .line 394
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/microsoft/onlineid/Ticket;-><init>(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    return-object v2

    .line 396
    .end local v1    # "securityScope":Lcom/microsoft/onlineid/ISecurityScope;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v3, "Could not create Ticket from Bundle."

    invoke-direct {v2, v3, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object v0

    .line 357
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.ticket_value"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "com.microsoft.onlineid.ticket_expiration_time"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/Ticket;->getExpiry()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 359
    return-object v0
.end method

.method public static userAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userDATokenFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    .line 208
    .local v1, "daToken":Lcom/microsoft/onlineid/sts/DAToken;
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 210
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-object v0

    .line 213
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .end local v1    # "daToken":Lcom/microsoft/onlineid/sts/DAToken;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v4, "Could not create AuthenticatorUserAccount from Bundle."

    invoke-direct {v3, v4, v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static userAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;
    .locals 2
    .param p0, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v0

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userDATokenToBundle(Lcom/microsoft/onlineid/sts/DAToken;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 174
    return-object v0
.end method

.method public static userDATokenFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DAToken;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 288
    :try_start_0
    new-instance v1, Lcom/microsoft/onlineid/sts/DAToken;

    const-string v2, "com.microsoft.onlineid.user_datoken"

    .line 289
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.user_session_key_base64"

    .line 290
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v2, "Could not create DAToken from Bundle."

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static userDATokenToBundle(Lcom/microsoft/onlineid/sts/DAToken;)Landroid/os/Bundle;
    .locals 3
    .param p0, "daToken"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.microsoft.onlineid.user_datoken"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "com.microsoft.onlineid.user_session_key_base64"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 273
    return-object v0
.end method
