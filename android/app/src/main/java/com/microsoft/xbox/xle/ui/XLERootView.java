package com.microsoft.xbox.xle.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.microsoft.xbox.toolkit.system.SystemUtil;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLERootView extends RelativeLayout {
    private static final int UNASSIGNED_ACTIVITY_BODY_ID = -1;
    private View activityBody;
    private int activityBodyIndex;
    private String headerName;
    private boolean isTopLevel;
    private long lastFps;
    private long lastMs;
    private int origPaddingBottom;
    private boolean showTitleBar;

    public XLERootView(Context context) {
        super(context);
        this.isTopLevel = false;
        this.showTitleBar = true;
        this.lastMs = 0L;
        this.lastFps = 0L;
        throw new UnsupportedOperationException();
    }

    public XLERootView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.isTopLevel = false;
        this.showTitleBar = true;
        this.lastMs = 0L;
        this.lastFps = 0L;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.XLERootView);
        if (a != null) {
            try {
                this.activityBodyIndex = a.getResourceId(R.styleable.XLERootView_activityBody, -1);
                this.isTopLevel = a.getBoolean(R.styleable.XLERootView_isTopLevel, false);
                this.showTitleBar = a.getBoolean(R.styleable.XLERootView_showTitleBar, true);
                int minScreenPercent = a.getInt(R.styleable.XLERootView_minScreenPercent, ExploreByTouchHelper.INVALID_ID);
                if (minScreenPercent != Integer.MIN_VALUE) {
                    setMinimumWidth((Math.max(0, minScreenPercent) * SystemUtil.getScreenWidth()) / 100);
                }
                this.headerName = a.getString(R.styleable.XLERootView_headerName);
            } finally {
                a.recycle();
            }
        }
    }

    public boolean getIsTopLevel() {
        return this.isTopLevel;
    }

    public boolean getShowTitleBar() {
        return this.showTitleBar;
    }

    public String getHeaderName() {
        return this.headerName;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initialize();
    }

    private void initialize() {
        if (this.activityBodyIndex != -1) {
            this.activityBody = findViewById(this.activityBodyIndex);
        } else {
            this.activityBody = this;
        }
        this.origPaddingBottom = getPaddingBottom();
        if (this.activityBody != null && this.activityBody != this) {
            ViewGroup.LayoutParams lpActivityBody = this.activityBody.getLayoutParams();
            RelativeLayout.LayoutParams activityParams = new RelativeLayout.LayoutParams(lpActivityBody);
            activityParams.width = -1;
            activityParams.height = -1;
            activityParams.addRule(10);
            if (lpActivityBody instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) lpActivityBody;
                setPadding(getPaddingLeft() + mlp.leftMargin, getPaddingTop() + mlp.topMargin, getPaddingRight() + mlp.rightMargin, this.origPaddingBottom + mlp.bottomMargin);
                activityParams.setMargins(0, 0, 0, 0);
            }
            removeView(this.activityBody);
            addView(this.activityBody, activityParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public void setBottomMargin(int marginBottom) {
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), this.origPaddingBottom + marginBottom);
    }
}
