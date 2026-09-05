.class public Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;
.super Lcom/microsoft/xbox/toolkit/DialogManagerBase;
.source "SGProjectSpecificDialogManager.java"


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# instance fields
.field private changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->instance:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->instance:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-object v0
.end method

.method public static getProjectSpecificInstance()Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    return-object v0
.end method


# virtual methods
.method public dismissChangeFriendshipDialog()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    .line 90
    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissChangeFriendshipDialog()V

    .line 36
    return-void
.end method

.method public notifyChangeFriendshipDialogAsyncTaskCompleted()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->reportAsyncTaskCompleted()V

    .line 77
    :cond_0
    return-void
.end method

.method public notifyChangeFriendshipDialogAsyncTaskFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->reportAsyncTaskFailed(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public notifyChangeFriendshipDialogUpdateView()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    .line 71
    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->forceDismissAll()V

    .line 51
    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected shouldDismissAllBeforeOpeningADialog()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public showChangeFriendshipDialog(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 2
    .param p1, "vm"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p2, "previousVM"    # Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setVm(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)V

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    goto :goto_0
.end method
