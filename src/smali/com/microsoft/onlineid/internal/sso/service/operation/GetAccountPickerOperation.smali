.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetAccountPickerOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 43
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.cid_exclusion_list"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, "excludedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v1

    .line 54
    .local v1, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyParameters(Landroid/os/Bundle;)V

    .line 56
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 57
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 59
    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 63
    .local v0, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 65
    invoke-static {v5, v2, v1, v6, v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getAccountPickerIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/microsoft/onlineid/internal/AppProperties;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 73
    .local v3, "pickerIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v5

    .line 74
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v5

    .line 75
    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v5

    .line 79
    .end local v3    # "pickerIntent":Landroid/content/Intent;
    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getAccountManager()Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;->getTicketManager()Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 80
    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;->call()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0
.end method
