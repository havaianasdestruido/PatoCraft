.class public Lcom/microsoft/xbox/toolkit/ui/XLEButton;
.super Landroid/widget/Button;
.source "XLEButton.java"


# instance fields
.field private alwaysClickable:Z

.field protected disableSound:Z

.field private disabledTextColor:I

.field private enabledTextColor:I

.field protected stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    .line 18
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    .line 28
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setSoundEffectsEnabled(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v4, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-direct {v4}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;-><init>()V

    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    .line 18
    iput-boolean v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setSoundEffectsEnabled(Z)V

    .line 44
    const-string v4, "XLEButton"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v5, "XLEButton_disabled"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setDisabled(Z)V

    .line 48
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v5, "XLEButton_disabledImage"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setDisabledImageHandle(I)V

    .line 49
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v5, "XLEButton_enabledImage"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setEnabledImageHandle(I)V

    .line 50
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v5, "XLEButton_pressedImage"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setPressedImageHandle(I)V

    .line 52
    const-string v4, "XLEButton_disableSound"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    .line 54
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const-string v4, "CustomTypeface"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 58
    .local v3, "typefaceAttr":Landroid/content/res/TypedArray;
    const-string v4, "CustomTypeface_typefaceSource"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "typeface":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 62
    invoke-direct {p0, p1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    .line 66
    const-string v4, "XLEButton_disabledTextColor"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disabledTextColor:I

    .line 68
    const-string v4, "XLEButton_alwaysClickable"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->alwaysClickable:Z

    .line 69
    iget-boolean v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->alwaysClickable:Z

    if-eqz v4, :cond_2

    .line 70
    const/4 v4, 0x1

    invoke-super {p0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    const/4 v4, 0x1

    invoke-super {p0, v4}, Landroid/widget/Button;->setClickable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "typeface":Ljava/lang/String;
    .end local v3    # "typefaceAttr":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method private applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typefaceSource"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 81
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method

.method private hasSize()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    .line 107
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEButton;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "loadedNewImage":Z
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->onSizeChanged(II)Z

    move-result v0

    .line 149
    :cond_0
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    .line 152
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->alwaysClickable:Z

    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    .line 101
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateTextColor()V

    .line 102
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnLongClickListener(Landroid/view/View$OnLongClickListener;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setPressedStateRunnable(Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setPressedStateRunnable(Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;)V

    .line 137
    return-void
.end method

.method public setTypeFace(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeface"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected updateImage()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected updateTextColor()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disabledTextColor:I

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->getDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disabledTextColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    .line 168
    :cond_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    goto :goto_0
.end method
