.class public interface abstract Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;
.super Ljava/lang/Object;
.source "IProjectSpecificDialogManager.java"


# virtual methods
.method public abstract addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
.end method

.method public abstract dismissBlocking()V
.end method

.method public abstract dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
.end method

.method public abstract dismissToast()V
.end method

.method public abstract dismissTopNonFatalAlert()V
.end method

.method public abstract forceDismissAlerts()V
.end method

.method public abstract forceDismissAll()V
.end method

.method public abstract getIsBlocking()Z
.end method

.method public abstract getVisibleDialog()Landroid/app/Dialog;
.end method

.method public abstract onApplicationPause()V
.end method

.method public abstract onApplicationResume()V
.end method

.method public abstract onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
.end method

.method public abstract setBlocking(ZLjava/lang/String;)V
.end method

.method public abstract setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
.end method

.method public abstract showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract showToast(I)V
.end method
