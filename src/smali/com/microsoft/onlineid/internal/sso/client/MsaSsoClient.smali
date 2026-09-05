.class public Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;
.super Ljava/lang/Object;
.source "MsaSsoClient.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private final _migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

.field private final _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 65
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    .line 66
    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 67
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    .line 68
    return-void
.end method

.method private performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "request":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    const-string v0, "Attempting to self-service request."

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getSelfSsoService()Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount(Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 2
    .param p1, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    return-object v0
.end method

.method public getAccountById(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountByIdRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountByIdRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    return-object v0
.end method

.method public getAccountPickerIntent(Ljava/util/ArrayList;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p2, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .param p3, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "cidExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllAccounts(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getSignInIntent(Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "signInOptions"    # Lcom/microsoft/onlineid/SignInOptions;
    .param p2, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .param p3, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSignOutIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "signUpOptions"    # Lcom/microsoft/onlineid/SignUpOptions;
    .param p2, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .param p3, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignUpIntentRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignUpOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "securityScope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .param p4, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_applicationContext:Landroid/content/Context;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    return-object v0
.end method

.method protected performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "request":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v12}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfFirstDownloadNeeded()Z

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_migrationManager:Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;

    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateAndUpgradeStorageIfNeeded()V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v13, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestWithFallback:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v12, v13}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v7

    .line 230
    .local v7, "maxTries":I
    const/4 v12, 0x1

    if-ge v7, v12, :cond_0

    .line 232
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid MaxTriesForSsoRequestWithFallback: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "error":Ljava/lang/String;
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v12

    const-string v13, "SDK"

    const-string v14, "SSO fallback"

    invoke-interface {v12, v13, v14, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 239
    const/4 v7, 0x1

    .line 242
    .end local v2    # "error":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 243
    .local v11, "tries":I
    const/4 v5, 0x0

    .line 244
    .local v5, "isConfigUpToDate":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 245
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-object v10, v12

    .line 246
    .local v10, "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    :goto_0
    if-ge v11, v7, :cond_7

    if-eqz v10, :cond_7

    .line 250
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/MasterRedirectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v12

    .line 330
    :goto_1
    return-object v12

    .line 245
    .end local v10    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 252
    .restart local v10    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->getRedirectRequestTo()Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "redirectedPackage":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Redirect to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "redirectMessage":Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v12

    const-string v13, "SDK"

    const-string v14, "SSO fallback"

    invoke-interface {v12, v13, v14, v8}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v12, v9}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getSsoService(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-result-object v10

    .line 265
    if-nez v10, :cond_2

    .line 268
    const-string v3, "Cannot find redirected master"

    .line 269
    .local v3, "errorMessage":Ljava/lang/String;
    const-string v12, "Cannot find redirected master"

    invoke-static {v12, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v12

    const-string v13, "SDK"

    const-string v14, "SSO fallback"

    const-string v15, "Cannot find redirected master"

    invoke-interface {v12, v13, v14, v15}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 276
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-object v10, v12

    .line 317
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v8    # "redirectMessage":Ljava/lang/String;
    .end local v9    # "redirectedPackage":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 276
    .restart local v1    # "e":Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v8    # "redirectMessage":Ljava/lang/String;
    .restart local v9    # "redirectedPackage":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 279
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v8    # "redirectMessage":Ljava/lang/String;
    .end local v9    # "redirectedPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 281
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-object v10, v12

    .line 315
    :goto_3
    goto :goto_2

    .line 281
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 283
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;
    :catch_2
    move-exception v1

    .line 286
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;
    invoke-direct/range {p0 .. p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 288
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;
    :catch_3
    move-exception v1

    .line 291
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;
    invoke-direct/range {p0 .. p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 293
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;
    :catch_4
    move-exception v1

    .line 296
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Client needs config update: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v12}, Lcom/microsoft/onlineid/sts/ConfigManager;->update()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 303
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-object v10, v12

    .line 308
    :goto_4
    if-nez v5, :cond_5

    .line 310
    add-int/lit8 v11, v11, -0x1

    .line 313
    :cond_5
    const/4 v5, 0x1

    goto :goto_2

    .line 303
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 321
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    :cond_7
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "SSO request failed after %d tries"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "errorString":Ljava/lang/String;
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v12

    const-string v13, "SDK"

    const-string v14, "SSO fallback"

    invoke-interface {v12, v13, v14, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 330
    invoke-direct/range {p0 .. p1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithSelf(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_1
.end method
