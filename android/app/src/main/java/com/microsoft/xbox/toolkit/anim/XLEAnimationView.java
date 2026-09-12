package com.microsoft.xbox.toolkit.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEAnimationView extends XLEAnimation {
    private Animation anim;
    private View animtarget;

    public XLEAnimationView(Animation anim) {
        this.anim = anim;
        this.anim.setFillAfter(true);
        this.anim.setAnimationListener(new Animation.AnimationListener() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                XLEAnimationView.this.onViewAnimationStart();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                XLEAnimationView.this.onViewAnimationEnd();
                if (XLEAnimationView.this.endRunnable != null) {
                    XLEAnimationView.this.endRunnable.run();
                }
            }
        });
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void start() {
        this.animtarget.startAnimation(this.anim);
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void clear() {
        this.anim.setAnimationListener(null);
        this.animtarget.clearAnimation();
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void setTargetView(View targetView) {
        XLEAssert.assertNotNull(targetView);
        this.animtarget = targetView;
        if (this.anim instanceof AnimationSet) {
            for (Animation animation : ((AnimationSet) this.anim).getAnimations()) {
                if (animation instanceof HeightAnimation) {
                    ((HeightAnimation) animation).setTargetView(targetView);
                }
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEAnimation
    public void setInterpolator(Interpolator interpolator) {
        this.anim.setInterpolator(interpolator);
    }

    public void setFillAfter(boolean fillAfter) {
        this.anim.setFillAfter(fillAfter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onViewAnimationStart() {
        this.animtarget.setLayerType(2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onViewAnimationEnd() {
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationView.2
            @Override // java.lang.Runnable
            public void run() {
                XLEAnimationView.this.animtarget.setLayerType(0, null);
            }
        });
    }
}
