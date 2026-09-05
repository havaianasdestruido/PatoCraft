.class public Lcom/microsoft/xbox/toolkit/anim/SineInterpolator;
.super Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.source "SineInterpolator.java"


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .locals 0
    .param p1, "easingMode"    # Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    .line 7
    return-void
.end method


# virtual methods
.method protected getInterpolationCore(F)F
    .locals 6
    .param p1, "normalizedTime"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 11
    float-to-double v0, p1

    sub-double v0, v4, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    double-to-float v0, v0

    return v0
.end method
