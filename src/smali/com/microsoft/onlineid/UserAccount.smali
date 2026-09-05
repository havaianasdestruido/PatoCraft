.class public Lcom/microsoft/onlineid/UserAccount;
.super Ljava/lang/Object;
.source "UserAccount.java"


# instance fields
.field private final _accountManager:Lcom/microsoft/onlineid/AccountManager;

.field private final _cid:Ljava/lang/String;

.field private final _puid:Ljava/lang/String;

.field private final _username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 3
    .param p1, "manager"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manager"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "puid"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/microsoft/onlineid/UserAccount;->_accountManager:Lcom/microsoft/onlineid/AccountManager;

    .line 33
    iput-object p2, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/microsoft/onlineid/UserAccount;->_username:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/microsoft/onlineid/UserAccount;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/microsoft/onlineid/UserAccount;

    .line 105
    .local v0, "other":Lcom/microsoft/onlineid/UserAccount;
    iget-object v2, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    iget-object v3, v0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    iget-object v3, v0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 108
    .end local v0    # "other":Lcom/microsoft/onlineid/UserAccount;
    :cond_0
    return v1
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    return-object v0
.end method

.method getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket(Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getTicket(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/microsoft/onlineid/UserAccount;->_puid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/UserAccount;->_cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
