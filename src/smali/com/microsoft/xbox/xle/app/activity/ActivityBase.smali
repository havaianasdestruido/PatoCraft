.class public abstract Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.super Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
.source "ActivityBase.java"


# instance fields
.field private showRightPane:Z

.field private showUtilityBar:Z

.field protected viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showUtilityBar:Z

    .line 37
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showRightPane:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showUtilityBar:Z

    .line 37
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showRightPane:Z

    .line 49
    return-void
.end method

.method private getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/xbox/xle/ui/XLERootView;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/XLERootView;

    .line 384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustBottomMargin(I)V
    .locals 1
    .param p1, "bottomMargin"    # I

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBottomMargin(I)V

    .line 393
    :cond_0
    return-void
.end method

.method protected computeBottomMargin()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "marginBottom":I
    return v0
.end method

.method protected delayAppbarAnimation()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceRefresh()V

    .line 80
    :cond_0
    return-void
.end method

.method public forceUpdateViewImmediately()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    .line 168
    :cond_0
    return-void
.end method

.method protected abstract getActivityName()Ljava/lang/String;
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 6
    .param p1, "goingBack"    # Z

    .prologue
    .line 196
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "root":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v4

    const-string v5, "Screen"

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    .line 199
    .local v0, "animation":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    if-eqz v0, :cond_0

    .line 200
    check-cast v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    .end local v0    # "animation":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    sget-object v4, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v0, v4, p1, v2}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v3

    .line 201
    .local v3, "screenBodyAnimation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    if-eqz v3, :cond_0

    .line 202
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 203
    .local v1, "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    .line 210
    .end local v1    # "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .end local v3    # "screenBodyAnimation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 6
    .param p1, "goingBack"    # Z

    .prologue
    .line 177
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "root":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 179
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v4

    const-string v5, "Screen"

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    .line 180
    .local v0, "animation":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    if-eqz v0, :cond_0

    .line 181
    check-cast v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    .end local v0    # "animation":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    sget-object v4, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v0, v4, p1, v2}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v3

    .line 182
    .local v3, "screenBodyAnimation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    if-eqz v3, :cond_0

    .line 183
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 184
    .local v1, "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    .line 191
    .end local v1    # "animationPackage":Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .end local v3    # "screenBodyAnimation":Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldShowAppbar()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 145
    .local v0, "viewModelWeakPtr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/ActivityBase;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->postRunnableAfterReady(Ljava/lang/Runnable;)V

    .line 158
    .end local v0    # "viewModelWeakPtr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;>;"
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onAnimateInCompleted()V

    .line 161
    :cond_1
    return-void
.end method

.method public onAnimateInStarted()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    .line 139
    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationPause()V

    .line 307
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onApplicationPause()V

    .line 310
    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationResume()V

    .line 316
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onApplicationResume()V

    .line 319
    :cond_0
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 378
    :cond_0
    return-void
.end method

.method public abstract onCreateContentView()V
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onDestroy()V

    .line 338
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 340
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDestroy()V

    .line 341
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 439
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDetachedFromWindow()V

    .line 440
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->clearDisappearingChildren()V

    .line 441
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onPause()V

    .line 301
    :cond_0
    return-void
.end method

.method public onRehydrate()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrate()V

    .line 358
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onRehydrate()V

    .line 361
    :cond_0
    return-void
.end method

.method public onRehydrateOverride()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreateContentView()V

    .line 366
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    .line 325
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onResume()V

    .line 328
    :cond_0
    return-void
.end method

.method public onSetActive()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    .line 263
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetActive()V

    .line 266
    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    .line 289
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetInactive()V

    .line 292
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getIsStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStart()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load()V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->delayAppbarAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->computeBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->adjustBottomMargin(I)V

    .line 132
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getIsStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetInactive()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStop()V

    .line 73
    :cond_1
    return-void
.end method

.method public onTombstone()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onTombstone()V

    .line 350
    :cond_0
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onTombstone()V

    .line 352
    return-void
.end method

.method public removeBottomMargin()V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBottomMargin(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public resetBottomMargin()V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->computeBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->adjustBottomMargin(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 417
    return-void
.end method

.method public setScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->setScreenState(I)V

    .line 435
    :cond_0
    return-void
.end method
