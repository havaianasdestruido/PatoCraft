.class public Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
.super Landroid/widget/ImageView;
.source "XLEImageView.java"


# static fields
.field public static final IMAGE_ERROR:I = 0x2

.field public static final IMAGE_FINAL:I = 0x0

.field public static final IMAGE_LOADING:I = 0x1


# instance fields
.field public TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

.field protected isFinal:Z

.field protected shouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->shouldAnimate:Z

    .line 15
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->isFinal:Z

    .line 36
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setSoundEffectsEnabled(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public getShouldAnimate()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->shouldAnimate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->isFinal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinal(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->isFinal:Z

    .line 61
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageSource(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "source"    # I

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->shouldAnimate:Z

    .line 23
    return-void
.end method
