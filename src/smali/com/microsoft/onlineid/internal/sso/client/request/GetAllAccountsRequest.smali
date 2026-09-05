.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetAllAccountsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 35
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
    .line 24
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;->performRequestTask()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public performRequestTask()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
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
    .line 42
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAllAccountsRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getAllAccounts(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 44
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    .local v1, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    const-string v5, "com.microsoft.onlineid.all_users"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    .local v2, "accountsBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 53
    .local v0, "accountBundle":Landroid/os/Bundle;
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    const-string v6, "Encountered an error while trying to unbundle accounts."

    invoke-static {v6, v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0

    .line 64
    .end local v0    # "accountBundle":Landroid/os/Bundle;
    .end local v4    # "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    :cond_0
    return-object v1
.end method
