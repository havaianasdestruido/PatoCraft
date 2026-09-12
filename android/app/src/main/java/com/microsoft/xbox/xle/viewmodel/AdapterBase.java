package com.microsoft.xbox.xle.viewmodel;

import android.view.View;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.XLEAllocationTracker;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xbox.xle.app.module.ScreenModuleLayout;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AdapterBase {
    public static String ALLOCATION_TAG = "ADAPTERBASE";
    private static HashMap<String, Integer> adapterCounter = new HashMap<>();
    protected boolean isActive;
    private boolean isStarted;
    private ArrayList<ScreenModuleLayout> screenModules;
    private final ViewModelBase viewModel;

    protected abstract void updateViewOverride();

    protected boolean getIsStarted() {
        return this.isStarted;
    }

    public AdapterBase() {
        this(null);
    }

    public AdapterBase(ViewModelBase viewModel) {
        this.isActive = false;
        this.isStarted = false;
        this.screenModules = new ArrayList<>();
        this.viewModel = viewModel;
        XLEAllocationTracker.getInstance().debugIncrement(ALLOCATION_TAG, getClass().getSimpleName());
        XLEAllocationTracker.getInstance().debugPrintOverallocated(ALLOCATION_TAG);
    }

    public void finalize() {
        XLEAllocationTracker.getInstance().debugDecrement(ALLOCATION_TAG, getClass().getSimpleName());
        XLEAllocationTracker.getInstance().debugPrintOverallocated(ALLOCATION_TAG);
    }

    public void updateView() {
        if (!NavigationManager.getInstance().isAnimating()) {
            updateViewOverride();
            for (ScreenModuleLayout miniAdapter : this.screenModules) {
                miniAdapter.updateView();
            }
        }
    }

    public void invalidateView() {
        if (!NavigationManager.getInstance().isAnimating()) {
            invalidateViewOverride();
            for (ScreenModuleLayout miniAdapter : this.screenModules) {
                miniAdapter.invalidateView();
            }
        }
    }

    protected void invalidateViewOverride() {
    }

    public void forceUpdateViewImmediately() {
        XLEAssert.assertIsUIThread();
        updateViewOverride();
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.updateView();
        }
    }

    public ArrayList<XLEAnimation> getAnimateIn(boolean goingBack) {
        return null;
    }

    public ArrayList<XLEAnimation> getAnimateOut(boolean goingBack) {
        return null;
    }

    public void onPause() {
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onPause();
        }
    }

    public void onApplicationPause() {
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onApplicationPause();
        }
    }

    public void onApplicationResume() {
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onApplicationResume();
        }
    }

    public void onResume() {
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onResume();
        }
    }

    public void onDestroy() {
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onDestroy();
        }
        this.screenModules.clear();
    }

    public void onStart() {
        this.isStarted = true;
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onStart();
        }
    }

    public void onStop() {
        this.isStarted = false;
        for (ScreenModuleLayout miniAdapter : this.screenModules) {
            miniAdapter.onStop();
        }
    }

    @Deprecated
    protected void onAppBarUpdated() {
    }

    protected void onAppBarButtonsAdded() {
    }

    protected void showKeyboard(View view, int delayMS) {
        XLEUtil.showKeyboard(view, delayMS);
    }

    public void onSetActive() {
        this.isActive = true;
        if (XboxTcuiSdk.getActivity() != null && this.isStarted) {
            updateView();
        }
    }

    public void onSetInactive() {
        this.isActive = false;
    }

    public void onAnimateInCompleted() {
    }

    public View findViewById(int id) {
        View view = null;
        if (this.viewModel != null) {
            view = this.viewModel.findViewById(id);
        }
        if (view != null) {
            return view;
        }
        View view2 = XboxTcuiSdk.getActivity().findViewById(id);
        return view2;
    }

    protected void findAndInitializeModuleById(int id, ViewModelBase vm) {
        View view = findViewById(id);
        if (view != null && (view instanceof ScreenModuleLayout)) {
            ScreenModuleLayout module = (ScreenModuleLayout) findViewById(id);
            module.setViewModel(vm);
            this.screenModules.add(module);
        }
    }

    protected void setBlocking(boolean visible, String blockingText) {
        DialogManager.getInstance().setBlocking(visible, blockingText);
    }

    protected void setCancelableBlocking(boolean visible, String blockingText, Runnable cancelRunnable) {
        DialogManager.getInstance().setCancelableBlocking(visible, blockingText, cancelRunnable);
    }

    public void setScreenState(int state) {
    }
}
