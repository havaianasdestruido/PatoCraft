.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetSignOutIntentOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 41
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "cid":Ljava/lang/String;
    const-string v3, "com.microsoft.onlineid.user_cid"

    invoke-static {v1, v3}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccountByCid(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 50
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_0

    .line 52
    new-instance v3, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v4, "No account was found with the specified ID."

    invoke-direct {v3, v4}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 57
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 55
    invoke-static {v3, v4, v5, v6, v7}, Lcom/microsoft/onlineid/ui/SignOutActivity;->getSignOutIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, "signOutIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v3

    return-object v3
.end method
