.class public abstract Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.super Ljava/lang/Object;
.source "AdapterBase.java"


# static fields
.field public static ALLOCATION_TAG:Ljava/lang/String;

.field private static adapterCounter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected isActive:Z

.field private isStarted:Z

.field private screenModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "ADAPTERBASE"

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->adapterCounter:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 3
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isActive:Z

    .line 20
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 39
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugIncrement(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugPrintOverallocated(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugDecrement(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugPrintOverallocated(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected findAndInitializeModuleById(ILcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "vm"    # Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 186
    .local v0, "module":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->setViewModel(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 187
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "module":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public forceUpdateViewImmediately()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateViewOverride()V

    .line 83
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 84
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->updateView()V

    goto :goto_0

    .line 86
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public getAnimateIn(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "goingBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimateOut(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "goingBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIsStarted()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    return v0
.end method

.method public invalidateView()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->invalidateViewOverride()V

    .line 69
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 70
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->invalidateView()V

    goto :goto_0

    .line 73
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method protected invalidateViewOverride()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected onAppBarButtonsAdded()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected onAppBarUpdated()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public onApplicationPause()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 104
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onApplicationPause()V

    goto :goto_0

    .line 106
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 110
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onApplicationResume()V

    goto :goto_0

    .line 112
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 122
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onDestroy()V

    goto :goto_0

    .line 125
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 98
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onPause()V

    goto :goto_0

    .line 100
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 116
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onResume()V

    goto :goto_0

    .line 118
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public onSetActive()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isActive:Z

    .line 157
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    .line 162
    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isActive:Z

    .line 167
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    .line 130
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 131
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onStart()V

    goto :goto_0

    .line 133
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    .line 137
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 138
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onStop()V

    goto :goto_0

    .line 140
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method protected setBlocking(ZLjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "blockingText"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/DialogManager;->setBlocking(ZLjava/lang/String;)V

    .line 193
    return-void
.end method

.method protected setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "blockingText"    # Ljava/lang/String;
    .param p3, "cancelRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 196
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/DialogManager;->setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public setScreenState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 201
    return-void
.end method

.method protected showKeyboard(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMS"    # I

    .prologue
    .line 151
    invoke-static {p1, p2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->showKeyboard(Landroid/view/View;I)V

    .line 152
    return-void
.end method

.method public updateView()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateViewOverride()V

    .line 57
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    .line 58
    .local v0, "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->updateView()V

    goto :goto_0

    .line 61
    .end local v0    # "miniAdapter":Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
    :cond_0
    return-void
.end method

.method protected abstract updateViewOverride()V
.end method
