.class Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;
.super Ljava/lang/Object;
.source "HeaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/HeaderFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_USER_IMAGE_URL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v3

    iget-object v3, v3, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .locals 3
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_USER_IMAGE_URL finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load user image with message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    return-void
.end method
