.class public Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;
.super Ljava/lang/Object;
.source "ButtonStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;
    }
.end annotation


# instance fields
.field protected disabled:Z

.field private disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

.field private disabledImageHandle:I

.field private enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

.field private enabledImageHandle:I

.field protected pressed:Z

.field private pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

.field private pressedImageHandle:I

.field private pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    .line 11
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    .line 13
    iput v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    .line 14
    iput v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    .line 15
    iput v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    .line 17
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    .line 18
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    .line 19
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    .line 25
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 90
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    if-eq v1, v2, :cond_2

    .line 91
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    if-eq v1, v2, :cond_3

    .line 93
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_3
    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    if-eq v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onSizeChanged(II)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, -0x1

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "loadedNewImage":Z
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    if-eq v1, v3, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    if-eq v1, v3, :cond_1

    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    if-eq v1, v3, :cond_2

    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    .line 86
    :cond_2
    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    .line 56
    .local v0, "oldpressed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 57
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    if-eq v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;->onPressStateChanged(Z)V

    .line 68
    :cond_1
    return v3

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 59
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 61
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    goto :goto_0
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    .line 30
    return-void
.end method

.method public setDisabledImageHandle(I)V
    .locals 0
    .param p1, "imageHandle"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    .line 34
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabledImageHandle(I)V
    .locals 0
    .param p1, "imageHandle"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    .line 38
    return-void
.end method

.method public setPressedImageHandle(I)V
    .locals 0
    .param p1, "imageHandle"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    .line 42
    return-void
.end method

.method public setPressedStateRunnable(Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    .line 102
    return-void
.end method
