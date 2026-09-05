.class public Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
.super Ljava/lang/Object;
.source "AuthenticatorAccountManager.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_applicationContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 1
    .param p1, "typedStorage"    # Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_applicationContext:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 47
    return-void
.end method


# virtual methods
.method public getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 158
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountByPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 1
    .param p1, "puid"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "excludedAccounts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v0

    .line 131
    .local v0, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    return-object v0

    .line 136
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getSessionApprovalAccounts()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v1, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 110
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->isSessionApprover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :cond_1
    return-object v1
.end method

.method public hasAccounts()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasAccounts()Z

    move-result v0

    return v0
.end method

.method public hasNgcSessionApprovalAccounts()Z
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 85
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->hasNgcRegistrationSucceeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 90
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSessionApprovalAccounts()Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 69
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->isSessionApprover()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 74
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeLastSavedUserTileImage(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 4
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->_applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 191
    :cond_0
    return-void
.end method
