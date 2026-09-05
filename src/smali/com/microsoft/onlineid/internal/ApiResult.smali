.class public Lcom/microsoft/onlineid/internal/ApiResult;
.super Ljava/lang/Object;
.source "ApiResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ApiResult$Extras;
    }
.end annotation


# static fields
.field public static final ResultException:I = 0x1

.field public static final ResultUINeeded:I = 0x2


# instance fields
.field private final _bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    .end local p1    # "bundle":Landroid/os/Bundle;
    :goto_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    .line 83
    return-void

    .line 82
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public addTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 2
    .param p1, "value"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiResult;->setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiResult;

    .line 207
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 208
    return-object p0
.end method

.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAccountPuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public getFlowToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lcom/microsoft/onlineid/ISecurityScope;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiResult;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicket(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .locals 2
    .param p1, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 195
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/Ticket;

    goto :goto_0
.end method

.method protected getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;
    .locals 5
    .param p1, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 168
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

    .line 171
    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 172
    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 168
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUINeededIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getWebFlowTelemetryEvents()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWereAllWebFlowTelemetryEventsCaptured()Z
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasWebFlowTelemetryEvents()Z
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiResult;->getWebFlowTelemetryEvents()Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object p0
.end method

.method public setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/Exception;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 230
    return-object p0
.end method

.method public setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object p0
.end method

.method public setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 2
    .param p1, "value"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 156
    return-object p0
.end method

.method public setUINeededIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 2
    .param p1, "value"    # Landroid/app/PendingIntent;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    return-object p0
.end method

.method public setWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;)Lcom/microsoft/onlineid/internal/ApiResult;
    .locals 3
    .param p1, "recorder"    # Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->getEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 264
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->wereAllEventsCaptured()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    return-object p0
.end method
