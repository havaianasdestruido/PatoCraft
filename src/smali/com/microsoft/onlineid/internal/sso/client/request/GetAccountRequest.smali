.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
        "<",
        "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 39
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 40
    return-void
.end method


# virtual methods
.method public performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
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
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    .local v1, "params":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getAccount(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 57
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasPendingIntent(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    .line 59
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    .line 59
    :cond_1
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    .line 60
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v2

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
    .line 21
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountRequest;->performRequestTask()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    return-object v0
.end method
