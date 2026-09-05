.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetSignInIntentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _signInOptions:Lcom/microsoft/onlineid/SignInOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "signInOptions"    # Lcom/microsoft/onlineid/SignInOptions;
    .param p4, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 42
    if-eqz p3, :cond_0

    .end local p3    # "signInOptions":Lcom/microsoft/onlineid/SignInOptions;
    :goto_0
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_signInOptions:Lcom/microsoft/onlineid/SignInOptions;

    .line 43
    if-eqz p4, :cond_1

    .end local p4    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    :goto_1
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 44
    return-void

    .line 42
    .restart local p3    # "signInOptions":Lcom/microsoft/onlineid/SignInOptions;
    .restart local p4    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    :cond_0
    new-instance p3, Lcom/microsoft/onlineid/SignInOptions;

    .end local p3    # "signInOptions":Lcom/microsoft/onlineid/SignInOptions;
    invoke-direct {p3}, Lcom/microsoft/onlineid/SignInOptions;-><init>()V

    goto :goto_0

    .line 43
    :cond_1
    new-instance p4, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .end local p4    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    invoke-direct {p4}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public performRequestTask()Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v2

    .line 53
    .local v2, "params":Landroid/os/Bundle;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->asBundle()Landroid/os/Bundle;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_signInOptions:Lcom/microsoft/onlineid/SignInOptions;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/SignInOptions;->asBundle()Landroid/os/Bundle;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/Bundles;->merge([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "appParameters":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 56
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v3, v2}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getSignInIntent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 57
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 59
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
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
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignInIntentRequest;->performRequestTask()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
