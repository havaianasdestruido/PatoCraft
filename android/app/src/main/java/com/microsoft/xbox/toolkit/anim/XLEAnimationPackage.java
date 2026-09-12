package com.microsoft.xbox.toolkit.anim;

import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import java.util.LinkedList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEAnimationPackage {
    private Runnable onAnimationEndRunnable;
    private boolean running = false;
    private LinkedList<XLEAnimationEntry> animations = new LinkedList<>();

    private class XLEAnimationEntry {
        public XLEAnimation animation;
        public int iterationID = 0;
        public boolean done = false;

        public XLEAnimationEntry(XLEAnimation animation) {
            this.animation = animation;
            animation.setOnAnimationEnd(new Runnable() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationPackage.XLEAnimationEntry.1
                @Override // java.lang.Runnable
                public void run() {
                    XLEAnimationEntry.this.onAnimationEnded();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAnimationEnded() {
            XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
            XLEAssert.assertTrue(XLEAnimationPackage.this.onAnimationEndRunnable != null);
            final int finishIterationID = this.iterationID;
            ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.anim.XLEAnimationPackage.XLEAnimationEntry.2
                @Override // java.lang.Runnable
                public void run() {
                    if (finishIterationID == XLEAnimationEntry.this.iterationID) {
                        XLEAnimationEntry.this.finish();
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finish() {
            this.done = true;
            XLEAnimationPackage.this.tryFinishAll();
        }

        public void startAnimation() {
            this.animation.start();
        }

        public void clearAnimation() {
            this.iterationID++;
            this.animation.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryFinishAll() {
        if (getRemainingAnimations() == 0) {
            XLEAssert.assertTrue(this.running);
            this.running = false;
            this.onAnimationEndRunnable.run();
        }
    }

    private int getRemainingAnimations() {
        int rv = 0;
        for (XLEAnimationEntry tuple : this.animations) {
            if (!tuple.done) {
                rv++;
            }
        }
        return rv;
    }

    public void setOnAnimationEndRunnable(Runnable runnable) {
        this.onAnimationEndRunnable = runnable;
    }

    public void startAnimation() {
        XLEAssert.assertTrue(!this.running);
        this.running = true;
        for (XLEAnimationEntry tuple : this.animations) {
            tuple.startAnimation();
        }
    }

    public void clearAnimation() {
        for (XLEAnimationEntry tuple : this.animations) {
            tuple.clearAnimation();
        }
    }

    public void add(XLEAnimation animation) {
        this.animations.add(new XLEAnimationEntry(animation));
    }

    public XLEAnimationPackage add(XLEAnimationPackage animationPackage) {
        if (animationPackage != null) {
            for (XLEAnimationEntry entry : animationPackage.animations) {
                add(entry.animation);
            }
        }
        return this;
    }
}
