.class public Lcom/microsoft/xbox/toolkit/ui/XLETextTask;
.super Landroid/os/AsyncTask;
.source "XLETextTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/microsoft/xbox/toolkit/ui/XLETextArg;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final img:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final imgHeight:I

.field private final imgWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "img"    # Landroid/widget/ImageView;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->img:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgWidth:I

    .line 19
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgHeight:I

    .line 20
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/microsoft/xbox/toolkit/ui/XLETextArg;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "args"    # [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    .prologue
    .line 24
    const/4 v3, 0x0

    .line 25
    .local v3, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_3

    .line 26
    const/4 v12, 0x0

    aget-object v2, p1, v12

    .line 27
    .local v2, "arg":Lcom/microsoft/xbox/toolkit/ui/XLETextArg;
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getParams()Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    move-result-object v10

    .line 28
    .local v10, "params":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getText()Ljava/lang/String;

    move-result-object v8

    .line 30
    .local v8, "msg":Ljava/lang/String;
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    .line 31
    .local v9, "p":Landroid/text/TextPaint;
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getTextSize()F

    move-result v12

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 32
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 33
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getColor()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 34
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 36
    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 37
    .local v11, "width":I
    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v12

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 39
    .local v7, "height":I
    move v5, v11

    .line 40
    .local v5, "bmWidth":I
    move v4, v7

    .line 42
    .local v4, "bmHeight":I
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->isAdjustForImageSize()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 43
    move-object/from16 v0, p0

    iget v12, v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 44
    move-object/from16 v0, p0

    iget v12, v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgHeight:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 47
    :cond_0
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->hasTextAspectRatio()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 48
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getTextAspectRatio()Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 49
    .local v1, "ar":F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_1

    .line 50
    int-to-float v12, v4

    int-to-float v13, v5

    mul-float/2addr v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 51
    int-to-float v12, v4

    div-float/2addr v12, v1

    float-to-int v5, v12

    .line 58
    .end local v1    # "ar":F
    :cond_1
    :goto_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 59
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->hasEraseColor()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 60
    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getEraseColor()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 62
    :cond_2
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v6, "c":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    sub-int v13, v5, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x0

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v13

    neg-float v13, v13

    const/4 v14, 0x0

    sub-int v15, v4, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual {v6, v8, v12, v13, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    .end local v2    # "arg":Lcom/microsoft/xbox/toolkit/ui/XLETextArg;
    .end local v4    # "bmHeight":I
    .end local v5    # "bmWidth":I
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v7    # "height":I
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "p":Landroid/text/TextPaint;
    .end local v10    # "params":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .end local v11    # "width":I
    :cond_3
    return-object v3

    .line 53
    .restart local v1    # "ar":F
    .restart local v2    # "arg":Lcom/microsoft/xbox/toolkit/ui/XLETextArg;
    .restart local v4    # "bmHeight":I
    .restart local v5    # "bmWidth":I
    .restart local v7    # "height":I
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "p":Landroid/text/TextPaint;
    .restart local v10    # "params":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .restart local v11    # "width":I
    :cond_4
    int-to-float v12, v5

    mul-float/2addr v12, v1

    float-to-int v4, v12

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->doInBackground([Lcom/microsoft/xbox/toolkit/ui/XLETextArg;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->img:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "v":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
