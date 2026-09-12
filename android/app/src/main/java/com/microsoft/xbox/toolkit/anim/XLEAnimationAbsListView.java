package com.microsoft.xbox.toolkit.anim;

import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LayoutAnimationController;
import android.widget.AbsListView;
import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEAnimationAbsListView extends XLEAnimation {
    private LayoutAnimationController layoutAnimationController;
    private AbsListView layoutView = null;

    public XLEAnimationAbsListView(LayoutAnimationController controller) {
        this.layoutAnimationController = null;
        this.layoutAnimationController = controller;
        XLEAssert.assertTrue(this.layoutAnimationController != null);
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void start() {
        this.layoutView.setLayoutAnimation(this.layoutAnimationController);
        if (this.endRunnable != null) {
            this.endRunnable.run();
        }
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void clear() {
        this.layoutView.setLayoutAnimationListener(null);
        this.layoutView.clearAnimation();
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void setInterpolator(Interpolator interpolator) {
        this.layoutAnimationController.setInterpolator(interpolator);
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void setTargetView(View targetView) {
        XLEAssert.assertNotNull(targetView);
        XLEAssert.assertTrue(targetView instanceof AbsListView);
        this.layoutView = (AbsListView) targetView;
    }
}
