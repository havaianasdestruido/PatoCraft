package com.microsoft.xbox.xle.app.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.microsoft.xbox.toolkit.BackgroundThreadWaitor;
import com.microsoft.xbox.toolkit.anim.MAAS;
import com.microsoft.xbox.toolkit.anim.MAASAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimationPackage;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.anim.XLEMAASAnimationPackageNavigationManager;
import com.microsoft.xbox.xle.ui.XLERootView;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ActivityBase extends ScreenLayout {
    private boolean showRightPane;
    private boolean showUtilityBar;
    protected ViewModelBase viewModel;

    protected abstract String getActivityName();

    public abstract void onCreateContentView();

    public ActivityBase() {
        this(0);
    }

    public ActivityBase(int orientation) {
        super(XboxTcuiSdk.getApplicationContext(), orientation);
        this.showUtilityBar = true;
        this.showRightPane = true;
    }

    public ActivityBase(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.showUtilityBar = true;
        this.showRightPane = true;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (this.viewModel != null) {
            this.viewModel.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStop() {
        if (getIsStarted()) {
            super.onStop();
            if (this.viewModel != null) {
                this.viewModel.onSetInactive();
            }
            if (this.viewModel != null) {
                this.viewModel.onStop();
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void forceRefresh() {
        if (this.viewModel != null) {
            this.viewModel.forceRefresh();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        if (!getIsStarted()) {
            super.onStart();
            if (this.viewModel != null) {
                this.viewModel.onStart();
            }
            if (this.viewModel != null) {
                this.viewModel.load();
            }
        }
        if (!delayAppbarAnimation()) {
            adjustBottomMargin(computeBottomMargin());
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onAnimateInStarted() {
        if (this.viewModel != null) {
            this.viewModel.forceUpdateViewImmediately();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onAnimateInCompleted() {
        if (this.viewModel != null) {
            final WeakReference<ViewModelBase> viewModelWeakPtr = new WeakReference<>(this.viewModel);
            BackgroundThreadWaitor.getInstance().postRunnableAfterReady(new Runnable() { // from class: com.microsoft.xbox.xle.app.activity.ActivityBase.1
                @Override // java.lang.Runnable
                public void run() {
                    ViewModelBase viewModelPtr = (ViewModelBase) viewModelWeakPtr.get();
                    if (viewModelPtr != null) {
                        viewModelPtr.forceUpdateViewImmediately();
                    }
                }
            });
        }
        if (this.viewModel != null) {
            this.viewModel.onAnimateInCompleted();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void forceUpdateViewImmediately() {
        if (this.viewModel != null) {
            this.viewModel.forceUpdateViewImmediately();
        }
    }

    protected int computeBottomMargin() {
        return 0;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public XLEAnimationPackage getAnimateOut(boolean goingBack) {
        MAASAnimation animation;
        XLEAnimation screenBodyAnimation;
        View root = getChildAt(0);
        if (root == null || (animation = MAAS.getInstance().getAnimation("Screen")) == null || (screenBodyAnimation = ((XLEMAASAnimationPackageNavigationManager) animation).compile(MAAS.MAASAnimationType.ANIMATE_OUT, goingBack, root)) == null) {
            return null;
        }
        XLEAnimationPackage animationPackage = new XLEAnimationPackage();
        animationPackage.add(screenBodyAnimation);
        return animationPackage;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public XLEAnimationPackage getAnimateIn(boolean goingBack) {
        MAASAnimation animation;
        XLEAnimation screenBodyAnimation;
        View root = getChildAt(0);
        if (root == null || (animation = MAAS.getInstance().getAnimation("Screen")) == null || (screenBodyAnimation = ((XLEMAASAnimationPackageNavigationManager) animation).compile(MAAS.MAASAnimationType.ANIMATE_IN, goingBack, root)) == null) {
            return null;
        }
        XLEAnimationPackage animationPackage = new XLEAnimationPackage();
        animationPackage.add(screenBodyAnimation);
        return animationPackage;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        if (this.viewModel != null) {
            this.viewModel.onRestoreInstanceState(savedInstanceState);
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public boolean onBackButtonPressed() {
        if (this.viewModel != null) {
            return this.viewModel.onBackButtonPressed();
        }
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onSetActive() {
        super.onSetActive();
        if (this.viewModel != null) {
            this.viewModel.onSetActive();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public boolean getShouldShowAppbar() {
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        if (event.getEventType() != 8 || getXLERootView() == null || getXLERootView().getContentDescription() == null) {
            return super.dispatchPopulateAccessibilityEvent(event);
        }
        event.getText().clear();
        event.getText().add(getXLERootView().getContentDescription());
        return true;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onSetInactive() {
        super.onSetInactive();
        if (this.viewModel != null) {
            this.viewModel.onSetInactive();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onPause() {
        super.onPause();
        if (this.viewModel != null) {
            this.viewModel.onPause();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onApplicationPause() {
        super.onApplicationPause();
        if (this.viewModel != null) {
            this.viewModel.onApplicationPause();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onApplicationResume() {
        super.onApplicationResume();
        if (this.viewModel != null) {
            this.viewModel.onApplicationResume();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onResume() {
        super.onResume();
        if (this.viewModel != null) {
            this.viewModel.onResume();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onDestroy() {
        if (this.viewModel != null) {
            this.viewModel.onDestroy();
        }
        this.viewModel = null;
        super.onDestroy();
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onTombstone() {
        if (this.viewModel != null) {
            this.viewModel.onTombstone();
        }
        super.onTombstone();
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onRehydrate() {
        super.onRehydrate();
        if (this.viewModel != null) {
            this.viewModel.onRehydrate();
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onRehydrateOverride() {
        onCreateContentView();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.viewModel != null) {
            this.viewModel.onConfigurationChanged(newConfig);
        }
    }

    private XLERootView getXLERootView() {
        if (getChildAt(0) instanceof XLERootView) {
            return (XLERootView) getChildAt(0);
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void adjustBottomMargin(int bottomMargin) {
        if (getXLERootView() != null) {
            getXLERootView().setBottomMargin(bottomMargin);
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void removeBottomMargin() {
        if (getXLERootView() != null) {
            getXLERootView().setBottomMargin(0);
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void resetBottomMargin() {
        if (getXLERootView() != null) {
            adjustBottomMargin(computeBottomMargin());
        }
    }

    protected boolean delayAppbarAnimation() {
        return false;
    }

    public void setHeaderName(String headerName) {
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public String getName() {
        return getActivityName();
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public String getRelativeId() {
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void setScreenState(int state) {
        if (this.viewModel != null) {
            this.viewModel.setScreenState(state);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearDisappearingChildren();
    }
}
