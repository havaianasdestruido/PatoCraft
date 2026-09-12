package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.anim.XLEAnimationPackage;
import com.microsoft.xbox.toolkit.system.SystemUtil;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ScreenLayout extends FrameLayout {
    private static ArrayList<View> badList = new ArrayList<>();
    private boolean allEventsEnabled;
    private boolean drawerEnabled;
    private boolean isActive;
    private boolean isEditable;
    private boolean isReady;
    private boolean isStarted;
    protected boolean isTombstoned;
    private Runnable onLayoutChangedListener;
    private int orientation;
    private int screenPercent;

    public abstract void forceRefresh();

    public abstract void forceUpdateViewImmediately();

    public abstract String getName();

    public abstract void onAnimateInCompleted();

    public abstract void onAnimateInStarted();

    public abstract boolean onBackButtonPressed();

    public abstract void onRehydrateOverride();

    public ScreenLayout() {
        this(XboxTcuiSdk.getApplicationContext());
    }

    public ScreenLayout(Context context) {
        this(context, 0);
    }

    public ScreenLayout(Context context, int orientation) {
        super(context);
        this.onLayoutChangedListener = null;
        this.isEditable = false;
        this.screenPercent = 100;
        this.drawerEnabled = true;
        this.allEventsEnabled = true;
        Initialize(orientation);
    }

    protected void Initialize(int orientation) {
        this.isReady = false;
        this.isActive = false;
        this.isStarted = false;
        this.orientation = orientation;
    }

    public ScreenLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.onLayoutChangedListener = null;
        this.isEditable = false;
        this.screenPercent = 100;
        this.drawerEnabled = true;
        this.allEventsEnabled = true;
        TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("ScreenLayout"));
        if (a.hasValue(XLERValueHelper.getStyleableRValue("ScreenLayout_screenDIPs"))) {
            int screenPixelWidth = a.getDimensionPixelSize(XLERValueHelper.getStyleableRValue("ScreenLayout_screenDIPs"), SystemUtil.getScreenWidth());
            this.screenPercent = (int) ((screenPixelWidth / SystemUtil.getScreenWidth()) * 100.0f);
        } else {
            this.screenPercent = a.getInt(XLERValueHelper.getStyleableRValue("ScreenLayout_screenPercent"), -2);
        }
        a.recycle();
        Initialize(7);
    }

    public void setContentView(int screenLayoutId) {
        LayoutInflater.from(getContext()).inflate(screenLayoutId, (ViewGroup) this, true);
    }

    public void onRestart() {
    }

    public void onCreate() {
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public Boolean getTrackPage() {
        return true;
    }

    public void onStart() {
        this.isStarted = true;
    }

    public void onResume() {
        this.isReady = true;
    }

    public void onApplicationResume() {
    }

    public void onApplicationPause() {
    }

    public void onPause() {
        this.isReady = false;
    }

    public void onStop() {
        this.isStarted = false;
    }

    public void setScreenState(int state) {
    }

    public void onDestroy() {
        removeAllViewsAndWorkaroundAndroidLeaks();
    }

    public void onTombstone() {
        this.isTombstoned = true;
        removeAllViewsAndWorkaroundAndroidLeaks();
    }

    public void onRehydrate() {
        this.isTombstoned = false;
        onRehydrateOverride();
    }

    public String getLocalClassName() {
        return getClass().getName();
    }

    public void onSaveInstanceState(Bundle outState) {
    }

    public void onRestoreInstanceState(Bundle savedInstanceState) {
    }

    public boolean getIsTombstoned() {
        return this.isTombstoned;
    }

    public boolean getIsReady() {
        return this.isReady;
    }

    public XLEAnimationPackage getAnimateOut(boolean goingBack) {
        return null;
    }

    public XLEAnimationPackage getAnimateIn(boolean goingBack) {
        return null;
    }

    public boolean getIsActive() {
        return this.isActive;
    }

    public boolean getIsStarted() {
        return this.isStarted;
    }

    public void onSetActive() {
        this.isActive = true;
    }

    public void onSetInactive() {
        this.isActive = false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.onLayoutChangedListener != null) {
            this.onLayoutChangedListener.run();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent event) {
        if (this.allEventsEnabled) {
            return super.onInterceptHoverEvent(event);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        if (this.allEventsEnabled) {
            return super.onInterceptTouchEvent(event);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (this.allEventsEnabled) {
            return super.onTouchEvent(event);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent event) {
        if (this.allEventsEnabled) {
            return super.onHoverEvent(event);
        }
        return true;
    }

    public void setOnLayoutChangedListener(Runnable r) {
        this.onLayoutChangedListener = r;
    }

    public boolean onContextItemSelected(MenuItem item) {
        return false;
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
    }

    public void adjustBottomMargin(int bottomMargin) {
    }

    public void resetBottomMargin() {
    }

    public void removeBottomMargin() {
    }

    public boolean getIsEditable() {
        return this.isEditable;
    }

    public boolean getCanAutoLaunch() {
        return !this.isEditable;
    }

    public boolean getShouldShowAppbar() {
        return !this.isEditable;
    }

    public void setIsEditable(boolean isEditable) {
        this.isEditable = isEditable;
    }

    public static void addViewThatCausesAndroidLeaks(View v) {
        badList.add(v);
    }

    private void removeAllViewsAndWorkaroundAndroidLeaks() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        removeAllViews();
        for (View v : badList) {
            removeViewAndWorkaroundAndroidLeaks(v);
        }
        badList.clear();
    }

    public static void removeViewAndWorkaroundAndroidLeaks(View v) {
        if (v != null) {
            ViewParent viewparent = v.getParent();
            if (viewparent instanceof ViewGroup) {
                ViewGroup parent = (ViewGroup) viewparent;
                parent.removeAllViews();
                XLEAssert.assertTrue(v.getParent() == null);
            }
            if (v instanceof ViewGroup) {
                ViewGroup view = (ViewGroup) v;
                view.removeAllViews();
                view.destroyDrawingCache();
                XLEAssert.assertTrue(view.getChildCount() == 0);
            }
        }
    }

    public int getScreenPercent() {
        return this.screenPercent;
    }

    public ScreenLayout setScreenPercent(int val) {
        this.screenPercent = val;
        return this;
    }

    public void setDrawerEnabled(boolean drawerEnabled) {
        this.drawerEnabled = drawerEnabled;
    }

    public String getContent() {
        return null;
    }

    public String getRelativeId() {
        return null;
    }

    public boolean isDrawerEnabled() {
        return this.drawerEnabled;
    }

    public void leaveScreen(Runnable leaveHandler) {
        leaveHandler.run();
    }

    public boolean isAnimateOnPush() {
        return true;
    }

    public boolean isAnimateOnPop() {
        return true;
    }

    public boolean isKeepPreviousScreen() {
        return false;
    }

    public void setAllEventsEnabled(boolean enabled) {
        this.allEventsEnabled = enabled;
    }

    public boolean isAllEventsEnabled() {
        return this.allEventsEnabled;
    }

    public View xleFindViewId(int id) {
        return findViewById(id);
    }
}
