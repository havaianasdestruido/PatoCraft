.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetAccountOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 40
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->hasAccounts()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 48
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->call()Landroid/os/Bundle;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 52
    .local v0, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;->getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 58
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->call()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method
