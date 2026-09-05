.class Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;
.super Ljava/lang/Object;
.source "ProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressAnimation"
.end annotation


# instance fields
.field private _animationDuration:I

.field private _dotDelays:[I

.field private _keyframeXTranslations:[I

.field private _progressAnimator:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/ProgressView;I)V
    .locals 1
    .param p2, "width"    # I

    .prologue
    .line 181
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-direct {p0, p2}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->setAnimationParams(I)V

    .line 183
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->generateAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    .line 184
    return-void
.end method

.method private createKeyframes()Landroid/animation/PropertyValuesHolder;
    .locals 6

    .prologue
    .line 280
    const/4 v3, 0x5

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 287
    .local v1, "keyframeFractions":[F
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    array-length v3, v3

    new-array v2, v3, [Landroid/animation/Keyframe;

    .line 288
    .local v2, "keyframes":[Landroid/animation/Keyframe;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 290
    aget v3, v1, v0

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    aget v4, v4, v0

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v2, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    return-object v3

    .line 280
    nop

    :array_0
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x3f266666    # 0.65f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private generateAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 194
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->createKeyframes()Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 196
    .local v1, "keyframes":Landroid/animation/PropertyValuesHolder;
    new-array v4, v8, [Landroid/animation/ObjectAnimator;

    .line 197
    .local v4, "xAnimators":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 199
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    .line 200
    invoke-virtual {v5, v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 199
    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 202
    .local v3, "xAnimator":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_animationDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 204
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_dotDelays:[I

    aget v5, v5, v0

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 205
    aput-object v3, v4, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "xAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 209
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 210
    return-object v2
.end method

.method private setAnimationParams(I)V
    .locals 17
    .param p1, "width"    # I

    .prologue
    .line 221
    const/high16 v1, 0x437a0000    # 250.0f

    .line 224
    .local v1, "delayBetweenIterations":F
    const v8, 0x3ed5553f

    .line 227
    .local v8, "percentInOut":F
    const v9, 0x3eaaa64c    # 0.3333f

    .line 230
    .local v9, "percentLinear":F
    move/from16 v0, p1

    int-to-float v14, v0

    const/high16 v15, 0x41c80000    # 25.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 233
    .local v5, "dotGap":I
    move/from16 v0, p1

    int-to-float v14, v0

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x41f00000    # 30.0f

    add-float v6, v14, v15

    .line 236
    .local v6, "linearVelocity":F
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 237
    .local v2, "distanceInOut":I
    move/from16 v0, p1

    int-to-float v14, v0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v8

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 240
    .local v3, "distanceLinear":I
    mul-int/lit16 v14, v3, 0x3e8

    int-to-float v14, v14

    div-float v11, v14, v6

    .line 241
    .local v11, "timeLinear":F
    div-float v14, v11, v9

    sub-float/2addr v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float v10, v14, v15

    .line 244
    .local v10, "timeInOut":F
    const/16 v7, 0x14d

    .line 245
    .local v7, "maxDelay":I
    mul-int/lit16 v14, v5, 0x3e8

    int-to-float v14, v14

    div-float/2addr v14, v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 246
    .local v4, "dotDelay":I
    if-le v4, v7, :cond_0

    move v4, v7

    .line 248
    :cond_0
    const/4 v14, 0x5

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    mul-int/lit8 v16, v4, 0x2

    aput v16, v14, v15

    const/4 v15, 0x3

    mul-int/lit8 v16, v4, 0x3

    aput v16, v14, v15

    const/4 v15, 0x4

    mul-int/lit8 v16, v4, 0x4

    aput v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_dotDelays:[I

    .line 256
    int-to-float v14, v4

    const/high16 v15, 0x40800000    # 4.0f

    mul-float v13, v14, v15

    .line 257
    .local v13, "totalDotDelay":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v10

    add-float v12, v11, v14

    .line 260
    .local v12, "timeOneDotVisible":F
    add-float v14, v12, v13

    add-float/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_animationDuration:I

    .line 263
    const/4 v14, 0x5

    new-array v14, v14, [I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    move-object/from16 v16, v0

    .line 264
    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I

    move-result v16

    mul-int/lit8 v16, v16, -0x1

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    const/4 v15, 0x2

    add-int v16, v2, v3

    aput v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    move-object/from16 v16, v0

    .line 267
    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I

    move-result v16

    add-int v16, v16, p1

    aput v16, v14, v15

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->this$0:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    move-object/from16 v16, v0

    .line 268
    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->access$000(Lcom/microsoft/onlineid/internal/ui/ProgressView;)I

    move-result v16

    mul-int/lit8 v16, v16, -0x1

    aput v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_keyframeXTranslations:[I

    .line 270
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public startAnimation()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAnimation()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/ProgressView$ProgressAnimation;->_progressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
