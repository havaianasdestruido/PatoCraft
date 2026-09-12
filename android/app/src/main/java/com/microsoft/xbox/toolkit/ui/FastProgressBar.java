package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FastProgressBar extends ProgressBar {
    private boolean isEnabled;
    private int visibility;

    public FastProgressBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        setEnabled(true);
        setVisibility(0);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        postInvalidateDelayed(33L);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        if (this.isEnabled != enabled) {
            this.isEnabled = enabled;
            if (!this.isEnabled) {
                this.visibility = getVisibility();
                super.setVisibility(8);
            } else {
                super.setVisibility(this.visibility);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int v) {
        if (this.isEnabled) {
            super.setVisibility(v);
        } else {
            this.visibility = v;
        }
    }
}
