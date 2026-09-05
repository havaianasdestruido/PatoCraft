.class public final Lcom/microsoft/onlineid/internal/ui/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field private static final MinimumTouchableTargetDp:F = 48.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipToPixels(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "dip"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static ensureMinimumTouchTarget(Landroid/view/View;Landroid/view/View;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 43
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;-><init>(Landroid/view/View;Landroid/util/DisplayMetrics;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
