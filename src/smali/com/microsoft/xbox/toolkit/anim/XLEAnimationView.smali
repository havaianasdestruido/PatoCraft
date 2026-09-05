.class public Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;
.super Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
.source "XLEAnimationView.java"


# instance fields
.field private anim:Landroid/view/animation/Animation;

.field private animtarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->onViewAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->onViewAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    return-object v0
.end method

.method private onViewAnimationEnd()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$2;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method private onViewAnimationStart()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 79
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 51
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1
    .param p1, "fillAfter"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 75
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    instance-of v1, v1, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    check-cast v1, Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 61
    .local v0, "animation":Landroid/view/animation/Animation;
    instance-of v2, v0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;

    if-eqz v2, :cond_0

    .line 62
    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->setTargetView(Landroid/view/View;)V

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    return-void
.end method
