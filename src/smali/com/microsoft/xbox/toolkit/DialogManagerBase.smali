.class public abstract Lcom/microsoft/xbox/toolkit/DialogManagerBase;
.super Ljava/lang/Object;
.source "DialogManagerBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# instance fields
.field private blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

.field private cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

.field private dialogStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private isEnabled:Z

.field private visibleToast:Landroid/widget/Toast;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/DialogManagerBase;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    return-object v0
.end method

.method static synthetic access$002(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/DialogManagerBase;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    return-object p1
.end method

.method private buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "cancelHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 333
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "dialog":Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 336
    const/4 v2, -0x1

    new-instance v3, Lcom/microsoft/xbox/toolkit/DialogManagerBase$2;

    invoke-direct {v3, p0, p4}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$2;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, p3, v3}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 344
    new-instance v1, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;

    invoke-direct {v1, p0, v0, p6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V

    .line 354
    .local v1, "wrappedCancelHandler":Ljava/lang/Runnable;
    const/4 v2, -0x2

    new-instance v3, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;

    invoke-direct {v3, p0, v1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, p5, v3}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 361
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 362
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setCancelable(Z)V

    .line 375
    :goto_0
    return-object v0

    .line 365
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setCancelable(Z)V

    .line 366
    new-instance v2, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;

    invoke-direct {v2, p0, v1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 103
    :cond_0
    return-void
.end method

.method public dismissBlocking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->dismiss()V

    .line 314
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    .line 319
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    .line 321
    :cond_1
    return-void
.end method

.method public dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    :cond_0
    return-void
.end method

.method public dismissToast()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    .line 275
    :cond_0
    return-void
.end method

.method public dismissTopNonFatalAlert()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialogType()Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    if-eq v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .line 301
    .local v0, "dialog":Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 303
    .end local v0    # "dialog":Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;
    :cond_0
    return-void
.end method

.method public forceDismissAlerts()V
    .locals 2

    .prologue
    .line 284
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .line 287
    .local v0, "dialog":Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->quickDismiss()V

    goto :goto_0

    .line 289
    .end local v0    # "dialog":Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;
    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissToast()V

    .line 260
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAlerts()V

    .line 261
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissBlocking()V

    .line 262
    return-void
.end method

.method public getIsBlocking()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public setBlocking(ZLjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "statusText"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 207
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 208
    if-eqz p1, :cond_3

    .line 209
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->dismiss()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    goto :goto_1
.end method

.method public setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "cancelRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 231
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 232
    if-eqz p1, :cond_3

    .line 233
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    .line 235
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    new-instance v1, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;

    invoke-direct {v1, p0, p3}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setCancelButtonAction(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eq v0, p1, :cond_0

    .line 61
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    .line 63
    :cond_0
    return-void
.end method

.method protected shouldDismissAllBeforeOpeningADialog()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    .line 137
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 138
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object v7

    .line 139
    .local v7, "dialog":Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    sget-object v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {v7, v0}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    .line 140
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v7}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    .line 143
    .end local v7    # "dialog":Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    :cond_0
    return-void
.end method

.method public showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->shouldDismissAllBeforeOpeningADialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    .line 76
    :cond_0
    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v2, :cond_1

    .line 77
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "Adding window failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_2
    throw v0
.end method

.method public showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 153
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object v7

    .line 154
    .local v7, "dialog":Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    sget-object v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NON_FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {v7, v0}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    .line 155
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v7}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    .line 158
    .end local v7    # "dialog":Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    :cond_0
    return-void
.end method

.method public showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "cancelHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 167
    const-string v1, "You must supply cancel text if this is not a must-act dialog."

    invoke-static {v1, p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object v0

    .line 176
    .local v0, "dialog":Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    sget-object v1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    .line 177
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    goto :goto_0
.end method

.method public showToast(I)V
    .locals 2
    .param p1, "contentResId"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissToast()V

    .line 193
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    .line 195
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    :cond_0
    return-void
.end method
