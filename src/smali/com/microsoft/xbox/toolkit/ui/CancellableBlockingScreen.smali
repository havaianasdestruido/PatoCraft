.class public Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;
.super Landroid/app/Dialog;
.source "CancellableBlockingScreen.java"


# instance fields
.field private cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private container:Landroid/view/View;

.field private statusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "cancellable_dialog_style"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleRValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setCancelable(Z)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->requestWindowFeature(I)Z

    .line 29
    const-string v0, "cancellable_blocking_dialog"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getLayoutRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setContentView(I)V

    .line 31
    const-string v0, "blocking_dialog_container"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->container:Landroid/view/View;

    .line 32
    const-string v0, "blocking_dialog_cancel"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 33
    const-string v0, "blocking_dialog_status_text"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->statusText:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public setCancelButtonAction(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "statusText"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusText"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->isShowing()Z

    move-result v1

    .line 40
    .local v1, "previouslyVisible":Z
    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->show()V

    .line 44
    if-nez v1, :cond_0

    .line 45
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 47
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 48
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 50
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->container:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method
