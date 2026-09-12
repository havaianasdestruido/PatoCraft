package com.microsoft.xbox.toolkit.anim;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEInterpolator implements Interpolator {
    private EasingMode easingMode;

    public XLEInterpolator(EasingMode easingMode) {
        this.easingMode = easingMode;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float normalizedTime) {
        if (normalizedTime < 0.0f || normalizedTime > 1.0f) {
            throw new IllegalArgumentException("should respect 0<=normalizedTime<=1");
        }
        switch (this.easingMode) {
            case EaseIn:
                return getInterpolationCore(normalizedTime);
            case EaseOut:
                return 1.0f - getInterpolationCore(1.0f - normalizedTime);
            case EaseInOut:
                if (normalizedTime < 0.5d) {
                    return getInterpolationCore(normalizedTime * 2.0f) / 2.0f;
                }
                return ((1.0f - getInterpolationCore(2.0f - (normalizedTime * 2.0f))) / 2.0f) + 0.5f;
            default:
                return normalizedTime;
        }
    }

    protected float getInterpolationCore(float normalizedTime) {
        return normalizedTime;
    }
}
