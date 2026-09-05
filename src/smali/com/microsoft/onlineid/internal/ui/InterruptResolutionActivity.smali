.class public Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.super Landroid/app/Activity;
.source "InterruptResolutionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;,
        Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;,
        Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;
    }
.end annotation


# static fields
.field private static final PendingActivityRequestCode:I = 0x1

.field private static final WebFlowRequestCode:I = 0x2


# instance fields
.field private _accountCid:Ljava/lang/String;

.field private _accountPuid:Ljava/lang/String;

.field private _clientPackageName:Ljava/lang/String;

.field private _clientState:Landroid/os/Bundle;

.field private _cobrandingId:Ljava/lang/String;

.field private _requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

.field private _ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getResolutionIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "authUri"    # Landroid/net/Uri;
    .param p2, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p3, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p4, "cobrandingId"    # Ljava/lang/String;
    .param p5, "webTelemetryRequested"    # Z
    .param p6, "clientPackageName"    # Ljava/lang/String;
    .param p7, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 494
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    .line 495
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 496
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_puid"

    .line 497
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_cid"

    .line 498
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.cobranding_id"

    .line 499
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.web_telemetry_requested"

    .line 500
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_package_name"

    .line 501
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_state"

    .line 502
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    if-eqz p6, :cond_1

    .line 506
    invoke-static {p3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 513
    :cond_0
    return-object v0

    .line 508
    :cond_1
    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    .line 510
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A ticket scope requires a client package name to make a request."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected addTelemetryToResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 421
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    .line 422
    .local v0, "result":Lcom/microsoft/onlineid/internal/ApiResult;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->hasWebFlowTelemetryEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 427
    .end local v0    # "result":Lcom/microsoft/onlineid/internal/ApiResult;
    :cond_0
    return-void
.end method

.method protected getAccountCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountCid:Ljava/lang/String;

    return-object v0
.end method

.method protected getAccountPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    return-object v0
.end method

.method protected getClientPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequestedScope()Lcom/microsoft/onlineid/ISecurityScope;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 396
    :pswitch_0
    if-nez p2, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUserCancel()V

    goto :goto_0

    .line 406
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->addTelemetryToResult(Landroid/content/Intent;)V

    .line 408
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;-><init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V

    invoke-virtual {v0, p2, p3}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->onActivityResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v5, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 71
    new-instance v5, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v6, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v5, p0, v6}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    .line 73
    new-instance v5, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    invoke-direct {v5, v9}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    .line 74
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    invoke-virtual {v5, p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;->setActivity(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V

    .line 76
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasScope(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.user_puid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountCid:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_cobrandingId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.client_state"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientState:Landroid/os/Bundle;

    .line 94
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.web_telemetry_requested"

    .line 95
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 97
    .local v4, "webTelemetryRequested":Z
    new-instance v5, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-direct {v5}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>()V

    .line 98
    invoke-virtual {v5, v4}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    .line 99
    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v8}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v3

    .line 104
    .local v3, "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    if-eqz p1, :cond_1

    .line 120
    :goto_1
    return-void

    .line 82
    .end local v3    # "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .end local v4    # "webTelemetryRequested":Z
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    .restart local v3    # "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .restart local v4    # "webTelemetryRequested":Z
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 112
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    .line 110
    invoke-static {v5, v6, v7, v9, v3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/microsoft/onlineid/internal/AppProperties;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    .line 116
    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v2

    .line 118
    .local v2, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;->setActivity(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method protected onFailure(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 188
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 190
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->isSdkRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    instance-of v1, p1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountCid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putSignedOutCid(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 207
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finishActivity(I)V

    .line 209
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finish()V

    .line 210
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onTicketAcquired(Lcom/microsoft/onlineid/Ticket;)V
    .locals 3
    .param p1, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 273
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_0

    .line 275
    new-instance v1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>()V

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    .line 286
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 283
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finishActivity(I)V

    .line 285
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finish()V

    goto :goto_0
.end method

.method protected onUiNeeded(Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 250
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWereAllWebFlowTelemetryEventsCaptured(Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onUserCancel()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 218
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUserCanceled()V

    .line 224
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finishActivity(I)V

    .line 227
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finish()V

    .line 228
    return-void
.end method

.method protected onWebFlowSucceeded(Ljava/lang/String;)V
    .locals 8
    .param p1, "flowToken"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v6, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 139
    .local v6, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v6}, Lcom/microsoft/onlineid/internal/ApiRequest;->isSdkRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scope must not be null for SSO ticket request."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;->onFailure(Ljava/lang/Exception;)V

    .line 150
    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_requestedScope:Lcom/microsoft/onlineid/ISecurityScope;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_cobrandingId:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_clientState:Landroid/os/Bundle;

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->createTicketRequest(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_ticketReceiver:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;

    .line 153
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v7

    .line 155
    .local v7, "ticketRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->showPendingActivity()V

    .line 167
    .end local v7    # "ticketRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    .line 164
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->finish()V

    goto :goto_0
.end method

.method protected showPendingActivity()V
    .locals 4

    .prologue
    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.authenticator.AccountAddPendingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    return-void
.end method
