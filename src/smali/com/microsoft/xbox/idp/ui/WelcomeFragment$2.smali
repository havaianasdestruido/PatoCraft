.class Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/WelcomeFragment;
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
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Creating LOADER_GAMER_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "KEY_RESULT_KEY"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "strUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->MEDIUM:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getImageSizeUrlParams(Landroid/net/Uri$Builder;Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 213
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .locals 2
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
    .line 221
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Welcome view"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished LOADER_GAMER_IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$300(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

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
    .line 231
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$300(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method
