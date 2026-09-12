package com.microsoft.xbox.toolkit.anim;

import com.microsoft.cll.android.EventEnums;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BackEaseInterpolator extends XLEInterpolator {
    private float amplitude;

    public BackEaseInterpolator(float amplitude, EasingMode easingMode) {
        super(easingMode);
        this.amplitude = amplitude;
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEInterpolator
    protected float getInterpolationCore(float normalizedTime) {
        float normalizedTime2 = (float) Math.max(normalizedTime, EventEnums.SampleRate_0_percent);
        return (float) (((double) ((normalizedTime2 * normalizedTime2) * normalizedTime2)) - (((double) (this.amplitude * normalizedTime2)) * Math.sin(((double) normalizedTime2) * 3.141592653589793d)));
    }
}
