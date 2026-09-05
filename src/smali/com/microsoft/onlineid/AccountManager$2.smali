.class Lcom/microsoft/onlineid/AccountManager$2;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getSignInIntentRunnable(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field final synthetic val$options:Lcom/microsoft/onlineid/SignInOptions;

.field final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "failureCallback"    # Lcom/microsoft/onlineid/internal/IFailureCallback;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$2;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$2;->val$options:Lcom/microsoft/onlineid/SignInOptions;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$2;->val$state:Landroid/os/Bundle;

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
    .line 186
    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$2;->this$0:Lcom/microsoft/onlineid/AccountManager;

    .line 187
    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$2;->val$options:Lcom/microsoft/onlineid/SignInOptions;

    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$2;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v3}, Lcom/microsoft/onlineid/AccountManager;->access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$2;->val$state:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getSignInIntent(Lcom/microsoft/onlineid/SignInOptions;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 188
    .local v0, "intent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager$2;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v1}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager$2;->val$state:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lcom/microsoft/onlineid/IAccountCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method
