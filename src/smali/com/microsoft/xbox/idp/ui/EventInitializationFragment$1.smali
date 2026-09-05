.class Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$1;
.super Ljava/lang/Object;
.source "EventInitializationFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_EVENT_INITIALIZATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ARG_USER_PTR"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "ARG_RPS_TICKET"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    .line 133
    invoke-static {v5}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v5

    const-string v6, "KEY_RESULT_KEY"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 132
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)V
    .locals 3
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_EVENT_INITIALIZATION finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADER_EVENT_INITIALIZATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->access$100(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;)Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->access$200(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;)Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Callbacks;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_EVENT_INITIALIZATION reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method
