.class Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;
.super Ljava/lang/Object;
.source "XBLoginFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/XBLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_XB_LOGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ARG_USER_PTR"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "ARG_RPS_TICKET"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    .line 138
    invoke-static {v5}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v5

    const-string v6, "KEY_RESULT_KEY"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 137
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;)V
    .locals 6
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOADER_XB_LOGIN finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;

    .line 146
    .local v0, "data":Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$100(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    move-result-object v4

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->isCreateAccount()Z

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V

    .line 162
    .end local v0    # "data":Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v1

    .line 149
    .local v1, "error":Lcom/microsoft/xbox/idp/toolkit/HttpError;
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADER_XTOKEN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getErrorCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 158
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0

    .line 152
    :sswitch_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        -0x7fea23fd -> :sswitch_0
        -0x7822ffe2 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_XB_LOGIN reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method
