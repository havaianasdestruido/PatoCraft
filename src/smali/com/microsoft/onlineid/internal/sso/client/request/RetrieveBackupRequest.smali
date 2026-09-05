.class public Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "RetrieveBackupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 25
    return-void
.end method


# virtual methods
.method public performRequestTask()Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->retrieveBackup(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 35
    return-object v0
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
    .line 15
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;->performRequestTask()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
