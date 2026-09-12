package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SwitchPanelItem extends FrameLayout implements SwitchPanel.SwitchPanelChild {
    private final int INVALID_STATE_ID;
    private int state;

    public SwitchPanelItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.INVALID_STATE_ID = -1;
        TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("SwitchPanelItem"));
        this.state = a.getInteger(XLERValueHelper.getStyleableRValue("SwitchPanelItem_state"), -1);
        a.recycle();
        if (this.state < 0) {
            throw new IllegalArgumentException("You must specify the state attribute in the xml, and the value must be positive.");
        }
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    @Override // com.microsoft.xbox.toolkit.ui.SwitchPanel.SwitchPanelChild
    public int getState() {
        return this.state;
    }
}
