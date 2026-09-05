.class Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;
.super Ljava/lang/Object;
.source "FinishSignInFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_FINISH_SIGN_IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ARG_AUTH_STATUS"

    .line 133
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    move-result-object v2

    const-string v3, "ARG_CID"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    .line 134
    invoke-static {v4}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v4

    const-string v5, "KEY_RESULT_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 132
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)V
    .locals 3
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_FINISH_SIGN_IN finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADER_FINISH_SIGN_IN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->access$100(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->access$200(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_FINISH_SIGN_IN reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
