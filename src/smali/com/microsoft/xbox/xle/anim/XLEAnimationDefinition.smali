.class public Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;
.super Ljava/lang/Object;
.source "XLEAnimationDefinition.java"


# instance fields
.field public delayMs:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public dimen:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public durationMs:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public from:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public fromXType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public fromYType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public parameter:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public pivotX:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public pivotY:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public property:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public scaleRelativeToSelf:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public to:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public toXType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public toYType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public type:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseIn:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    .line 51
    iput v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotX:F

    .line 54
    iput v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotY:F

    .line 57
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->scaleRelativeToSelf:Z

    .line 60
    iput v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromXType:I

    .line 63
    iput v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toXType:I

    .line 66
    iput v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromYType:I

    .line 69
    iput v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toYType:I

    return-void
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->type:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/SineInterpolator;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/SineInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    goto :goto_0

    .line 119
    :pswitch_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;

    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->parameter:F

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;-><init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    goto :goto_0

    .line 121
    :pswitch_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;

    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->parameter:F

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;-><init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 75
    .local v11, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v0, 0x0

    .line 76
    .local v0, "animation":Landroid/view/animation/Animation;
    sget-object v1, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->property:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_0
    if-eqz v0, :cond_3

    .line 105
    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->durationMs:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->delayMs:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 110
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_1
    return-object v0

    .line 78
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 79
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 82
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    iget v3, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v4, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    iget-boolean v5, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->scaleRelativeToSelf:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_2
    iget v6, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotX:F

    iget-boolean v7, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->scaleRelativeToSelf:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_3
    iget v8, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotY:F

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 84
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 82
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    const/4 v5, 0x2

    goto :goto_2

    :cond_1
    const/4 v7, 0x2

    goto :goto_3

    .line 87
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromXType:I

    iget v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v3, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toXType:I

    iget v4, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 88
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 91
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromYType:I

    iget v6, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v7, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toYType:I

    iget v8, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 92
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 95
    :pswitch_4
    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->dimen:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->findDimensionIdByName(Ljava/lang/String;)I

    move-result v9

    .line 96
    .local v9, "dimId":I
    const/4 v10, 0x0

    .line 97
    .local v10, "height":I
    if-ltz v9, :cond_2

    .line 98
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 100
    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    invoke-direct {v0, v1, v10}, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;-><init>(II)V

    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 110
    .end local v9    # "dimId":I
    .end local v10    # "height":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
