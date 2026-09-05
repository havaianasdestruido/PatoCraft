.class public abstract Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.super Ljava/lang/Object;
.source "ViewModelBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/XLEObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;,
        Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/toolkit/XLEObserver",
        "<",
        "Lcom/microsoft/xbox/service/model/UpdateData;",
        ">;"
    }
.end annotation


# static fields
.field protected static LAUNCH_TIME_OUT:I = 0x0

.field public static final TAG_PAGE_LOADING_TIME:Ljava/lang/String; = "performance_measure_page_loadingtime"


# instance fields
.field protected LifetimeInMinutes:I

.field protected adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

.field protected isActive:Z

.field protected isForeground:Z

.field protected isLaunching:Z

.field protected launchTimeoutHandler:Ljava/lang/Runnable;

.field protected listIndex:I

.field private nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

.field protected offset:I

.field private onlyProcessExceptionsAndShowToastsWhenActive:Z

.field private parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

.field private final screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

.field private shouldHideScreen:Z

.field private showNoNetworkPopup:Z

.field private updateExceptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            ">;"
        }
    .end annotation
.end field

.field private updateTypesToCheck:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x1388

    sput v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->LAUNCH_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 2
    .param p1, "screen"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 96
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V
    .locals 2
    .param p1, "screen"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .param p2, "showNoNetworkPopup"    # Z
    .param p3, "onlyProcessExceptionsAndShowToastsWhenActive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x3c

    iput v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->LifetimeInMinutes:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    .line 79
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    .line 81
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    .line 88
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    .line 108
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 109
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    .line 110
    iput-boolean p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    .line 111
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "showNoNetworkPopup"    # Z
    .param p2, "onlyProcessExceptionsAndShowToastsWhenActive"    # Z

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    .line 105
    return-void
.end method

.method private shouldProcessErrors()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    if-eqz v0, :cond_0

    .line 571
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected NavigateTo(Ljava/lang/Class;)V
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

    .prologue
    .line 501
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 502
    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
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

    .prologue
    .line 496
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 497
    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;Z)V
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
    .line 518
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 519
    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 2
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
    .line 506
    .local p1, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->cancelLaunchTimeout()V

    .line 507
    const-string v0, "We shouldn\'t navigate to a new screen if the current screen is blocking"

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isBlockingBusy()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 508
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    if-eqz v0, :cond_1

    .line 509
    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->Push:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    :goto_0
    invoke-direct {v1, p0, p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;Ljava/lang/Class;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    .line 514
    :goto_1
    return-void

    .line 509
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->PopReplace:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    goto :goto_0

    .line 511
    :cond_1
    const-string v0, "We shouldn\'t navigate to a new screen if the current screen is blocking"

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isBlockingBusy()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 512
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_1
.end method

.method public TEST_induceGoBack()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method protected adapterUpdateView()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    .line 597
    :cond_0
    return-void
.end method

.method public cancelLaunch()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    .line 591
    return-void
.end method

.method protected cancelLaunchTimeout()V
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    .line 584
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->launchTimeoutHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->launchTimeoutHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    :cond_0
    return-void
.end method

.method protected checkErrorCode(Lcom/microsoft/xbox/service/model/UpdateType;J)Z
    .locals 4
    .param p1, "updateType"    # Lcom/microsoft/xbox/service/model/UpdateType;
    .param p2, "errorCode"    # J

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 443
    :goto_0
    return v0

    .line 441
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 443
    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->xleFindViewId(I)Landroid/view/View;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    .line 320
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    .line 323
    :cond_0
    return-void
.end method

.method public forceUpdateViewImmediately()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->forceUpdateViewImmediately()V

    .line 264
    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-object v0
.end method

.method public getAndResetListOffset()I
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    .line 185
    .local v0, "offset":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    .line 186
    return v0
.end method

.method public getAndResetListPosition()I
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    .line 179
    .local v0, "value":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    .line 180
    return v0
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 5
    .param p1, "goingBack"    # Z

    .prologue
    .line 474
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v3, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->getAnimateIn(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 476
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 477
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 478
    .local v1, "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    .line 479
    .local v0, "animation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    .line 483
    .end local v0    # "animation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .end local v1    # "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 5
    .param p1, "goingBack"    # Z

    .prologue
    .line 461
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v3, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->getAnimateOut(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 463
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 464
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 465
    .local v1, "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    .line 466
    .local v0, "animation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    .line 470
    .end local v0    # "animation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .end local v1    # "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getBlockingStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsActive()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    return v0
.end method

.method protected getParent()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-object v0
.end method

.method public getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0
.end method

.method public getShouldHideScreen()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldHideScreen:Z

    return v0
.end method

.method public getShowNoNetworkPopup()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    return v0
.end method

.method public isBlockingBusy()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isBusy()Z
.end method

.method public leaveViewModel(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "leaveHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 615
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 616
    return-void
.end method

.method public load()V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->getInstance()Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->CheckDrainShouldRefresh(Ljava/lang/Class;)Z

    move-result v0

    .line 315
    .local v0, "forceRefresh":Z
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    .line 316
    return-void
.end method

.method public abstract load(Z)V
.end method

.method protected logOut(Z)V
    .locals 0
    .param p1, "clearEverything"    # Z

    .prologue
    .line 429
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 148
    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onAnimateInCompleted()V

    .line 493
    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onApplicationPause()V

    .line 227
    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onApplicationResume()V

    .line 233
    :cond_0
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected onChildViewModelChanged(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 0
    .param p1, "child"    # Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .prologue
    .line 132
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 270
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onDestroy()V

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 249
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->cancelLaunchTimeout()V

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onPause()V

    .line 221
    :cond_0
    return-void
.end method

.method public abstract onRehydrate()V
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    .line 240
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    return-void
.end method

.method public onSetActive()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    .line 546
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onSetActive()V

    .line 549
    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    .prologue
    .line 553
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissToast()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    .line 556
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onSetInactive()V

    .line 559
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isForeground:Z

    .line 157
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStartOverride()V

    .line 159
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 162
    :cond_0
    return-void
.end method

.method protected abstract onStartOverride()V
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isForeground:Z

    .line 198
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStop()V

    .line 203
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissBlocking()V

    .line 204
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldDismissTopNoFatalAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissTopNonFatalAlert()V

    .line 207
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissToast()V

    .line 209
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStopOverride()V

    .line 210
    return-void
.end method

.method protected abstract onStopOverride()V
.end method

.method public onTombstone()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onDestroy()V

    .line 257
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 258
    return-void
.end method

.method protected onUpdateFinished()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    .line 457
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 458
    return-void
.end method

.method public setAsPivotPane()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    .line 579
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    .line 580
    return-void
.end method

.method public setListPosition(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    .line 174
    iput p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    .line 175
    return-void
.end method

.method protected setParent(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 0
    .param p1, "parent"    # Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 125
    return-void
.end method

.method public setScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->setScreenState(I)V

    .line 603
    :cond_0
    return-void
.end method

.method public setShouldHideScreen(Z)V
    .locals 0
    .param p1, "shouldHide"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldHideScreen:Z

    .line 170
    return-void
.end method

.method protected setUpdateTypesToCheck(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "checkList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/xbox/service/model/UpdateType;>;"
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    .line 433
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 434
    return-void
.end method

.method protected shouldDismissTopNoFatalAlert()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRefreshAsPivotHeader()Z
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method protected showError(I)V
    .locals 1
    .param p1, "contentResId"    # I

    .prologue
    .line 541
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    .line 542
    return-void
.end method

.method protected showMustActDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;
    .param p5, "isFatal"    # Z

    .prologue
    .line 524
    return-void
.end method

.method protected showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "promptText"    # Ljava/lang/String;
    .param p2, "okText"    # Ljava/lang/String;
    .param p3, "okHandler"    # Ljava/lang/Runnable;
    .param p4, "cancelText"    # Ljava/lang/String;
    .param p5, "cancelHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 527
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method protected showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "cancelHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldProcessErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/microsoft/xbox/xle/app/XLEUtil;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final update(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "asyncResult":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/UpdateData;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iput-boolean v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    .line 342
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 344
    iput-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    .line 346
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v0

    .line 348
    .local v0, "errorCode":J
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    const-wide/16 v6, 0x3ed

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;->setIsHandled(Z)V

    .line 360
    .end local v0    # "errorCode":J
    :cond_0
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateWithoutAdapter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    :cond_1
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 366
    :cond_2
    iput-boolean v4, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    .line 369
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-eqz v2, :cond_5

    .line 371
    :try_start_0
    sget-object v2, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$1;->$SwitchMap$com$microsoft$xbox$xle$viewmodel$ViewModelBase$NavigationType:[I

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getNavigationType()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 413
    :cond_3
    :goto_1
    iput-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    .line 414
    return-void

    :cond_4
    move v2, v4

    .line 342
    goto :goto_0

    .line 373
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;Z)V

    goto :goto_1

    .line 382
    :catch_0
    move-exception v2

    goto :goto_1

    .line 376
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;Z)V

    goto :goto_1

    .line 379
    :pswitch_2
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->GotoScreenWithPop(Ljava/lang/Class;)V
    :try_end_1
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldProcessErrors()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 392
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 393
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getIsFinal()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v2, :cond_7

    .line 400
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 404
    :cond_7
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    :cond_8
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onUpdateFinished()V

    .line 406
    iput-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    goto/16 :goto_1

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateAdapter()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter(Z)V

    .line 136
    return-void
.end method

.method protected updateAdapter(Z)V
    .locals 1
    .param p1, "notifyParent"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onChildViewModelChanged(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 145
    :cond_1
    return-void
.end method

.method protected updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "asyncResult":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/UpdateData;>;"
    return-void
.end method

.method protected updateTypesToCheckHadAnyErrors()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTypesToCheckIsEmpty()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateWithoutAdapter()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method
