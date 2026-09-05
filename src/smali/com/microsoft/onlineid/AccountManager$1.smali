.class Lcom/microsoft/onlineid/AccountManager$1;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getAccountRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "failureCallback"    # Lcom/microsoft/onlineid/internal/IFailureCallback;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$1;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$1;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$1;->this$0:Lcom/microsoft/onlineid/AccountManager;

    .line 133
    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$1;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$1;->val$state:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getAccount(Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    .line 135
    .local v0, "ssoResponse":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$1;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v2

    new-instance v3, Lcom/microsoft/onlineid/UserAccount;

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$1;->this$0:Lcom/microsoft/onlineid/AccountManager;

    .line 138
    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$200(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/AccountManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-direct {v3, v4, v1}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$1;->val$state:Landroid/os/Bundle;

    .line 137
    invoke-interface {v2, v3, v1}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$1;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$1;->val$state:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Lcom/microsoft/onlineid/IAccountCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_0
.end method
