.class Lcom/microsoft/onlineid/AccountManager$8;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getTicketRunnable(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field final synthetic val$account:Lcom/microsoft/onlineid/UserAccount;

.field final synthetic val$scope:Lcom/microsoft/onlineid/ISecurityScope;

.field final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "failureCallback"    # Lcom/microsoft/onlineid/internal/IFailureCallback;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$8;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$account:Lcom/microsoft/onlineid/UserAccount;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$scope:Lcom/microsoft/onlineid/ISecurityScope;

    iput-object p6, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$8;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$account:Lcom/microsoft/onlineid/UserAccount;

    .line 491
    invoke-virtual {v3}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$scope:Lcom/microsoft/onlineid/ISecurityScope;

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager$8;->this$0:Lcom/microsoft/onlineid/AccountManager;

    .line 493
    invoke-static {v5}, Lcom/microsoft/onlineid/AccountManager;->access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$state:Landroid/os/Bundle;

    .line 490
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v1

    .line 496
    .local v1, "ssoResponse":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$8;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$500(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/ITicketCallback;

    move-result-object v3

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/Ticket;

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$account:Lcom/microsoft/onlineid/UserAccount;

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$state:Landroid/os/Bundle;

    invoke-interface {v3, v2, v4, v5}, Lcom/microsoft/onlineid/ITicketCallback;->onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    .line 509
    .end local v1    # "ssoResponse":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :goto_0
    return-void

    .line 502
    .restart local v1    # "ssoResponse":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$8;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$500(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/ITicketCallback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$state:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Lcom/microsoft/onlineid/ITicketCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v1    # "ssoResponse":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<Lcom/microsoft/onlineid/Ticket;>;"
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$8;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$account:Lcom/microsoft/onlineid/UserAccount;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager$8;->val$state:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v5}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method
