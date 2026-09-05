.class public Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "GetSignUpIntentOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "accountManager"    # Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .param p4, "ticketManager"    # Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 38
    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v0

    .line 46
    .local v0, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyParameters(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/AppProperties;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getCallerStateBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 48
    invoke-static {v2, v3, v4, v5}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignUpIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "signUpIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getPendingIntentBuilder(Landroid/content/Intent;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method
