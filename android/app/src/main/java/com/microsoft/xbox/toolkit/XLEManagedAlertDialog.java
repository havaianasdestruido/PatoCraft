package com.microsoft.xbox.toolkit;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEManagedAlertDialog extends AlertDialog implements IXLEManagedDialog {
    private IXLEManagedDialog.DialogType dialogType;

    protected XLEManagedAlertDialog(Context context) {
        super(context);
        this.dialogType = IXLEManagedDialog.DialogType.NORMAL;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void setDialogType(IXLEManagedDialog.DialogType type) {
        this.dialogType = type;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public IXLEManagedDialog.DialogType getDialogType() {
        return this.dialogType;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public Dialog getDialog() {
        return this;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void safeDismiss() {
        DialogManager.getInstance().dismissManagedDialog(this);
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void quickDismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        DialogManager.getInstance().onDialogStopped(this);
    }
}
