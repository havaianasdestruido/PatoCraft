package com.microsoft.onlineid.internal.ui;

import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProgressView extends RelativeLayout {
    public static final int NumberOfDots = 5;
    private static final int ProgressColor = Color.rgb(121, 121, 121);
    private static final float ProgressDotSizeDip = 2.6f;
    private static final float ProgressPaddingDip = 2.6f;
    private int _dotSize;
    private ProgressAnimation _progressAnimation;

    public ProgressView(Context context, AttributeSet attributes, int defStyle) {
        super(context, attributes, defStyle);
        initialize();
    }

    public ProgressView(Context context, AttributeSet attributes) {
        super(context, attributes);
        initialize();
    }

    public ProgressView(Context context) {
        super(context);
        initialize();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        boolean isAnimationStopped = stopAnimation();
        this._progressAnimation = new ProgressAnimation(w);
        if (isAnimationStopped) {
            startAnimation();
        }
    }

    public boolean startAnimation() {
        return this._progressAnimation != null && this._progressAnimation.startAnimation();
    }

    public boolean stopAnimation() {
        return this._progressAnimation != null && this._progressAnimation.stopAnimation();
    }

    public boolean isAnimating() {
        return this._progressAnimation != null && this._progressAnimation.isAnimating();
    }

    public void overrideDefaultPadding(float paddingDip) {
        DisplayMetrics metrics = getContext().getResources().getDisplayMetrics();
        int paddingPixels = Dimensions.convertDipToPixels(2.6f, metrics);
        setPadding(0, paddingPixels, 0, paddingPixels);
    }

    private void initialize() {
        DisplayMetrics metrics = getContext().getResources().getDisplayMetrics();
        this._dotSize = Dimensions.convertDipToPixels(2.6f, metrics);
        int paddingPixels = Dimensions.convertDipToPixels(2.6f, metrics);
        setPadding(0, paddingPixels, 0, paddingPixels);
        for (int i = 0; i < 5; i++) {
            addDot();
        }
        this._progressAnimation = new ProgressAnimation(getWidth());
    }

    private View addDot() {
        View dot = new View(getContext());
        dot.setLayoutParams(new RelativeLayout.LayoutParams(this._dotSize, this._dotSize));
        dot.setBackgroundColor(ProgressColor);
        dot.setX(this._dotSize * (-1));
        addView(dot);
        return dot;
    }

    private class ProgressAnimation {
        private int _animationDuration;
        private int[] _dotDelays;
        private int[] _keyframeXTranslations;
        private AnimatorSet _progressAnimator;

        public ProgressAnimation(int width) {
            setAnimationParams(width);
            this._progressAnimator = generateAnimation();
        }

        private AnimatorSet generateAnimation() {
            PropertyValuesHolder keyframes = createKeyframes();
            ObjectAnimator[] xAnimators = new ObjectAnimator[5];
            for (int i = 0; i < 5; i++) {
                ObjectAnimator xAnimator = ObjectAnimator.ofPropertyValuesHolder(ProgressView.this.getChildAt(i), keyframes);
                xAnimator.setDuration(this._animationDuration);
                xAnimator.setRepeatCount(-1);
                xAnimator.setStartDelay(this._dotDelays[i]);
                xAnimators[i] = xAnimator;
            }
            AnimatorSet set = new AnimatorSet();
            set.playTogether(xAnimators);
            return set;
        }

        private void setAnimationParams(int width) {
            int dotGap = Math.round(width / 25.0f);
            float linearVelocity = (width / 10.0f) + 30.0f;
            int distanceInOut = Math.round(width * 0.416666f);
            int distanceLinear = Math.round(width * (1.0f - (2.0f * 0.416666f)));
            float timeLinear = (distanceLinear * 1000) / linearVelocity;
            float timeInOut = ((timeLinear / 0.3333f) - timeLinear) / 2.0f;
            int dotDelay = Math.round((dotGap * 1000) / linearVelocity);
            if (dotDelay > 333) {
                dotDelay = 333;
            }
            this._dotDelays = new int[]{0, dotDelay, dotDelay * 2, dotDelay * 3, dotDelay * 4};
            float totalDotDelay = dotDelay * 4.0f;
            float timeOneDotVisible = timeLinear + (2.0f * timeInOut);
            this._animationDuration = Math.round(timeOneDotVisible + totalDotDelay + 250.0f);
            this._keyframeXTranslations = new int[]{ProgressView.this._dotSize * (-1), distanceInOut, distanceInOut + distanceLinear, ProgressView.this._dotSize + width, ProgressView.this._dotSize * (-1)};
        }

        private PropertyValuesHolder createKeyframes() {
            float[] keyframeFractions = {0.0f, 0.15f, 0.65f, 0.8f, 1.0f};
            Keyframe[] keyframes = new Keyframe[this._keyframeXTranslations.length];
            for (int i = 0; i < this._keyframeXTranslations.length; i++) {
                keyframes[i] = Keyframe.ofFloat(keyframeFractions[i], this._keyframeXTranslations[i]);
            }
            keyframes[this._keyframeXTranslations.length - 1].setInterpolator(new OvershootInterpolator(1.0f));
            return PropertyValuesHolder.ofKeyframe(View.TRANSLATION_X, keyframes);
        }

        public boolean startAnimation() {
            if (this._progressAnimator.isRunning()) {
                return false;
            }
            this._progressAnimator.start();
            return true;
        }

        public boolean stopAnimation() {
            if (!this._progressAnimator.isRunning()) {
                return false;
            }
            this._progressAnimator.end();
            return true;
        }

        public boolean isAnimating() {
            return this._progressAnimator.isRunning();
        }
    }
}
