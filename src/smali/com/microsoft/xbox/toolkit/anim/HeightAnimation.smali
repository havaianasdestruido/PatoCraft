.class public Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;
.super Landroid/view/animation/Animation;
.source "HeightAnimation.java"


# instance fields
.field private fromValue:I

.field private toValue:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    .line 14
    iput p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->toValue:I

    .line 15
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 24
    iget v1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->toValue:I

    iget v2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 26
    .local v0, "newDelta":I
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 28
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    .line 20
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
