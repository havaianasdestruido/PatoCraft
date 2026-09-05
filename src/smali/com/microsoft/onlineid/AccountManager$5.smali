.class Lcom/microsoft/onlineid/AccountManager$5;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getAllAccountsRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
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
    .line 341
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$5;->val$state:Landroid/os/Bundle;

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
    .line 345
    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v3}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$5;->val$state:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getAllAccounts(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v1

    .line 346
    .local v1, "fullAccounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 348
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/UserAccount;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 350
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    new-instance v4, Lcom/microsoft/onlineid/UserAccount;

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v5}, Lcom/microsoft/onlineid/AccountManager;->access$200(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/AccountManager;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :cond_0
    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$5;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v3}, Lcom/microsoft/onlineid/AccountManager;->access$400(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCollectionCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$5;->val$state:Landroid/os/Bundle;

    invoke-interface {v3, v2, v4}, Lcom/microsoft/onlineid/IAccountCollectionCallback;->onAccountCollectionAcquired(Ljava/util/Set;Landroid/os/Bundle;)V

    .line 354
    return-void
.end method
