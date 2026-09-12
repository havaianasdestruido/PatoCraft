package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEClickableLayout extends RelativeLayout {
    public XLEClickableLayout(Context context) {
        super(context);
        setSoundEffectsEnabled(false);
    }

    public XLEClickableLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        setSoundEffectsEnabled(false);
    }

    public XLEClickableLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setSoundEffectsEnabled(false);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener listener) {
        super.setOnClickListener(TouchUtil.createOnClickListener(listener));
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClickable(true);
        info.setClassName(Button.class.getName());
    }
}
