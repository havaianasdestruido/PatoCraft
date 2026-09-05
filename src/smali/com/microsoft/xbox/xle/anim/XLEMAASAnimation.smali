.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "XLEMAASAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    }
.end annotation


# instance fields
.field public animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        required = false
    .end annotation
.end field

.field public fillAfter:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public offsetMs:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public targetId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;-><init>()V

    .line 29
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->View:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->fillAfter:Z

    return-void
.end method


# virtual methods
.method public compile()Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v0

    return-object v0
.end method

.method public compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, "compiled":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    const/4 v2, 0x0

    .line 56
    .local v2, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v6, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 57
    new-instance v2, Landroid/view/animation/AnimationSet;

    .end local v2    # "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v6, 0x0

    invoke-direct {v2, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 58
    .restart local v2    # "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v6, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;

    .line 59
    .local v1, "animation":Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;
    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 60
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 66
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "animation":Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;
    :cond_1
    sget-object v6, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$1;->$SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType:[I

    iget-object v7, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    invoke-virtual {v7}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 80
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 68
    :pswitch_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    new-instance v3, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    .end local v3    # "compiled":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    invoke-direct {v3, v2}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;-><init>(Landroid/view/animation/Animation;)V

    .restart local v3    # "compiled":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    move-object v6, v3

    .line 70
    check-cast v6, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    iget-boolean v7, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->fillAfter:Z

    invoke-virtual {v6, v7}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->setFillAfter(Z)V

    .line 83
    :goto_1
    invoke-virtual {v3, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->setTargetView(Landroid/view/View;)V

    .line 85
    return-object v3

    .line 74
    :pswitch_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    iget v6, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->offsetMs:I

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v5, v6, v7

    .line 76
    .local v5, "delay":F
    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v4, v2, v5}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 77
    .local v4, "controller":Landroid/view/animation/LayoutAnimationController;
    new-instance v3, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;

    .end local v3    # "compiled":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    invoke-direct {v3, v4}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;-><init>(Landroid/view/animation/LayoutAnimationController;)V

    .line 78
    .restart local v3    # "compiled":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public compileWithRoot(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "id":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "target":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v2

    return-object v2
.end method
