.class public Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "StoreBackupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _backup:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "backup"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 28
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->_backup:Landroid/os/Bundle;

    .line 29
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->performRequestTask()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public performRequestTask()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v1

    .line 37
    .local v1, "params":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->_backup:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 39
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->storeBackup(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 44
    const/4 v2, 0x0

    return-object v2
.end method
