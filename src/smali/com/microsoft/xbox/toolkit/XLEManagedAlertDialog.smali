.class public Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
.super Landroid/app/AlertDialog;
.source "XLEManagedAlertDialog.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;


# instance fields
.field private dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    .line 12
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 26
    return-object p0
.end method

.method public getDialogType()Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-object v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 43
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 44
    return-void
.end method

.method public quickDismiss()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 38
    return-void
.end method

.method public safeDismiss()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 32
    return-void
.end method

.method public setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V
    .locals 0
    .param p1, "type"    # Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    .line 17
    return-void
.end method
