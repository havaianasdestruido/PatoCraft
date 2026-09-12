package com.microsoft.xbox.toolkit;

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Toast;
import com.microsoft.xbox.toolkit.ui.BlockingScreen;
import com.microsoft.xbox.toolkit.ui.CancellableBlockingScreen;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.Stack;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class DialogManagerBase implements IProjectSpecificDialogManager {
    private BlockingScreen blockingSpinner;
    private CancellableBlockingScreen cancelableBlockingDialog;
    private Stack<IXLEManagedDialog> dialogStack = new Stack<>();
    private boolean isEnabled;
    private Toast visibleToast;

    protected DialogManagerBase() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public Dialog getVisibleDialog() {
        if (this.dialogStack.isEmpty()) {
            return null;
        }
        return this.dialogStack.peek().getDialog();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public boolean getIsBlocking() {
        return (this.blockingSpinner != null && this.blockingSpinner.isShowing()) || (this.cancelableBlockingDialog != null && this.cancelableBlockingDialog.isShowing());
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setEnabled(boolean value) {
        if (this.isEnabled != value) {
            this.isEnabled = value;
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showManagedDialog(IXLEManagedDialog dialog) {
        if (shouldDismissAllBeforeOpeningADialog()) {
            forceDismissAll();
        }
        if (this.isEnabled && XboxTcuiSdk.getActivity() != null && !XboxTcuiSdk.getActivity().isFinishing()) {
            this.dialogStack.push(dialog);
            try {
                dialog.getDialog().show();
            } catch (RuntimeException e) {
                String msg = e.getMessage();
                if (msg == null || !msg.contains("Adding window failed")) {
                    throw e;
                }
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void addManagedDialog(IXLEManagedDialog dialog) {
        if (this.isEnabled) {
            this.dialogStack.push(dialog);
            dialog.getDialog().show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissManagedDialog(IXLEManagedDialog dialog) {
        if (this.isEnabled) {
            this.dialogStack.remove(dialog);
            dialog.getDialog().dismiss();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onDialogStopped(IXLEManagedDialog dialog) {
        this.dialogStack.remove(dialog);
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showFatalAlertDialog(String title, String promptText, String okText, Runnable okHandler) {
        forceDismissAll();
        if (this.isEnabled) {
            XLEManagedAlertDialog dialog = buildDialog(title, promptText, okText, okHandler, null, null);
            dialog.setDialogType(IXLEManagedDialog.DialogType.FATAL);
            this.dialogStack.push(dialog);
            dialog.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showNonFatalAlertDialog(String title, String promptText, String okText, Runnable okHandler) {
        if (this.isEnabled) {
            XLEManagedAlertDialog dialog = buildDialog(title, promptText, okText, okHandler, null, null);
            dialog.setDialogType(IXLEManagedDialog.DialogType.NON_FATAL);
            this.dialogStack.push(dialog);
            dialog.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showOkCancelDialog(String title, String promptText, String okText, Runnable okHandler, String cancelText, Runnable cancelHandler) {
        XLEAssert.assertNotNull("You must supply cancel text if this is not a must-act dialog.", cancelText);
        if (this.dialogStack.size() <= 0 && this.isEnabled && XboxTcuiSdk.getActivity() != null && !XboxTcuiSdk.getActivity().isFinishing()) {
            XLEManagedAlertDialog dialog = buildDialog(title, promptText, okText, okHandler, cancelText, cancelHandler);
            dialog.setDialogType(IXLEManagedDialog.DialogType.NORMAL);
            this.dialogStack.push(dialog);
            dialog.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showToast(int contentResId) {
        dismissToast();
        if (this.isEnabled) {
            this.visibleToast = Toast.makeText(XboxTcuiSdk.getActivity(), contentResId, 1);
            this.visibleToast.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setBlocking(boolean visible, String statusText) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (this.isEnabled) {
            if (visible) {
                if (this.blockingSpinner == null) {
                    this.blockingSpinner = new BlockingScreen(XboxTcuiSdk.getActivity());
                }
                this.blockingSpinner.show(XboxTcuiSdk.getActivity(), statusText);
            } else if (this.blockingSpinner != null) {
                this.blockingSpinner.dismiss();
                this.blockingSpinner = null;
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setCancelableBlocking(boolean visible, String statusText, final Runnable cancelRunnable) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (this.isEnabled) {
            if (visible) {
                if (this.cancelableBlockingDialog == null) {
                    this.cancelableBlockingDialog = new CancellableBlockingScreen(XboxTcuiSdk.getActivity());
                    this.cancelableBlockingDialog.setCancelButtonAction(new View.OnClickListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            DialogManagerBase.this.cancelableBlockingDialog.dismiss();
                            DialogManagerBase.this.cancelableBlockingDialog = null;
                            cancelRunnable.run();
                        }
                    });
                }
                this.cancelableBlockingDialog.show(XboxTcuiSdk.getActivity(), statusText);
                return;
            }
            if (this.cancelableBlockingDialog != null) {
                this.cancelableBlockingDialog.dismiss();
                this.cancelableBlockingDialog = null;
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAll() {
        dismissToast();
        forceDismissAlerts();
        dismissBlocking();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissToast() {
        if (this.visibleToast != null) {
            this.visibleToast.cancel();
            this.visibleToast = null;
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAlerts() {
        while (this.dialogStack.size() > 0) {
            IXLEManagedDialog dialog = this.dialogStack.pop();
            dialog.quickDismiss();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissTopNonFatalAlert() {
        if (this.dialogStack.size() > 0 && this.dialogStack.peek().getDialogType() != IXLEManagedDialog.DialogType.FATAL) {
            IXLEManagedDialog dialog = this.dialogStack.pop();
            dialog.getDialog().dismiss();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissBlocking() {
        if (this.blockingSpinner != null) {
            this.blockingSpinner.dismiss();
            this.blockingSpinner = null;
        }
        if (this.cancelableBlockingDialog != null) {
            this.cancelableBlockingDialog.dismiss();
            this.cancelableBlockingDialog = null;
        }
    }

    protected boolean shouldDismissAllBeforeOpeningADialog() {
        return true;
    }

    private XLEManagedAlertDialog buildDialog(String title, String promptText, String okText, final Runnable okHandler, String cancelText, final Runnable cancelHandler) {
        final XLEManagedAlertDialog dialog = new XLEManagedAlertDialog(XboxTcuiSdk.getActivity());
        dialog.setTitle(title);
        dialog.setMessage(promptText);
        dialog.setButton(-1, okText, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface arg0, int arg1) {
                ThreadManager.UIThreadPost(okHandler);
            }
        });
        final Runnable wrappedCancelHandler = new Runnable() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase.3
            @Override // java.lang.Runnable
            public void run() {
                DialogManagerBase.this.dismissManagedDialog(dialog);
                if (cancelHandler != null) {
                    cancelHandler.run();
                }
            }
        };
        dialog.setButton(-2, cancelText, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface arg0, int arg1) {
                ThreadManager.UIThreadPost(wrappedCancelHandler);
            }
        });
        if (cancelText == null || cancelText.length() == 0) {
            dialog.setCancelable(false);
        } else {
            dialog.setCancelable(true);
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase.5
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog2) {
                    ThreadManager.UIThreadPost(wrappedCancelHandler);
                }
            });
        }
        return dialog;
    }
}
