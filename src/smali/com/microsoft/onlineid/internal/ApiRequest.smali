.class public Lcom/microsoft/onlineid/internal/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
    }
.end annotation


# instance fields
.field protected final _applicationContext:Landroid/content/Context;

.field protected final _intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_applicationContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    .line 468
    .local v0, "receiver":Landroid/os/ResultReceiver;
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public addTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 281
    return-object p0
.end method

.method public asIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    return-object v0
.end method

.method public executeAsync()V
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 521
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientStateBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCobrandingId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContinuation()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getFlowToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsWebFlowTelemetryRequested()Z
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getScope()Lcom/microsoft/onlineid/ISecurityScope;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public getTicket(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .locals 2
    .param p1, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 269
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/Ticket;

    goto :goto_0
.end method

.method protected getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;
    .locals 5
    .param p1, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 254
    const-string v0, "."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.microsoft.msa.authenticator"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Ticket"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 257
    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 258
    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 254
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResultReceiver()Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSdkRequest()Z
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public sendFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 495
    const/4 v0, 0x1

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    .line 496
    return-void
.end method

.method public sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 3
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContinuation()Landroid/content/Intent;

    move-result-object v0

    .line 448
    .local v0, "continuation":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 450
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 451
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    goto :goto_0
.end method

.method public sendUINeeded(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 508
    const/4 v0, 0x2

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setUINeededIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    .line 509
    return-void
.end method

.method public sendUserCanceled()V
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x0

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendResult(ILcom/microsoft/onlineid/internal/ApiResult;)V

    .line 483
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    return-object p0
.end method

.method public setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    return-object p0
.end method

.method public setClientPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    return-object p0
.end method

.method public setClientStateBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 390
    return-object p0
.end method

.method public setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    return-object p0
.end method

.method public setContinuation(Lcom/microsoft/onlineid/internal/ApiRequest;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 3
    .param p1, "request"    # Lcom/microsoft/onlineid/internal/ApiRequest;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    return-object p0
.end method

.method public setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    return-object p0
.end method

.method public setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "isSdkRequest"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    return-object p0
.end method

.method public setIsWebFlowTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "requested"    # Z

    .prologue
    .line 424
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    return-object p0
.end method

.method public setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Landroid/os/ResultReceiver;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    return-object p0
.end method

.method public setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 2
    .param p1, "value"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiRequest;->_intent:Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 242
    return-object p0
.end method
