.class public Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;
.super Landroid/app/Dialog;
.source "XboxTcuiWindowDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;
    }
.end annotation


# instance fields
.field private detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

.field private final xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "params"    # Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;>;"
    sget v0, Lcom/microsoft/xboxtcui/R$style;->TcuiDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    new-instance v0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-direct {v0, p1, p2, p3}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;-><init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    iput-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    .line 33
    return-void
.end method

.method private addCloseButton()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 67
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "closeButton":Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    const/16 v3, 0x3c

    invoke-virtual {v0, v3, v4, v4, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setPadding(IIII)V

    .line 73
    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->common_button_background:I

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundResource(I)V

    .line 74
    sget v3, Lcom/microsoft/xboxtcui/R$string;->ic_Close:I

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(I)V

    .line 75
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    .line 76
    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextSize(IF)V

    .line 77
    const-string v3, "fonts/SegXboxSymbol.ttf"

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeFace(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v3, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$2;

    invoke-direct {v3, p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$2;-><init>(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;)V

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v1, v2}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v1, -0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 45
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 47
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {v0, p1}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {p0, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->addCloseButton()V

    .line 52
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;-><init>(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setOnNavigatedListener(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;)V

    .line 64
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    invoke-interface {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;->onDetachedFromWindow()V

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->onStart()V

    .line 99
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->onStop()V

    .line 104
    return-void
.end method

.method public setDetachedCallback(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    .line 37
    return-void
.end method
