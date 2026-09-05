.class public Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;
.super Landroid/app/Service;
.source "MsaSsoService.java"


# instance fields
.field private _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private final _binder:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;

.field private _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private _migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

.field private _signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

.field private _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 151
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;-><init>(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_binder:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/storage/TypedStorage;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-object v0
.end method


# virtual methods
.method protected handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;
    .locals 6
    .param p1, "operation"    # Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;

    .prologue
    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfFirstDownloadNeeded()Z

    .line 80
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateAndUpgradeStorageIfNeeded()V

    .line 83
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->verifyStandardArguments()V

    .line 87
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerSsoVersion()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 89
    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v4, "Invalid SSO version."

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 137
    :goto_0
    return-object v3

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "claimedPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->isPackageInUid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v4, "Invalid caller package name."

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerConfigVersion()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "callerConfigVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->getCallerConfigLastDownloadedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/onlineid/sts/ConfigManager;->hasConfigBeenUpdatedRecently(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 107
    invoke-virtual {v3, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->isClientConfigVersionOlder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The caller must update config to version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 110
    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v3, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfNeeded(Ljava/lang/String;)Z

    .line 118
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-virtual {v3, v1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->isTrusted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v4, "The caller is not authorized to invoke this service."

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;->call()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 132
    .end local v0    # "callerConfigVersion":Ljava/lang/String;
    .end local v1    # "claimedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SSO Service caught exception"

    invoke-static {v3, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_binder:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    .line 51
    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    .line 52
    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 53
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 55
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    .line 56
    return-void
.end method
