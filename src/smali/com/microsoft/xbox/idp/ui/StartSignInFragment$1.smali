.class Lcom/microsoft/xbox/idp/ui/StartSignInFragment$1;
.super Ljava/lang/Object;
.source "StartSignInFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/StartSignInFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/StartSignInFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/StartSignInFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_START_SIGN_IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    .line 119
    invoke-static {v2}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v2

    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 118
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)V
    .locals 3
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_START_SIGN_IN finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADER_START_SIGN_IN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->access$100(Lcom/microsoft/xbox/idp/ui/StartSignInFragment;)Lcom/microsoft/xbox/idp/ui/StartSignInFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->access$200(Lcom/microsoft/xbox/idp/ui/StartSignInFragment;)Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Callbacks;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_START_SIGN_IN reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
