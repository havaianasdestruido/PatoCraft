.class Lcom/microsoft/onlineid/AccountManager$6;
.super Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/AccountManager;->getAccountPickerIntentRunnable(Ljava/lang/Iterable;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/AccountManager;

.field final synthetic val$cidExclusionList:Ljava/lang/Iterable;

.field final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Ljava/lang/Iterable;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/AccountManager;
    .param p2, "failureCallback"    # Lcom/microsoft/onlineid/internal/IFailureCallback;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager$6;->this$0:Lcom/microsoft/onlineid/AccountManager;

    iput-object p4, p0, Lcom/microsoft/onlineid/AccountManager$6;->val$cidExclusionList:Ljava/lang/Iterable;

    iput-object p5, p0, Lcom/microsoft/onlineid/AccountManager$6;->val$state:Landroid/os/Bundle;

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
    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v1, "excludedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$6;->val$cidExclusionList:Ljava/lang/Iterable;

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$6;->val$cidExclusionList:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    .end local v0    # "cid":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$6;->this$0:Lcom/microsoft/onlineid/AccountManager;

    .line 403
    invoke-static {v3}, Lcom/microsoft/onlineid/AccountManager;->access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$6;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v4}, Lcom/microsoft/onlineid/AccountManager;->access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/onlineid/AccountManager$6;->val$state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4, v5}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->getAccountPickerIntent(Ljava/util/ArrayList;Lcom/microsoft/onlineid/OnlineIdConfiguration;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 405
    .local v2, "intent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/microsoft/onlineid/AccountManager$6;->this$0:Lcom/microsoft/onlineid/AccountManager;

    invoke-static {v3}, Lcom/microsoft/onlineid/AccountManager;->access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/AccountManager$6;->val$state:Landroid/os/Bundle;

    invoke-interface {v3, v2, v4}, Lcom/microsoft/onlineid/IAccountCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 406
    return-void
.end method
