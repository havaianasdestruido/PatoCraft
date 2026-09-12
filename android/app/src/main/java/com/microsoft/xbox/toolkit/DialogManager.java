package com.microsoft.xbox.toolkit;

import android.app.Dialog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DialogManager implements IProjectSpecificDialogManager {
    private static DialogManager instance = new DialogManager();
    private IProjectSpecificDialogManager manager;

    private DialogManager() {
    }

    public static DialogManager getInstance() {
        return instance;
    }

    public void setManager(IProjectSpecificDialogManager manager) {
        this.manager = manager;
    }

    public IProjectSpecificDialogManager getManager() {
        return this.manager;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public Dialog getVisibleDialog() {
        checkProvider();
        if (this.manager != null) {
            return this.manager.getVisibleDialog();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public boolean getIsBlocking() {
        checkProvider();
        if (this.manager != null) {
            return this.manager.getIsBlocking();
        }
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setEnabled(boolean value) {
        checkProvider();
        if (this.manager != null) {
            this.manager.setEnabled(value);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showManagedDialog(IXLEManagedDialog dialog) {
        checkProvider();
        if (this.manager != null) {
            this.manager.showManagedDialog(dialog);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissManagedDialog(IXLEManagedDialog dialog) {
        checkProvider();
        if (this.manager != null) {
            this.manager.dismissManagedDialog(dialog);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onDialogStopped(IXLEManagedDialog dialog) {
        checkProvider();
        if (this.manager != null) {
            this.manager.onDialogStopped(dialog);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showFatalAlertDialog(String title, String promptText, String okText, Runnable okHandler) {
        checkProvider();
        if (this.manager != null) {
            this.manager.showFatalAlertDialog(title, promptText, okText, okHandler);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showNonFatalAlertDialog(String title, String promptText, String okText, Runnable okHandler) {
        checkProvider();
        if (this.manager != null) {
            this.manager.showNonFatalAlertDialog(title, promptText, okText, okHandler);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showOkCancelDialog(String title, String promptText, String okText, Runnable okHandler, String cancelText, Runnable cancelHandler) {
        checkProvider();
        if (this.manager != null) {
            this.manager.showOkCancelDialog(title, promptText, okText, okHandler, cancelText, cancelHandler);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showToast(int contentResId) {
        checkProvider();
        if (this.manager != null) {
            this.manager.showToast(contentResId);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setBlocking(boolean visible, String statusText) {
        checkProvider();
        if (this.manager != null) {
            this.manager.setBlocking(visible, statusText);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setCancelableBlocking(boolean visible, String statusText, Runnable cancelRunnable) {
        checkProvider();
        if (this.manager != null) {
            this.manager.setCancelableBlocking(visible, statusText, cancelRunnable);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAll() {
        checkProvider();
        if (this.manager != null) {
            this.manager.forceDismissAll();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissToast() {
        checkProvider();
        if (this.manager != null) {
            this.manager.dismissToast();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAlerts() {
        checkProvider();
        if (this.manager != null) {
            this.manager.forceDismissAlerts();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissTopNonFatalAlert() {
        checkProvider();
        if (this.manager != null) {
            this.manager.dismissTopNonFatalAlert();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissBlocking() {
        checkProvider();
        if (this.manager != null) {
            this.manager.dismissBlocking();
        }
    }

    private void checkProvider() {
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void addManagedDialog(IXLEManagedDialog dialog) {
        checkProvider();
        if (this.manager != null) {
            this.manager.addManagedDialog(dialog);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onApplicationPause() {
        if (this.manager != null) {
            this.manager.onApplicationPause();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onApplicationResume() {
        if (this.manager != null) {
            this.manager.onApplicationResume();
        }
    }
}
