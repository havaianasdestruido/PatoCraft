.class Lcom/microsoft/onlineid/AccountManager$7;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getSignOutIntentRunnable(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field final synthetic val$account:Lcom/microsoft/onlineid/UserAccount;

.field final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "failureCallback"    # Lcom/microsoft/onlineid/internal/IFailureCallback;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$account:Lcom/microsoft/onlineid/UserAccount;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;-><init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public performRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$account:Lcom/microsoft/onlineid/UserAccount;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getSignOutIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 446
    .local v1, "intent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-interface {v2, v1, v3}, Lcom/microsoft/onlineid/IAccountCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "intent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;
    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$7;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v2}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$account:Lcom/microsoft/onlineid/UserAccount;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager$7;->val$state:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v5}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method
