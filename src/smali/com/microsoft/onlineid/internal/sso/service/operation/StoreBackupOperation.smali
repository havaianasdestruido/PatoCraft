.class public Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "StoreBackupOperation.java"


# instance fields
.field private final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;
    .param p5, "storage"    # Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 38
    iput-object p5, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 39
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->storeBackup(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
