package com.microsoft.xbox.toolkit;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import com.microsoft.xbox.toolkit.anim.MAAS;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimationPackage;
import com.microsoft.xbox.toolkit.system.SystemUtil;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.xle.anim.XLEMAASAnimationPackageNavigationManager;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEManagedDialog extends Dialog implements IXLEManagedDialog {
    protected static final String BODY_ANIMATION_NAME = "Dialog";
    protected String bodyAnimationName;
    final Runnable callAfterAnimationIn;
    final Runnable callAfterAnimationOut;
    protected View dialogBody;
    private IXLEManagedDialog.DialogType dialogType;
    protected Runnable onAnimateOutCompletedRunable;

    public void setBodyAnimationName(String string) {
        this.bodyAnimationName = string;
    }

    public String getBodyAnimationName() {
        return this.bodyAnimationName;
    }

    protected XLEManagedDialog(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.dialogBody = null;
        this.onAnimateOutCompletedRunable = null;
        this.dialogType = IXLEManagedDialog.DialogType.NORMAL;
        this.bodyAnimationName = BODY_ANIMATION_NAME;
        this.callAfterAnimationIn = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.1
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.OnAnimationInEnd();
            }
        };
        this.callAfterAnimationOut = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.2
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.OnAnimationOutEnd();
            }
        };
    }

    public XLEManagedDialog(Context context, int theme) {
        super(context, theme);
        this.dialogBody = null;
        this.onAnimateOutCompletedRunable = null;
        this.dialogType = IXLEManagedDialog.DialogType.NORMAL;
        this.bodyAnimationName = BODY_ANIMATION_NAME;
        this.callAfterAnimationIn = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.1
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.OnAnimationInEnd();
            }
        };
        this.callAfterAnimationOut = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.2
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.OnAnimationOutEnd();
            }
        };
    }

    public XLEManagedDialog(Context context) {
        super(context);
        this.dialogBody = null;
        this.onAnimateOutCompletedRunable = null;
        this.dialogType = IXLEManagedDialog.DialogType.NORMAL;
        this.bodyAnimationName = BODY_ANIMATION_NAME;
        this.callAfterAnimationIn = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.1
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.OnAnimationInEnd();
            }
        };
        this.callAfterAnimationOut = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.2
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.OnAnimationOutEnd();
            }
        };
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

    public void makeFullScreen() {
        getWindow().setLayout(-1, -2);
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void safeDismiss() {
        DialogManager.getInstance().dismissManagedDialog(this);
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void quickDismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        if (!hasFocus) {
            safeDismiss();
        }
    }

    public XLEAnimationPackage getAnimateOut() {
        XLEAnimation screenBodyAnimation = getBodyAnimation(MAAS.MAASAnimationType.ANIMATE_OUT, true);
        if (screenBodyAnimation == null) {
            return null;
        }
        XLEAnimationPackage animationPackage = new XLEAnimationPackage();
        animationPackage.add(screenBodyAnimation);
        return animationPackage;
    }

    public XLEAnimationPackage getAnimateIn() {
        XLEAnimation screenBodyAnimation = getBodyAnimation(MAAS.MAASAnimationType.ANIMATE_IN, false);
        if (screenBodyAnimation == null) {
            return null;
        }
        XLEAnimationPackage animationPackage = new XLEAnimationPackage();
        animationPackage.add(screenBodyAnimation);
        return animationPackage;
    }

    public void OnAnimationInEnd() {
        NavigationManager.getInstance().setAnimationBlocking(false);
    }

    public void OnAnimationOutEnd() {
        NavigationManager.getInstance().setAnimationBlocking(false);
        super.dismiss();
        if (this.onAnimateOutCompletedRunable != null) {
            try {
                this.onAnimateOutCompletedRunable.run();
            } catch (Exception e) {
            }
        }
    }

    public void setAnimateOutRunnable(Runnable postAnimateOutRunnable) {
        this.onAnimateOutCompletedRunable = postAnimateOutRunnable;
    }

    public View getDialogBody() {
        return this.dialogBody;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        XLEAnimationPackage anim = getAnimateIn();
        if (getDialogBody() != null && anim != null) {
            NavigationManager.getInstance().setAnimationBlocking(true);
            anim.setOnAnimationEndRunnable(this.callAfterAnimationIn);
            anim.startAnimation();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (!isShowing()) {
            super.dismiss();
            return;
        }
        XLEAnimationPackage anim = getAnimateOut();
        if (getDialogBody() != null && anim != null) {
            NavigationManager.getInstance().setAnimationBlocking(true);
            anim.setOnAnimationEndRunnable(this.callAfterAnimationOut);
            anim.startAnimation();
        } else {
            if (this.onAnimateOutCompletedRunable != null) {
                this.onAnimateOutCompletedRunable.run();
            }
            super.dismiss();
        }
    }

    protected XLEAnimation getBodyAnimation(MAAS.MAASAnimationType animationType, boolean goingBack) {
        if (getDialogBody() == null) {
            return null;
        }
        XLEAnimation screenBodyAnimation = ((XLEMAASAnimationPackageNavigationManager) MAAS.getInstance().getAnimation(this.bodyAnimationName)).compile(animationType, goingBack, getDialogBody());
        return screenBodyAnimation;
    }

    protected void forceKindleRespectDimOptions() {
        Handler h = new Handler();
        h.postDelayed(new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEManagedDialog.3
            @Override // java.lang.Runnable
            public void run() {
                XLEManagedDialog.this.getWindow().addFlags(2);
            }
        }, 100L);
    }

    protected static boolean isKindle() {
        return SystemUtil.isKindle();
    }
}
