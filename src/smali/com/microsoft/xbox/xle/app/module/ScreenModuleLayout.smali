.class public abstract Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;
.super Landroid/widget/FrameLayout;
.source "ScreenModuleLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getViewModel()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.end method

.method public invalidateView()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onApplicationPause()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected setContentView(I)V
    .locals 2
    .param p1, "screenLayoutId"    # I

    .prologue
    .line 18
    const-string v1, "layout_inflater"

    invoke-static {v1}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    .local v0, "vi":Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    return-void
.end method

.method public abstract setViewModel(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
.end method

.method public abstract updateView()V
.end method
