.class public Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
.super Ljava/lang/Object;
.source "XLEBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;
    }
.end annotation


# static fields
.field public static ALLOCATION_TAG:Ljava/lang/String;


# instance fields
.field private bitmapSrc:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "XLEBITMAP"

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->ALLOCATION_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    .line 29
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "bitmapSrc"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static createScaledBitmap(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;IIZ)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "src"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap8888(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;IIZ)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "src"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureResizer;->createScaledBitmap8888(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getByteCount()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDrawable()Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->bitmapSrc:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0
.end method
