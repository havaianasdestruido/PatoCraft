.class Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;
.super Ljava/lang/Object;
.source "SignOutFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignOutFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_SIGN_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    .line 123
    invoke-static {v2}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v2

    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 122
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)V
    .locals 3
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_SIGN_OUT finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADER_SIGN_OUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$100(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$200(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_SIGN_OUT reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
