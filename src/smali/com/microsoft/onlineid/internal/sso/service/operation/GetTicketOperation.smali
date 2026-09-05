.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetTicketOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 53
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;,
            Lcom/microsoft/onlineid/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "cid":Ljava/lang/String;
    const-string v0, "com.microsoft.onlineid.user_cid"

    invoke-static {v8, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v6

    .line 67
    .local v6, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v6, :cond_0

    .line 69
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>()V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v2

    .line 73
    .local v2, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v7

    .line 76
    .local v7, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyParameters(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "cobrandid"

    invoke-virtual {v7, v0}, Lcom/microsoft/onlineid/internal/AppProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "cobrandingId":Ljava/lang/String;
    const-string v0, "client_web_telemetry_requested"

    invoke-virtual {v7, v0}, Lcom/microsoft/onlineid/internal/AppProperties;->is(Ljava/lang/String;)Z

    move-result v14

    .line 81
    .local v14, "webTelemetryRequested":Z
    new-instance v11, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;

    invoke-direct {v11, p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;-><init>(Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;)V

    .line 100
    .local v11, "receiver":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<Lcom/microsoft/onlineid/Ticket;>;"
    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v6}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v14}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsWebFlowTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v11}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v13

    .line 106
    .local v13, "ticketRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    :try_start_0
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->blockForResult()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v12

    .line 112
    .local v12, "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/Ticket;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .end local v12    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :goto_0
    return-object v0

    .line 116
    .restart local v12    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :cond_1
    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/UserCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 129
    .end local v12    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :catch_0
    move-exception v9

    .line 133
    .local v9, "e":Lcom/microsoft/onlineid/internal/exception/UserCancelledException;
    const/4 v0, 0x0

    const-string v1, "Unexpected UserCancelledException caught in GetTicketOperation."

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 134
    invoke-static {v9}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 136
    .end local v9    # "e":Lcom/microsoft/onlineid/internal/exception/UserCancelledException;
    :catch_1
    move-exception v9

    .line 138
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 142
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "response":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :cond_2
    const-string v10, "GetTicketOperation did not receive an expected result from MsaService."

    .line 143
    .local v10, "message":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v0, v10}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v0, v10}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
