package com.microsoft.xbox.toolkit.anim;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ExponentialInterpolator extends XLEInterpolator {
    private float exponent;

    public ExponentialInterpolator(float exponent, EasingMode easingMode) {
        super(easingMode);
        this.exponent = exponent;
    }

    @Override // com.microsoft.xbox.toolkit.anim.XLEInterpolator
    protected float getInterpolationCore(float normalizedTime) {
        return (float) ((Math.pow(2.718281828459045d, this.exponent * normalizedTime) - 1.0d) / (Math.pow(2.718281828459045d, this.exponent) - 1.0d));
    }
}
