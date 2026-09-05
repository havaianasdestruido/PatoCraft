.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetTicketRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
        "<",
        "Lcom/microsoft/onlineid/Ticket;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final _cid:Ljava/lang/String;

.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _securityScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "securityScope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p5, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 47
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_cid:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 49
    if-eqz p5, :cond_0

    .end local p5    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    :goto_0
    iput-object p5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 50
    return-void

    .line 49
    .restart local p5    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    :cond_0
    new-instance p5, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .end local p5    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    invoke-direct {p5}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v5

    .line 58
    .local v5, "params":Landroid/os/Bundle;
    const-string v7, "com.microsoft.onlineid.user_cid"

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_cid:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-virtual {v7}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 61
    .local v3, "globalParameters":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v7}, Lcom/microsoft/onlineid/internal/Scopes;->extractParametersFromScope(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/microsoft/onlineid/internal/Bundles;->fromStringMap(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v6

    .line 63
    .local v6, "scopeParameters":Landroid/os/Bundle;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/os/Bundle;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v7}, Lcom/microsoft/onlineid/internal/Bundles;->merge([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 64
    .local v4, "mergedParameters":Landroid/os/Bundle;
    new-instance v0, Lcom/microsoft/onlineid/internal/AppProperties;

    invoke-direct {v0, v4}, Lcom/microsoft/onlineid/internal/AppProperties;-><init>(Landroid/os/Bundle;)V

    .line 68
    .local v0, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    const-string v7, "fl"

    invoke-virtual {v0, v7}, Lcom/microsoft/onlineid/internal/AppProperties;->remove(Ljava/lang/String;)V

    .line 70
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_securityScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/AppProperties;->getServerValues()Ljava/util/Map;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/onlineid/internal/Scopes;->applyDefaultParametersToScope(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Map;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v2

    .line 72
    .local v2, "finalScope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 75
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesToBundle(Lcom/microsoft/onlineid/internal/AppProperties;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 77
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v7, v5}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getTicket(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 78
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 80
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasPendingIntent(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v7}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    .line 81
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v7

    .line 80
    :goto_0
    return-object v7

    .line 81
    :cond_0
    new-instance v7, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v7}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    .line 82
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v7

    goto :goto_0
.end method

.method public bridge synthetic performRequestTask()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetTicketRequest;->performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0
.end method
