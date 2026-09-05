.class public Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.super Ljava/lang/Object;
.source "XLEInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private easingMode:Lcom/microsoft/xbox/toolkit/anim/EasingMode;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .locals 0
    .param p1, "easingMode"    # Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->easingMode:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    .line 11
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "normalizedTime"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v5

    if-lez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should respect 0<=normalizedTime<=1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->easingMode:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    .end local p1    # "normalizedTime":F
    :goto_0
    return p1

    .line 21
    .restart local p1    # "normalizedTime":F
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result p1

    goto :goto_0

    .line 24
    :pswitch_1
    sub-float v0, v5, p1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result v0

    sub-float p1, v5, v0

    goto :goto_0

    .line 27
    :pswitch_2
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 28
    mul-float v0, p1, v4

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result v0

    div-float p1, v0, v4

    goto :goto_0

    .line 30
    :cond_2
    mul-float v0, p1, v4

    sub-float v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result v0

    sub-float v0, v5, v0

    div-float/2addr v0, v4

    const/high16 v1, 0x3f000000    # 0.5f

    add-float p1, v0, v1

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getInterpolationCore(F)F
    .locals 0
    .param p1, "normalizedTime"    # F

    .prologue
    .line 38
    return p1
.end method
