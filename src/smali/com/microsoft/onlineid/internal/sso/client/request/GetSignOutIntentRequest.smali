.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetSignOutIntentRequest.java"


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
.field private final _cid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 32
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;->_cid:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public performRequestTask()Landroid/app/PendingIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v1

    .line 41
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "com.microsoft.onlineid.user_cid"

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;->_cid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getSignOutIntent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 46
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
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
    .line 18
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetSignOutIntentRequest;->performRequestTask()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
