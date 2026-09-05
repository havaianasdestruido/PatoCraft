.class public Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;
.super Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
.source "XLEImageViewFast.java"


# instance fields
.field private option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field protected pendingBitmapResourceId:I

.field private pendingFilePath:Ljava/lang/String;

.field protected pendingUri:Ljava/net/URI;

.field private useFileCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    .line 13
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    .line 14
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setSoundEffectsEnabled(Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    .line 13
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    .line 14
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    .line 15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    .line 26
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v1, "XLEImageViewFast"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "XLEImageViewFast_src"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setImageResource(I)V

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method private bindToFilePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 110
    return-void
.end method

.method private bindToResourceId(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    .line 93
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(ILandroid/widget/ImageView;II)V

    .line 94
    return-void
.end method

.method private bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "option"    # Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .prologue
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    .line 103
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 104
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected bindToUri(Ljava/net/URI;)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    .line 98
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIZ)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 99
    return-void
.end method

.method protected hasSize()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "minWidth":I
    const/4 v1, 0x0

    .line 117
    .local v1, "minHeight":I
    invoke-static {v2, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->resolveSize(II)I

    move-result v3

    .line 118
    .local v3, "width":I
    invoke-static {v1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->resolveSize(II)I

    move-result v0

    .line 120
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setMeasuredDimension(II)V

    .line 121
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->onSizeChanged(IIII)V

    .line 127
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    if-ltz v1, :cond_0

    .line 129
    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToResourceId(I)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    if-eqz v1, :cond_2

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    if-eqz v1, :cond_4

    .line 134
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v3, v3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v4, v4, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-boolean v5, v5, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    .line 136
    .local v0, "opt":Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    invoke-direct {p0, v1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 142
    .end local v0    # "opt":Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToFilePath(Ljava/lang/String;)V

    .line 146
    :cond_3
    return-void

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public setImageFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToFilePath(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToResourceId(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setImageURI2(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    goto :goto_0
.end method

.method public setImageURI2(Ljava/net/URI;II)V
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "loadingResourceId"    # I
    .param p3, "errorResourceId"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-boolean v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 66
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    goto :goto_0
.end method

.method public setImageURI2(Ljava/net/URI;Z)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "useFilaCache"    # Z

    .prologue
    .line 55
    iput-boolean p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    .line 56
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIZ)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 57
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 150
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method
