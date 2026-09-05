.class public Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;
.super Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.source "BackEaseInterpolator.java"


# instance fields
.field private amplitude:F


# direct methods
.method public constructor <init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .locals 0
    .param p1, "amplitude"    # F
    .param p2, "easingMode"    # Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    .prologue
    .line 7
    invoke-direct {p0, p2}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    .line 8
    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;->amplitude:F

    .line 9
    return-void
.end method


# virtual methods
.method protected getInterpolationCore(F)F
    .locals 8
    .param p1, "normalizedTime"    # F

    .prologue
    .line 13
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 14
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    iget v2, p0, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;->amplitude:F

    mul-float/2addr v2, p1

    float-to-double v2, v2

    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
