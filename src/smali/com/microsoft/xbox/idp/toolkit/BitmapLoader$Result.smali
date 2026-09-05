.class public Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;
.super Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/LoaderResult",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Exception;)V

    .line 58
    return-void
.end method


# virtual methods
.method public isReleased()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    :cond_0
    return-void
.end method
