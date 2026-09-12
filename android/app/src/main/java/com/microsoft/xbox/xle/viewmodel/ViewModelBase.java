package com.microsoft.xbox.xle.viewmodel;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.microsoft.xbox.service.model.UpdateData;
import com.microsoft.xbox.service.model.UpdateType;
import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEErrorCode;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.XLEObserver;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimationPackage;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.XLEUtil;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ViewModelBase implements XLEObserver<UpdateData> {
    protected static int LAUNCH_TIME_OUT = 5000;
    public static final String TAG_PAGE_LOADING_TIME = "performance_measure_page_loadingtime";
    protected int LifetimeInMinutes;
    protected AdapterBase adapter;
    protected boolean isActive;
    protected boolean isForeground;
    protected boolean isLaunching;
    protected Runnable launchTimeoutHandler;
    protected int listIndex;
    private NavigationData nextScreenData;
    protected int offset;
    private boolean onlyProcessExceptionsAndShowToastsWhenActive;
    private ViewModelBase parent;
    private final ScreenLayout screen;
    private boolean shouldHideScreen;
    private boolean showNoNetworkPopup;
    private HashMap<UpdateType, XLEException> updateExceptions;
    private EnumSet<UpdateType> updateTypesToCheck;
    private boolean updating;

    private enum NavigationType {
        Push,
        PopReplace,
        PopAll
    }

    public abstract boolean isBusy();

    public abstract void load(boolean z);

    public abstract void onRehydrate();

    protected abstract void onStartOverride();

    protected abstract void onStopOverride();

    public View findViewById(int id) {
        if (this.screen != null) {
            return this.screen.xleFindViewId(id);
        }
        return null;
    }

    private class NavigationData {
        private NavigationType navigationType;
        private Class<? extends ScreenLayout> screenClass;

        protected NavigationData(Class<? extends ScreenLayout> screen, NavigationType type) {
            this.screenClass = screen;
            this.navigationType = type;
        }

        protected Class<? extends ScreenLayout> getScreenClass() {
            return this.screenClass;
        }

        protected NavigationType getNavigationType() {
            return this.navigationType;
        }
    }

    public ViewModelBase(ScreenLayout screen) {
        this(screen, true, false);
    }

    public ViewModelBase() {
        this(null, true, false);
    }

    public ViewModelBase(boolean showNoNetworkPopup, boolean onlyProcessExceptionsAndShowToastsWhenActive) {
        this(null, showNoNetworkPopup, onlyProcessExceptionsAndShowToastsWhenActive);
    }

    public ViewModelBase(ScreenLayout screen, boolean showNoNetworkPopup, boolean onlyProcessExceptionsAndShowToastsWhenActive) {
        this.LifetimeInMinutes = 60;
        this.updateExceptions = new HashMap<>();
        this.showNoNetworkPopup = true;
        this.onlyProcessExceptionsAndShowToastsWhenActive = false;
        this.nextScreenData = null;
        this.updating = false;
        this.isLaunching = false;
        this.screen = screen;
        this.showNoNetworkPopup = showNoNetworkPopup;
        this.onlyProcessExceptionsAndShowToastsWhenActive = onlyProcessExceptionsAndShowToastsWhenActive;
    }

    public ScreenLayout getScreen() {
        return this.screen;
    }

    protected ViewModelBase getParent() {
        return this.parent;
    }

    protected void setParent(ViewModelBase parent) {
        this.parent = parent;
    }

    public AdapterBase getAdapter() {
        return this.adapter;
    }

    protected void onChildViewModelChanged(ViewModelBase child) {
    }

    protected void updateAdapter() {
        updateAdapter(true);
    }

    protected void updateAdapter(boolean notifyParent) {
        if (this.adapter != null) {
            this.adapter.updateView();
        }
        if (this.parent != null && notifyParent) {
            this.parent.onChildViewModelChanged(this);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public void onStart() {
        this.isForeground = true;
        onStartOverride();
        if (this.adapter != null) {
            this.adapter.onStart();
        }
    }

    public boolean getShouldHideScreen() {
        return this.shouldHideScreen;
    }

    public void setShouldHideScreen(boolean shouldHide) {
        this.shouldHideScreen = shouldHide;
    }

    public void setListPosition(int index, int offset) {
        this.listIndex = index;
        this.offset = offset;
    }

    public int getAndResetListPosition() {
        int value = this.listIndex;
        this.listIndex = 0;
        return value;
    }

    public int getAndResetListOffset() {
        int offset = this.offset;
        this.offset = 0;
        return offset;
    }

    public void onStop() {
        this.isForeground = false;
        if (this.adapter != null) {
            this.adapter.onStop();
        }
        DialogManager.getInstance().dismissBlocking();
        if (shouldDismissTopNoFatalAlert()) {
            DialogManager.getInstance().dismissTopNonFatalAlert();
        }
        DialogManager.getInstance().dismissToast();
        onStopOverride();
    }

    protected boolean shouldDismissTopNoFatalAlert() {
        return true;
    }

    public void onPause() {
        cancelLaunchTimeout();
        if (this.adapter != null) {
            this.adapter.onPause();
        }
    }

    public void onApplicationPause() {
        if (this.adapter != null) {
            this.adapter.onApplicationPause();
        }
    }

    public void onApplicationResume() {
        if (this.adapter != null) {
            this.adapter.onApplicationResume();
        }
    }

    public void onResume() {
        if (this.adapter != null) {
            this.adapter.onResume();
            this.adapter.updateView();
        }
    }

    public void onDestroy() {
        if (this.adapter != null) {
            this.adapter.onDestroy();
        }
        this.adapter = null;
    }

    public void onTombstone() {
        if (this.adapter != null) {
            this.adapter.onDestroy();
        }
        this.adapter = null;
    }

    public void forceUpdateViewImmediately() {
        if (this.adapter != null) {
            this.adapter.forceUpdateViewImmediately();
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
    }

    public void onSaveInstanceState(Bundle outState) {
    }

    public void onRestoreInstanceState(Bundle savedInstanceState) {
    }

    public boolean onBackButtonPressed() {
        return false;
    }

    public boolean isBlockingBusy() {
        return false;
    }

    public String getBlockingStatusText() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void load() {
        boolean forceRefresh = XLEGlobalData.getInstance().CheckDrainShouldRefresh(getClass());
        load(forceRefresh);
    }

    public void forceRefresh() {
        load(true);
        if (this.adapter != null) {
            this.adapter.updateView();
        }
    }

    @Override // com.microsoft.xbox.toolkit.XLEObserver
    public final void update(AsyncResult<UpdateData> asyncResult) {
        this.updating = true;
        XLEAssert.assertTrue(this.nextScreenData == null);
        this.nextScreenData = null;
        if (asyncResult.getException() != null) {
            long errorCode = asyncResult.getException().getErrorCode();
            if (!asyncResult.getException().getIsHandled() && errorCode == XLEErrorCode.INVALID_ACCESS_TOKEN) {
                asyncResult.getException().setIsHandled(true);
            }
        }
        if (this.nextScreenData == null && (this.adapter != null || updateWithoutAdapter())) {
            updateOverride(asyncResult);
        }
        this.updating = false;
        if (this.nextScreenData != null) {
            try {
                switch (this.nextScreenData.getNavigationType()) {
                    case Push:
                        NavigationManager.getInstance().NavigateTo(this.nextScreenData.getScreenClass(), true);
                        break;
                    case PopReplace:
                        NavigationManager.getInstance().NavigateTo(this.nextScreenData.getScreenClass(), false);
                        break;
                    case PopAll:
                        NavigationManager.getInstance().GotoScreenWithPop(this.nextScreenData.getScreenClass());
                        break;
                }
            } catch (XLEException e) {
            }
        } else if (shouldProcessErrors()) {
            if (asyncResult.getException() != null && !asyncResult.getException().getIsHandled() && this.updateTypesToCheck != null && this.updateTypesToCheck.contains(asyncResult.getResult().getUpdateType())) {
                this.updateExceptions.put(asyncResult.getResult().getUpdateType(), asyncResult.getException());
            }
            if (asyncResult.getResult().getIsFinal()) {
                if (this.updateTypesToCheck != null) {
                    this.updateTypesToCheck.remove(asyncResult.getResult().getUpdateType());
                }
                if (this.updateTypesToCheck == null || this.updateTypesToCheck.isEmpty()) {
                    onUpdateFinished();
                    this.updateTypesToCheck = null;
                }
            }
        }
        this.nextScreenData = null;
    }

    protected boolean updateWithoutAdapter() {
        return false;
    }

    protected void updateOverride(AsyncResult<UpdateData> asyncResult) {
    }

    protected void logOut(boolean clearEverything) {
    }

    protected void setUpdateTypesToCheck(EnumSet<UpdateType> checkList) {
        this.updateTypesToCheck = checkList;
        this.updateExceptions.clear();
    }

    protected boolean checkErrorCode(UpdateType updateType, long errorCode) {
        if (this.updateExceptions.containsKey(updateType) && this.updateExceptions.get(updateType).getErrorCode() == errorCode) {
            return !this.updateExceptions.get(updateType).getIsHandled();
        }
        return false;
    }

    protected boolean updateTypesToCheckIsEmpty() {
        return this.updateTypesToCheck == null || this.updateTypesToCheck.isEmpty();
    }

    protected boolean updateTypesToCheckHadAnyErrors() {
        return !this.updateExceptions.isEmpty();
    }

    protected void onUpdateFinished() {
        this.updateTypesToCheck = null;
        this.updateExceptions.clear();
    }

    public XLEAnimationPackage getAnimateOut(boolean goingBack) {
        ArrayList<XLEAnimation> animations = this.adapter.getAnimateOut(goingBack);
        if (animations != null && animations.size() > 0) {
            XLEAnimationPackage animationPackage = new XLEAnimationPackage();
            for (XLEAnimation animation : animations) {
                animationPackage.add(animation);
            }
            return animationPackage;
        }
        return null;
    }

    public XLEAnimationPackage getAnimateIn(boolean goingBack) {
        ArrayList<XLEAnimation> animations = this.adapter.getAnimateIn(goingBack);
        if (animations != null && animations.size() > 0) {
            XLEAnimationPackage animationPackage = new XLEAnimationPackage();
            for (XLEAnimation animation : animations) {
                animationPackage.add(animation);
            }
            return animationPackage;
        }
        return null;
    }

    public void TEST_induceGoBack() {
    }

    public void onAnimateInCompleted() {
        if (this.adapter != null) {
            this.adapter.onAnimateInCompleted();
        }
    }

    protected void NavigateTo(Class<? extends ScreenLayout> screenClass, ActivityParameters activityParameters) {
        NavigateTo(screenClass, true, activityParameters);
    }

    protected void NavigateTo(Class<? extends ScreenLayout> screenClass) {
        NavigateTo(screenClass, (ActivityParameters) null);
    }

    protected void NavigateTo(Class<? extends ScreenLayout> screenClass, boolean addToStack, ActivityParameters activityParameters) {
        cancelLaunchTimeout();
        XLEAssert.assertFalse("We shouldn't navigate to a new screen if the current screen is blocking", isBlockingBusy());
        if (this.updating) {
            this.nextScreenData = new NavigationData(screenClass, addToStack ? NavigationType.Push : NavigationType.PopReplace);
        } else {
            XLEAssert.assertFalse("We shouldn't navigate to a new screen if the current screen is blocking", isBlockingBusy());
            NavigationManager.getInstance().NavigateTo(screenClass, addToStack, activityParameters);
        }
    }

    protected void NavigateTo(Class<? extends ScreenLayout> screenClass, boolean addToStack) {
        NavigateTo(screenClass, addToStack, null);
    }

    protected void showMustActDialog(String title, String promptText, String okText, Runnable okHandler, boolean isFatal) {
    }

    protected void showOkCancelDialog(String promptText, String okText, Runnable okHandler, String cancelText, Runnable cancelHandler) {
        showOkCancelDialog(null, promptText, okText, okHandler, cancelText, cancelHandler);
    }

    protected void showOkCancelDialog(String title, String promptText, String okText, Runnable okHandler, String cancelText, Runnable cancelHandler) {
        if (shouldProcessErrors()) {
            XLEUtil.showOkCancelDialog(title, promptText, okText, okHandler, cancelText, cancelHandler);
        }
    }

    protected void showError(int contentResId) {
        DialogManager.getInstance().showToast(contentResId);
    }

    public void onSetActive() {
        this.isActive = true;
        if (this.adapter != null) {
            this.adapter.onSetActive();
        }
    }

    public void onSetInactive() {
        DialogManager.getInstance().dismissToast();
        this.isActive = false;
        if (this.adapter != null) {
            this.adapter.onSetInactive();
        }
    }

    public boolean getIsActive() {
        return this.isActive;
    }

    public boolean getShowNoNetworkPopup() {
        return this.showNoNetworkPopup;
    }

    private boolean shouldProcessErrors() {
        if (this.onlyProcessExceptionsAndShowToastsWhenActive) {
            return this.isActive;
        }
        return true;
    }

    public void setAsPivotPane() {
        this.showNoNetworkPopup = true;
        this.onlyProcessExceptionsAndShowToastsWhenActive = true;
    }

    protected void cancelLaunchTimeout() {
        this.isLaunching = false;
        if (this.launchTimeoutHandler != null) {
            ThreadManager.Handler.removeCallbacks(this.launchTimeoutHandler);
        }
    }

    public void cancelLaunch() {
        this.isLaunching = false;
    }

    protected void adapterUpdateView() {
        if (this.adapter != null) {
            this.adapter.updateView();
        }
    }

    public void setScreenState(int state) {
        if (this.adapter != null) {
            this.adapter.setScreenState(state);
        }
    }

    public void leaveViewModel(Runnable leaveHandler) {
        leaveHandler.run();
    }

    public boolean shouldRefreshAsPivotHeader() {
        return false;
    }
}
