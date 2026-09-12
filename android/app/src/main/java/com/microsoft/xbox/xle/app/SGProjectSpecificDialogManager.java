package com.microsoft.xbox.xle.app;

import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.DialogManagerBase;
import com.microsoft.xbox.toolkit.IProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog;
import com.microsoft.xbox.xle.viewmodel.ChangeFriendshipDialogViewModel;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SGProjectSpecificDialogManager extends DialogManagerBase {
    private static IProjectSpecificDialogManager instance = new SGProjectSpecificDialogManager();
    private ChangeFriendshipDialog changeFriendshipDialog;

    public static IProjectSpecificDialogManager getInstance() {
        return instance;
    }

    public static SGProjectSpecificDialogManager getProjectSpecificInstance() {
        return (SGProjectSpecificDialogManager) DialogManager.getInstance().getManager();
    }

    private SGProjectSpecificDialogManager() {
    }

    @Override // com.microsoft.xbox.toolkit.DialogManagerBase, com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAll() {
        super.forceDismissAll();
        dismissChangeFriendshipDialog();
    }

    @Override // com.microsoft.xbox.toolkit.DialogManagerBase
    protected boolean shouldDismissAllBeforeOpeningADialog() {
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onApplicationPause() {
        forceDismissAll();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onApplicationResume() {
    }

    public void showChangeFriendshipDialog(ChangeFriendshipDialogViewModel vm, ViewModelBase previousVM) {
        if (this.changeFriendshipDialog != null) {
            this.changeFriendshipDialog.setVm(vm);
            this.changeFriendshipDialog.getDialog().show();
        } else {
            this.changeFriendshipDialog = new ChangeFriendshipDialog(XboxTcuiSdk.getActivity(), vm, previousVM);
            addManagedDialog(this.changeFriendshipDialog);
        }
    }

    public void notifyChangeFriendshipDialogUpdateView() {
        if (this.changeFriendshipDialog != null) {
            this.changeFriendshipDialog.updateView();
        }
    }

    public void notifyChangeFriendshipDialogAsyncTaskCompleted() {
        if (this.changeFriendshipDialog != null) {
            this.changeFriendshipDialog.reportAsyncTaskCompleted();
        }
    }

    public void notifyChangeFriendshipDialogAsyncTaskFailed(String errorMessage) {
        if (this.changeFriendshipDialog != null) {
            this.changeFriendshipDialog.reportAsyncTaskFailed(errorMessage);
        }
    }

    public void dismissChangeFriendshipDialog() {
        if (this.changeFriendshipDialog != null) {
            dismissManagedDialog(this.changeFriendshipDialog);
            this.changeFriendshipDialog = null;
        }
    }
}
