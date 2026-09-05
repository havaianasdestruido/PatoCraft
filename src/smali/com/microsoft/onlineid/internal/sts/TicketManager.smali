.class public Lcom/microsoft/onlineid/internal/sts/TicketManager;
.super Ljava/lang/Object;
.source "TicketManager.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private final _deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

.field private final _flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

.field private final _stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

.field private final _ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 67
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    .line 68
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    .line 69
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 70
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    .line 71
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 83
    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    .line 84
    new-instance v0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    .line 85
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 86
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    .line 87
    new-instance v0, Lcom/microsoft/onlineid/sts/FlightManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/FlightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

    .line 88
    return-void
.end method

.method private updateAccountDetails(Ljava/lang/String;Lcom/microsoft/onlineid/sts/response/ServiceResponse;Z)V
    .locals 3
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    .param p3, "flightsRequested"    # Z

    .prologue
    .line 462
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->succeeded()Z

    move-result v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 464
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    .line 465
    .local v1, "userDA":Lcom/microsoft/onlineid/sts/DAToken;
    if-eqz v1, :cond_1

    .line 467
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 470
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-eqz v0, :cond_1

    .line 472
    if-eqz p3, :cond_0

    .line 474
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getFlights()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setFlights(Ljava/util/Set;)V

    .line 477
    :cond_0
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 478
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    .line 481
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :cond_1
    return-void
.end method


# virtual methods
.method public createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 5
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "cobrandingId"    # Ljava/lang/String;
    .param p5, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    const-class v4, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.microsoft.onlineid.internal.GET_TICKET"

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/ApiRequest;->setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p3}, Lcom/microsoft/onlineid/internal/ApiRequest;->setClientPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p4}, Lcom/microsoft/onlineid/internal/ApiRequest;->setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p5}, Lcom/microsoft/onlineid/internal/ApiRequest;->setClientStateBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method protected getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .locals 9
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "flowToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 142
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .locals 9
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "flowToken"    # Ljava/lang/String;
    .param p5, "cobrandingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;
    .locals 13
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "flowToken"    # Ljava/lang/String;
    .param p5, "requestFlights"    # Z
    .param p6, "cobrandingId"    # Ljava/lang/String;
    .param p7, "webTelemetryRequested"    # Z
    .param p8, "clientState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v1, "accountPuid"

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "scope"

    invoke-static {p2, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    const-string v1, "packageName"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    move-object/from16 v0, p3

    invoke-virtual {v1, p1, v0, p2}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v11

    .line 233
    .local v11, "ticket":Lcom/microsoft/onlineid/Ticket;
    if-eqz v11, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ticket request serviced from cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    move-object v12, v11

    .line 286
    .end local v11    # "ticket":Lcom/microsoft/onlineid/Ticket;
    .local v12, "ticket":Lcom/microsoft/onlineid/Ticket;
    :goto_0
    return-object v12

    .line 240
    .end local v12    # "ticket":Lcom/microsoft/onlineid/Ticket;
    .restart local v11    # "ticket":Lcom/microsoft/onlineid/Ticket;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v2

    .line 241
    .local v2, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v2, :cond_1

    .line 243
    new-instance v1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v3, "The account was deleted."

    invoke-direct {v1, v3}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to get ticket from server: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 248
    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->performServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    move-result-object v10

    .line 258
    .local v10, "response":Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    invoke-virtual {v10}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->succeeded()Z

    move-result v1

    const-string v3, "Service request failure not handled by performServiceRequest"

    invoke-static {v1, v3}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 261
    move/from16 v0, p5

    invoke-direct {p0, p1, v10, v0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->updateAccountDetails(Ljava/lang/String;Lcom/microsoft/onlineid/sts/response/ServiceResponse;Z)V

    .line 266
    if-eqz p4, :cond_3

    .line 268
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    .line 276
    :goto_1
    if-eqz p5, :cond_2

    .line 278
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_flightManager:Lcom/microsoft/onlineid/sts/FlightManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/FlightManager;->enrollInFlights()V

    .line 282
    :cond_2
    invoke-virtual {v10}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v11

    .line 283
    if-eqz v11, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 284
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_ticketStorage:Lcom/microsoft/onlineid/internal/storage/TicketStorage;

    move-object/from16 v0, p3

    invoke-virtual {v1, p1, v0, v11}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    move-object v12, v11

    .line 286
    .end local v11    # "ticket":Lcom/microsoft/onlineid/Ticket;
    .restart local v12    # "ticket":Lcom/microsoft/onlineid/Ticket;
    goto :goto_0

    .line 272
    .end local v12    # "ticket":Lcom/microsoft/onlineid/Ticket;
    .restart local v11    # "ticket":Lcom/microsoft/onlineid/Ticket;
    :cond_3
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackupIfNeeded(Landroid/content/Context;)V

    goto :goto_1

    .line 283
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Z)Lcom/microsoft/onlineid/Ticket;
    .locals 9
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "flowToken"    # Ljava/lang/String;
    .param p4, "requestFlights"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 193
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .locals 1
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "flowToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    .locals 11
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "flowToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 327
    const-string v0, "account"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const-string v0, "scope"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    const-string v0, "packageName"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to get ticket from server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v5

    move-object v8, v6

    .line 336
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->performServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    move-result-object v9

    .line 346
    .local v9, "response":Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    invoke-virtual {v9}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->succeeded()Z

    move-result v0

    const-string v1, "Service request failure not handled by performServiceRequest"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 349
    invoke-virtual {v9}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v10

    .line 350
    .local v10, "ticket":Lcom/microsoft/onlineid/Ticket;
    if-eqz v10, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-static {v5}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 352
    return-object v10
.end method

.method protected performServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    .locals 19
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "flowToken"    # Ljava/lang/String;
    .param p5, "requestFlights"    # Z
    .param p6, "cobrandingId"    # Ljava/lang/String;
    .param p7, "webTelemetryRequested"    # Z
    .param p8, "clientState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
        }
    .end annotation

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getDeviceIdentity(Z)Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v3

    .line 384
    .local v3, "deviceIdentity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object v18

    .line 393
    .local v18, "serviceRequest":Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v17

    check-cast v17, Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    .line 396
    .local v17, "response":Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    invoke-virtual/range {v17 .. v17}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->succeeded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/StsError;->isRetryableDeviceDAErrorForUserAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_deviceManager:Lcom/microsoft/onlineid/sts/DeviceIdentityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getDeviceIdentity(Z)Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v3

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_stsRequestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object v18

    .line 407
    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v17

    .end local v17    # "response":Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    check-cast v17, Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    .line 411
    .restart local v17    # "response":Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual/range {v17 .. v17}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->updateIfNeeded(Ljava/lang/String;)Z

    .line 413
    invoke-virtual/range {v17 .. v17}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->succeeded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    invoke-virtual/range {v17 .. v17}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v14

    .line 416
    .local v14, "error":Lcom/microsoft/onlineid/sts/StsError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceRequest failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/microsoft/onlineid/sts/StsError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {v17 .. v17}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v13

    .line 419
    .local v13, "authUrl":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 423
    .local v16, "platformValue":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 424
    .local v12, "authUriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "platform"

    move-object/from16 v0, v16

    invoke-virtual {v12, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 426
    if-eqz p6, :cond_1

    .line 428
    const-string v1, "cobrandid"

    move-object/from16 v0, p6

    invoke-virtual {v12, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 431
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    .line 431
    invoke-static/range {v4 .. v11}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getResolutionIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v15

    .line 441
    .local v15, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;

    new-instance v2, Lcom/microsoft/onlineid/internal/ApiRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v2, v4, v15}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;-><init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V

    throw v1

    .line 445
    .end local v12    # "authUriBuilder":Landroid/net/Uri$Builder;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "platformValue":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsException;

    const-string v2, "Could not acquire ticket."

    invoke-direct {v1, v2, v14}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v1

    .line 449
    .end local v13    # "authUrl":Ljava/lang/String;
    .end local v14    # "error":Lcom/microsoft/onlineid/sts/StsError;
    :cond_3
    return-object v17
.end method
