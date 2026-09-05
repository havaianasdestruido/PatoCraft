.class public abstract Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
.super Landroid/widget/FrameLayout;
.source "ScreenLayout.java"


# static fields
.field private static badList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allEventsEnabled:Z

.field private drawerEnabled:Z

.field private isActive:Z

.field private isEditable:Z

.field private isReady:Z

.field private isStarted:Z

.field protected isTombstoned:Z

.field private onLayoutChangedListener:Ljava/lang/Runnable;

.field private orientation:I

.field private screenPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    .line 38
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    .line 51
    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->Initialize(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    .line 35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    .line 37
    const/16 v2, 0x64

    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    .line 38
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    .line 39
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    .line 64
    const-string v2, "ScreenLayout"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v2, "ScreenLayout_screenDIPs"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "ScreenLayout_screenDIPs"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 68
    .local v1, "screenPixelWidth":I
    int-to-float v2, v1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    .line 72
    .end local v1    # "screenPixelWidth":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->Initialize(I)V

    .line 75
    return-void

    .line 70
    :cond_0
    const-string v2, "ScreenLayout_screenPercent"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    goto :goto_0
.end method

.method public static addViewThatCausesAndroidLeaks(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 267
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private removeAllViewsAndWorkaroundAndroidLeaks()V
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeAllViews()V

    .line 275
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 276
    .local v0, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeViewAndWorkaroundAndroidLeaks(Landroid/view/View;)V

    goto :goto_1

    .line 271
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 280
    return-void
.end method

.method public static removeViewAndWorkaroundAndroidLeaks(Landroid/view/View;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 283
    if-eqz p0, :cond_1

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 285
    .local v2, "viewparent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 286
    check-cast v0, Landroid/view/ViewGroup;

    .line 287
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 292
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 293
    check-cast v1, Landroid/view/ViewGroup;

    .line 294
    .local v1, "view":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 295
    invoke-virtual {v1}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 297
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 300
    .end local v1    # "view":Landroid/view/ViewGroup;
    .end local v2    # "viewparent":Landroid/view/ViewParent;
    :cond_1
    return-void

    .restart local v0    # "parent":Landroid/view/ViewGroup;
    .restart local v2    # "viewparent":Landroid/view/ViewParent;
    :cond_2
    move v3, v5

    .line 289
    goto :goto_0

    .end local v0    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "view":Landroid/view/ViewGroup;
    :cond_3
    move v4, v5

    .line 297
    goto :goto_1
.end method


# virtual methods
.method protected Initialize(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    .line 56
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    .line 57
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    .line 58
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->orientation:I

    .line 59
    return-void
.end method

.method public adjustBottomMargin(I)V
    .locals 0
    .param p1, "bottomMargin"    # I

    .prologue
    .line 241
    return-void
.end method

.method public abstract forceRefresh()V
.end method

.method public abstract forceUpdateViewImmediately()V
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 1
    .param p1, "goingBack"    # Z

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 1
    .param p1, "goingBack"    # Z

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanAutoLaunch()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsActive()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    return v0
.end method

.method public getIsEditable()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    return v0
.end method

.method public getIsReady()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    return v0
.end method

.method public getIsStarted()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    return v0
.end method

.method public getIsTombstoned()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isTombstoned:Z

    return v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getRelativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenPercent()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    return v0
.end method

.method public getShouldShowAppbar()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackPage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isAllEventsEnabled()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    return v0
.end method

.method public isAnimateOnPop()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public isAnimateOnPush()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    return v0
.end method

.method public isKeepPreviousScreen()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public leaveScreen(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "leaveHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 339
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 340
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    return-void
.end method

.method public abstract onAnimateInCompleted()V
.end method

.method public abstract onAnimateInStarted()V
.end method

.method public onApplicationPause()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public abstract onBackButtonPressed()Z
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 238
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeAllViewsAndWorkaroundAndroidLeaks()V

    .line 140
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 202
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 204
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 207
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    .line 127
    return-void
.end method

.method public onRehydrate()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isTombstoned:Z

    .line 149
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrateOverride()V

    .line 150
    return-void
.end method

.method public abstract onRehydrateOverride()V
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    .line 107
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    return-void
.end method

.method public onSetActive()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    .line 194
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    .line 198
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    .line 103
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    .line 131
    return-void
.end method

.method public onTombstone()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isTombstoned:Z

    .line 144
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeAllViewsAndWorkaroundAndroidLeaks()V

    .line 145
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeBottomMargin()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public resetBottomMargin()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public setAllEventsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    .line 356
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "screenLayoutId"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    return-void
.end method

.method public setDrawerEnabled(Z)V
    .locals 0
    .param p1, "drawerEnabled"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    .line 313
    return-void
.end method

.method public setIsEditable(Z)V
    .locals 0
    .param p1, "isEditable"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    .line 264
    return-void
.end method

.method public setOnLayoutChangedListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    .line 231
    return-void
.end method

.method public setScreenPercent(I)Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    .line 308
    return-object p0
.end method

.method public setScreenState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 134
    return-void
.end method

.method public xleFindViewId(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
