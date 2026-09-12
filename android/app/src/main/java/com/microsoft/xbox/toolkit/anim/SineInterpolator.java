package com.microsoft.xbox.toolkit.anim;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SineInterpolator extends XLEInterpolator {
    public SineInterpolator(EasingMode easingMode) {
        super(easingMode);
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEInterpolator
    protected float getInterpolationCore(float normalizedTime) {
        return (float) (1.0d - Math.sin((1.0d - ((double) normalizedTime)) * 1.5707963267948966d));
    }
}
