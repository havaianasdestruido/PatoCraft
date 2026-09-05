.class public Lcom/microsoft/onlineid/internal/ui/ProgressView;
.super Landroid/widget/RelativeLayout;
.source "ProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;
    }
.end annotation


# static fields
.field public static final NumberOfDots:I = 0x5

.field private static final ProgressColor:I

.field private static final ProgressDotSizeDip:F = 2.6f

.field private static final ProgressPaddingDip:F = 2.6f


# instance fields
.field private _dotSize:I

.field private _progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x79

    .line 29
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->ProgressColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->initialize()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->initialize()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->initialize()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/ProgressView;

    .prologue
    .line 23
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    return v0
.end method

.method private addDot()Landroid/view/View;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "dot":Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    iget v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v1, Lcom/microsoft/onlineid/internal/ui/ProgressView;->ProgressColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    iget v1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->addView(Landroid/view/View;)V

    .line 155
    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x40266666    # 2.6f

    .line 130
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 131
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_dotSize:I

    .line 132
    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 133
    .local v2, "paddingPixels":I
    invoke-virtual {p0, v5, v2, v5, v2}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->setPadding(IIII)V

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->addDot()Landroid/view/View;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v3, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->getWidth()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;-><init>(Lcom/microsoft/onlineid/internal/ui/ProgressView;I)V

    iput-object v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    .line 141
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->stopAnimation()Z

    move-result v0

    .line 76
    .local v0, "isAnimationStopped":Z
    new-instance v1, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;-><init>(Lcom/microsoft/onlineid/internal/ui/ProgressView;I)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    .line 79
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    .line 83
    :cond_0
    return-void
.end method

.method public overrideDefaultPadding(F)V
    .locals 4
    .param p1, "paddingDip"    # F

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 121
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const v2, 0x40266666    # 2.6f

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 122
    .local v1, "paddingPixels":I
    invoke-virtual {p0, v3, v1, v3, v1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->setPadding(IIII)V

    .line 123
    return-void
.end method

.method public startAnimation()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->startAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAnimation()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView;->_progressAnimation:Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->stopAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
