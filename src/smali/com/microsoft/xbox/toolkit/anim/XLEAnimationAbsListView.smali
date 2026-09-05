.class public Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;
.super Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
.source "XLEAnimationAbsListView.java"


# instance fields
.field private layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private layoutView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 12
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    .line 15
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 17
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 18
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 32
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearAnimation()V

    .line 33
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 43
    instance-of v0, p1, Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 45
    check-cast p1, Landroid/widget/AbsListView;

    .end local p1    # "targetView":Landroid/view/View;
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    .line 46
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 24
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 27
    :cond_0
    return-void
.end method
