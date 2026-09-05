.class public Lcom/microsoft/xbox/toolkit/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/DialogManager;


# instance fields
.field private manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/microsoft/xbox/toolkit/DialogManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/DialogManager;->instance:Lcom/microsoft/xbox/toolkit/DialogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private checkProvider()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/microsoft/xbox/toolkit/DialogManager;->instance:Lcom/microsoft/xbox/toolkit/DialogManager;

    return-object v0
.end method


# virtual methods
.method public addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 172
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 175
    :cond_0
    return-void
.end method

.method public dismissBlocking()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 161
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissBlocking()V

    .line 164
    :cond_0
    return-void
.end method

.method public dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 67
    :cond_0
    return-void
.end method

.method public dismissToast()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissToast()V

    .line 140
    :cond_0
    return-void
.end method

.method public dismissTopNonFatalAlert()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissTopNonFatalAlert()V

    .line 156
    :cond_0
    return-void
.end method

.method public forceDismissAlerts()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 145
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->forceDismissAlerts()V

    .line 148
    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 129
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->forceDismissAll()V

    .line 132
    :cond_0
    return-void
.end method

.method public getIsBlocking()Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->getIsBlocking()Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApplicationPause()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->onApplicationPause()V

    .line 182
    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->onApplicationResume()V

    .line 189
    :cond_0
    return-void
.end method

.method public onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setBlocking(ZLjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "statusText"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 113
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->setBlocking(ZLjava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "cancelRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 121
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->setEnabled(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public setManager(Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    .line 19
    return-void
.end method

.method public showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 59
    :cond_0
    return-void
.end method

.method public showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void
.end method

.method public showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "okText"    # Ljava/lang/String;
    .param p4, "okHandler"    # Ljava/lang/Runnable;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "cancelHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 97
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public showToast(I)V
    .locals 1
    .param p1, "contentResId"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    .line 105
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showToast(I)V

    .line 108
    :cond_0
    return-void
.end method
