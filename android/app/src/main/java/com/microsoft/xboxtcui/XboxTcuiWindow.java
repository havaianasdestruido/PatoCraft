package com.microsoft.xboxtcui;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.TransportMediator;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.toolkit.BackgroundThreadWaitor;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.ProjectSpecificDataProvider;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.XLEUnhandledExceptionHandler;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.SGProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.XleProjectSpecificDataProvider;
import java.util.Stack;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XboxTcuiWindow extends FrameLayout implements NavigationManager.NavigationCallbacks, NavigationManager.OnNavigatedListener {
    private static final int NAVIGATION_BLOCK_TIMEOUT_MS = 5000;
    private static final String TAG = XboxTcuiWindow.class.getSimpleName();
    private Activity activity;
    private boolean animationBlocking;
    private final ActivityParameters launchParams;
    private final Class<? extends ScreenLayout> launchScreenClass;
    private final Stack<ScreenLayout> screens;
    private boolean wasRestarted;

    public XboxTcuiWindow(Activity activity, Class<? extends ScreenLayout> screenClass, ActivityParameters params) {
        super(activity);
        this.screens = new Stack<>();
        XLEAssert.assertNotNull(params.getMeXuid());
        this.activity = activity;
        this.launchScreenClass = screenClass;
        this.launchParams = params;
        setBackgroundResource(R.color.backgroundColor);
    }

    public void onCreate(Bundle savedInstanceState) {
        this.wasRestarted = savedInstanceState != null;
        setupThreadManager();
        ProjectSpecificDataProvider.getInstance().setProvider(XleProjectSpecificDataProvider.getInstance());
        String previousXuid = ProjectSpecificDataProvider.getInstance().getXuidString();
        if (!JavaUtil.isNullOrEmpty(previousXuid) && !previousXuid.equalsIgnoreCase(this.launchParams.getMeXuid())) {
            ProfileModel.getMeProfileModel();
            ProfileModel.reset();
        }
        ProjectSpecificDataProvider.getInstance().setXuidString(this.launchParams.getMeXuid());
        ProjectSpecificDataProvider.getInstance().setPrivileges(this.launchParams.getPrivileges());
        DialogManager.getInstance().setManager(SGProjectSpecificDialogManager.getInstance());
        setFocusableInTouchMode(true);
        requestFocus();
        setupNavigationManager();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View focused, int direction) {
        if (focused != this) {
            return false;
        }
        switch (direction) {
            case 1:
            case 33:
                View viewToFocus = FocusFinder.getInstance().findNextFocus(this, getFocusedChild(), 33);
                if (viewToFocus != null) {
                    viewToFocus.requestFocus();
                }
                return true;
            case 2:
            case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                View viewToFocus2 = FocusFinder.getInstance().findNextFocus(this, getFocusedChild(), TransportMediator.KEYCODE_MEDIA_RECORD);
                if (viewToFocus2 != null) {
                    viewToFocus2.requestFocus();
                }
                return true;
            default:
                return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (NavigationManager.getInstance().onKey(this, event.getKeyCode(), event)) {
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    public void onStart() {
        XboxTcuiSdk.sdkInitialize(this.activity);
        DialogManager.getInstance().setEnabled(true);
        try {
            if (this.wasRestarted) {
                ScreenLayout currentScreen = NavigationManager.getInstance().getCurrentActivity();
                if (currentScreen != null) {
                    Bundle outState = new Bundle();
                    NavigationManager.getInstance().getCurrentActivity().onSaveInstanceState(outState);
                    NavigationManager.getInstance().RestartCurrentScreen(false);
                    currentScreen.onRestoreInstanceState(outState);
                }
            } else {
                NavigationManager.getInstance().PushScreen(this.launchScreenClass, this.launchParams);
            }
        } catch (XLEException ex) {
            Log.e(TAG, "onStart: " + Log.getStackTraceString(ex));
        } finally {
            this.wasRestarted = false;
        }
    }

    public void onStop() {
        DialogManager.getInstance().setEnabled(false);
        try {
            NavigationManager.getInstance().PopAllScreens();
        } catch (XLEException ex) {
            Log.e(TAG, "onStop: " + Log.getStackTraceString(ex));
        }
    }

    private void setupThreadManager() {
        ThreadManager.UIThread = Thread.currentThread();
        ThreadManager.Handler = new Handler();
        Thread thread = ThreadManager.UIThread;
        Thread.setDefaultUncaughtExceptionHandler(XLEUnhandledExceptionHandler.Instance);
    }

    private void setupNavigationManager() {
        NavigationManager.getInstance().setNavigationCallbacks(this);
        NavigationManager.getInstance().setOnNavigatedListener(this);
        try {
            NavigationManager.getInstance().PopAllScreens();
        } catch (XLEException ex) {
            Log.e(TAG, "setupNavigationManager: " + Log.getStackTraceString(ex));
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.NavigationCallbacks
    public void addContentViewXLE(ScreenLayout screen) {
        if (!this.screens.isEmpty()) {
            if (screen == this.screens.peek()) {
                screen.setAllEventsEnabled(true);
                return;
            } else if (screen.isKeepPreviousScreen()) {
                this.screens.peek().setAllEventsEnabled(false);
            } else {
                removeView(this.screens.pop());
            }
        }
        RelativeLayout.LayoutParams activityParams = new RelativeLayout.LayoutParams(-1, -1);
        activityParams.addRule(10);
        activityParams.addRule(12);
        addView(screen, activityParams);
        this.screens.push(screen);
    }

    @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.NavigationCallbacks
    public void removeContentViewXLE(ScreenLayout screen) {
        int screenIndex = this.screens.indexOf(screen);
        if (screenIndex >= 0) {
            while (this.screens.size() > screenIndex) {
                removeView(this.screens.pop());
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.NavigationCallbacks
    public void setAnimationBlocking(boolean animationBlocking) {
        if (this.animationBlocking != animationBlocking) {
            this.animationBlocking = animationBlocking;
            if (this.animationBlocking) {
                BackgroundThreadWaitor.getInstance().setBlocking(BackgroundThreadWaitor.WaitType.Navigation, NAVIGATION_BLOCK_TIMEOUT_MS);
            } else {
                BackgroundThreadWaitor.getInstance().clearBlocking(BackgroundThreadWaitor.WaitType.Navigation);
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.NavigationCallbacks
    public void onBeforeNavigatingIn() {
    }

    @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.OnNavigatedListener
    public void onPageNavigated(ScreenLayout from, ScreenLayout to) {
    }

    @Override // com.microsoft.xbox.toolkit.ui.NavigationManager.OnNavigatedListener
    public void onPageRestarted(ScreenLayout screen) {
    }
}
