.class Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;
.super Ljava/lang/Object;
.source "XBLogoutFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_XB_LOGOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ARG_USER_PTR"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V
    .locals 2
    .param p2, "data"    # Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_XB_LOGOUT finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$100(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_XB_LOGOUT reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
