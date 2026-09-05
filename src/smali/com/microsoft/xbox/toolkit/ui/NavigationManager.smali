.class public Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationManager"


# instance fields
.field private animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field final callAfterAnimation:Ljava/lang/Runnable;

.field private cannotNavigateTripwire:Z

.field private currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

.field private goingBack:Z

.field private navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

.field private navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

.field private final navigationParameters:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field private transitionAnimate:Z

.field private transitionLambda:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    .line 39
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    .line 40
    iput-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 41
    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 42
    iput-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 43
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    .line 44
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 45
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    .line 577
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    .line 51
    const-string v2, "You must access navigation manager on UI thread."

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 52
    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;-><init>()V

    return-void
.end method

.method private OnAnimationEnd()V
    .locals 3

    .prologue
    .line 585
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 587
    :pswitch_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 591
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 592
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInCompleted()V

    goto :goto_0

    .line 598
    :pswitch_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "anim":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 603
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object v0

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v1, :cond_3

    .line 607
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    invoke-interface {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->onBeforeNavigatingIn()V

    .line 610
    :cond_3
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ReplaceOnAnimationEnd(ZLjava/lang/Runnable;Z)V
    .locals 2
    .param p1, "goingBack"    # Z
    .param p2, "lambda"    # Ljava/lang/Runnable;
    .param p3, "animate"    # Z

    .prologue
    .line 569
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 570
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 572
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 573
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 574
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    .line 575
    return-void

    .line 569
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Size()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method private Transition(ZLjava/lang/Runnable;Z)V
    .locals 2
    .param p1, "goingBack"    # Z
    .param p2, "lambda"    # Ljava/lang/Runnable;
    .param p3, "animate"    # Z

    .prologue
    .line 558
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 559
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 560
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    .line 563
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 565
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V

    .line 566
    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    return p1
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    return-object v0
.end method

.method private startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V
    .locals 2
    .param p1, "anim"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .param p2, "state"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .prologue
    .line 617
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 618
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 620
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 624
    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 625
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->setOnAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 626
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->startAnimation()V

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public CountPopsToScreen(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 188
    .local v0, "TOP_ELEM":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 189
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 190
    .local v2, "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    sub-int v3, v0, v1

    .line 194
    .end local v2    # "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :goto_1
    return v3

    .line 188
    .restart local v2    # "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 194
    .end local v2    # "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public varargs GotoScreenWithPop(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 14
    .param p1, "activityParameters"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "newTop":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .local p3, "until":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v10, 0x0

    .line 292
    .local v10, "clsUntil":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .line 293
    .local v12, "idxTop":I
    move v13, v12

    .line 295
    .local v13, "pos":I
    :goto_0
    if-ltz v13, :cond_0

    .line 296
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 297
    .local v11, "cur":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 298
    .local v9, "clsCur":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v8, p3, v1

    .line 299
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    if-ne v8, v9, :cond_1

    .line 300
    move-object v10, v8

    .line 306
    .end local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .end local v9    # "clsCur":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .end local v11    # "cur":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_0
    if-eqz v10, :cond_5

    .line 308
    move-object/from16 v0, p2

    if-ne v10, v0, :cond_4

    .line 310
    if-ne v13, v12, :cond_3

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V

    .line 323
    :goto_2
    return-void

    .line 298
    .restart local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .restart local v9    # "clsCur":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .restart local v11    # "cur":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    .end local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    :cond_2
    add-int/lit8 v13, v13, -0x1

    .line 305
    goto :goto_0

    .line 313
    .end local v9    # "clsCur":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .end local v11    # "cur":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_3
    sub-int v2, v12, v13

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_2

    .line 317
    :cond_4
    sub-int v2, v12, v13

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_2

    .line 321
    :cond_5
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_2
.end method

.method public GotoScreenWithPop(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 267
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    .line 268
    .local v1, "toPop":I
    if-lez v1, :cond_0

    .line 269
    const/4 v2, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    if-gez v1, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v6

    move-object v5, p0

    move-object v7, p1

    move v8, v3

    move v9, v4

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    goto :goto_0
.end method

.method public GotoScreenWithPush(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    .line 336
    .local v1, "toPop":I
    if-lez v1, :cond_0

    .line 337
    const/4 v2, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    if-gez v1, :cond_1

    move-object v5, p0

    move v6, v4

    move-object v7, p1

    move v8, v3

    move v9, v4

    move v10, v4

    .line 340
    invoke-virtual/range {v5 .. v10}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    goto :goto_0
.end method

.method public GotoScreenWithPush(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 12
    .param p2, "activityParameters"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 356
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    .line 357
    .local v1, "toPop":I
    if-lez v1, :cond_0

    .line 358
    const/4 v2, 0x0

    move-object v0, p0

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 365
    :goto_0
    return-void

    .line 359
    :cond_0
    if-gez v1, :cond_1

    move-object v5, p0

    move v6, v4

    move-object v7, p1

    move v8, v3

    move v9, v4

    move v10, v4

    move-object v11, p2

    .line 361
    invoke-virtual/range {v5 .. v11}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    goto :goto_0
.end method

.method public IsScreenOnStack(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 179
    .local v0, "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v1, 0x1

    .line 183
    .end local v0    # "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public NavigateTo(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "addToStack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 136
    return-void
.end method

.method public NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
    .param p2, "addToStack"    # Z
    .param p3, "activityParameters"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    if-eqz p2, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public OnBackButtonPressed()Z
    .locals 7

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->ShouldBackCloseApp()Z

    move-result v6

    .line 141
    .local v6, "shouldFinishActivity":Z
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    if-eqz v6, :cond_1

    .line 148
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    .line 156
    :cond_0
    :goto_0
    return v6

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public PopAllScreens()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    .line 232
    :cond_0
    return-void
.end method

.method public PopScreen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreens(I)V

    .line 222
    return-void
.end method

.method public PopScreens(I)V
    .locals 1
    .param p1, "popCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;)V

    .line 226
    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;)V
    .locals 1
    .param p1, "popCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 384
    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 7
    .param p1, "popCount"    # I
    .param p3, "activityParameters"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p2, "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v3, 0x1

    .line 378
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 379
    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZ)V
    .locals 6
    .param p1, "popCount"    # I
    .param p3, "animate"    # Z
    .param p4, "isRestart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    .line 388
    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZZ)V
    .locals 7
    .param p1, "popCount"    # I
    .param p3, "animate"    # Z
    .param p4, "goingBack"    # Z
    .param p5, "isRestart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 517
    .local p2, "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 518
    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 10
    .param p1, "popCount"    # I
    .param p3, "animate"    # Z
    .param p4, "goingBack"    # Z
    .param p5, "isRestart"    # Z
    .param p6, "activityParameters"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZZ",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 392
    .local p2, "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const-string v3, "You must access navigation manager on UI thread."

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v1, v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 393
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    if-eqz v1, :cond_1

    .line 394
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "NavigationManager: attempted to execute a recursive navigation in the OnStop/OnStart method.  This is forbidden."

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 399
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p5, :cond_4

    .line 400
    :cond_2
    const/4 v5, 0x0

    .line 409
    .local v5, "newScreen":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 410
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isAnimateOnPop()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p3, 0x1

    .line 414
    :cond_3
    :goto_2
    if-nez p6, :cond_7

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 416
    .local v2, "screenParameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :goto_3
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    .line 417
    .local v4, "callbacks":Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "popAndReplaceRunnable":Ljava/lang/Runnable;
    if-eqz p5, :cond_8

    .line 421
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;

    .end local v0    # "popAndReplaceRunnable":Ljava/lang/Runnable;
    invoke-direct {v0, p0, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 492
    .restart local v0    # "popAndReplaceRunnable":Ljava/lang/Runnable;
    :goto_4
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 510
    invoke-direct {p0, p4, v0, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->ReplaceOnAnimationEnd(ZLjava/lang/Runnable;Z)V

    .line 513
    :goto_5
    return-void

    .line 402
    .end local v0    # "popAndReplaceRunnable":Ljava/lang/Runnable;
    .end local v2    # "screenParameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .end local v4    # "callbacks":Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;
    .end local v5    # "newScreen":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_4
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 403
    .restart local v5    # "newScreen":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    if-eqz p3, :cond_5

    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isAnimateOnPush()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    const/4 p3, 0x1

    :goto_6
    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    goto :goto_6

    .line 405
    .end local v5    # "newScreen":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v8, 0x13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FIXME: Failed to create a screen of type "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v8, v9, v3, v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 410
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "newScreen":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_6
    const/4 p3, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v2, p6

    .line 414
    goto :goto_3

    .line 423
    .restart local v0    # "popAndReplaceRunnable":Ljava/lang/Runnable;
    .restart local v2    # "screenParameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .restart local v4    # "callbacks":Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;
    :cond_8
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;

    .end local v0    # "popAndReplaceRunnable":Ljava/lang/Runnable;
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;ILcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .restart local v0    # "popAndReplaceRunnable":Ljava/lang/Runnable;
    goto :goto_4

    .line 495
    :pswitch_0
    invoke-direct {p0, p4, v0, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Transition(ZLjava/lang/Runnable;Z)V

    goto :goto_5

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .local p2, "newScreen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 257
    return-void
.end method

.method public PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 11
    .param p3, "params"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    .local p2, "newScreen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    .line 244
    .local v1, "toPop":I
    if-lez v1, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v4, v3

    move-object v6, p3

    .line 245
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    if-gez v1, :cond_1

    move-object v4, p0

    move-object v6, p2

    move v7, v3

    move v8, v5

    move v9, v5

    move-object v10, p3

    .line 248
    invoke-virtual/range {v4 .. v10}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-object v6, p2

    move v7, v3

    move v8, v5

    move v9, v5

    move-object v10, p3

    .line 251
    invoke-virtual/range {v4 .. v10}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0
.end method

.method public PushScreen(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 375
    return-void
.end method

.method public PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 7
    .param p2, "activityParameters"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v1, 0x0

    .line 369
    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move v4, v1

    move v5, v1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 370
    return-void
.end method

.method public RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V
    .locals 7
    .param p1, "params"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 206
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v3, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v3, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v3, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v3, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    .line 212
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    move-object v0, p0

    move v3, p2

    move v4, v1

    move v5, v1

    move-object v6, p1

    .line 213
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    .line 215
    .end local v2    # "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .restart local v2    # "newScreenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    move-object v0, p0

    move v3, p2

    move v4, v1

    move v5, v1

    move-object v6, p1

    .line 216
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0
.end method

.method public RestartCurrentScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V

    .line 203
    return-void
.end method

.method public ShouldBackCloseApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public TEST_isAnimatingIn()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public TEST_isAnimatingOut()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters(I)Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    return-object v0
.end method

.method public getActivityParameters(I)Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 116
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    goto :goto_0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    .line 73
    .local v0, "ativity":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApplicationPause()V
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 523
    .local v1, "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationPause()V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v1    # "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 530
    .local v1, "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationResume()V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v1    # "stackEntry":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 634
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnBackButtonPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->removeNavigationCallbacks()V

    .line 637
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->removeNaviationListener()V

    .line 645
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 642
    goto :goto_0
.end method

.method public removeNaviationListener()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    .line 95
    return-void
.end method

.method public removeNavigationCallbacks()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    .line 103
    return-void
.end method

.method public setAnimationBlocking(Z)V
    .locals 1
    .param p1, "animationBlocking"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 538
    :cond_0
    return-void
.end method

.method public setNavigationCallbacks(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    .line 99
    return-void
.end method

.method public setOnNavigatedListener(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    .line 91
    return-void
.end method
