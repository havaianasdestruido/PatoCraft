package com.microsoft.xbox.toolkit.ui;

import android.view.KeyEvent;
import android.view.View;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.anim.XLEAnimationPackage;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.Stack;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NavigationManager implements View.OnKeyListener {
    private static final String TAG = "NavigationManager";
    private NavigationManagerAnimationState animationState;
    final Runnable callAfterAnimation;
    private boolean cannotNavigateTripwire;
    private XLEAnimationPackage currentAnimation;
    private boolean goingBack;
    private NavigationCallbacks navigationCallbacks;
    private OnNavigatedListener navigationListener;
    private final Stack<ActivityParameters> navigationParameters;
    private final Stack<ScreenLayout> navigationStack;
    private boolean transitionAnimate;
    private Runnable transitionLambda;

    public interface NavigationCallbacks {
        void addContentViewXLE(ScreenLayout screenLayout);

        void onBeforeNavigatingIn();

        void removeContentViewXLE(ScreenLayout screenLayout);

        void setAnimationBlocking(boolean z);
    }

    private enum NavigationManagerAnimationState {
        NONE,
        ANIMATING_IN,
        ANIMATING_OUT,
        COUNT
    }

    public interface OnNavigatedListener {
        void onPageNavigated(ScreenLayout screenLayout, ScreenLayout screenLayout2);

        void onPageRestarted(ScreenLayout screenLayout);
    }

    private NavigationManager() {
        this.navigationParameters = new Stack<>();
        this.navigationStack = new Stack<>();
        this.currentAnimation = null;
        this.animationState = NavigationManagerAnimationState.NONE;
        this.transitionLambda = null;
        this.goingBack = false;
        this.transitionAnimate = true;
        this.cannotNavigateTripwire = false;
        this.callAfterAnimation = new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.NavigationManager.2
            @Override // java.lang.Runnable
            public void run() {
                NavigationManager.this.OnAnimationEnd();
            }
        };
        XLEAssert.assertTrue("You must access navigation manager on UI thread.", Thread.currentThread() == ThreadManager.UIThread);
    }

    private static class NavigationManagerHolder {
        public static final NavigationManager instance = new NavigationManager();

        private NavigationManagerHolder() {
        }
    }

    public static NavigationManager getInstance() {
        return NavigationManagerHolder.instance;
    }

    public ScreenLayout getCurrentActivity() {
        if (this.navigationStack.empty()) {
            return null;
        }
        return this.navigationStack.peek();
    }

    public String getCurrentActivityName() {
        ScreenLayout ativity = getCurrentActivity();
        if (ativity != null) {
            return ativity.getName();
        }
        return null;
    }

    public ScreenLayout getPreviousActivity() {
        if (this.navigationStack.empty() || this.navigationStack.size() <= 1) {
            return null;
        }
        return this.navigationStack.get(this.navigationStack.size() - 2);
    }

    public void setOnNavigatedListener(OnNavigatedListener listener) {
        this.navigationListener = listener;
    }

    public void removeNaviationListener() {
        this.navigationListener = null;
    }

    public void setNavigationCallbacks(NavigationCallbacks callbacks) {
        this.navigationCallbacks = callbacks;
    }

    public void removeNavigationCallbacks() {
        this.navigationCallbacks = null;
    }

    public ActivityParameters getActivityParameters() {
        return getActivityParameters(0);
    }

    public ActivityParameters getActivityParameters(int depth) {
        XLEAssert.assertTrue(depth >= 0 && depth < this.navigationParameters.size());
        return this.navigationParameters.get((this.navigationParameters.size() - depth) - 1);
    }

    public void NavigateTo(Class<? extends ScreenLayout> screenClass, boolean addToStack, ActivityParameters activityParameters) {
        try {
            if (addToStack) {
                PushScreen(screenClass, activityParameters);
            } else {
                PopScreensAndReplace(1, screenClass, activityParameters);
            }
        } catch (XLEException e) {
        }
    }

    public void NavigateTo(Class<? extends ScreenLayout> screenClass, boolean addToStack) {
        NavigateTo(screenClass, addToStack, null);
    }

    public boolean OnBackButtonPressed() {
        boolean shouldFinishActivity = ShouldBackCloseApp();
        if (getCurrentActivity() != null && !getCurrentActivity().onBackButtonPressed()) {
            try {
                if (shouldFinishActivity) {
                    PopScreensAndReplace(1, null, false, false, false);
                } else {
                    PopScreen();
                }
            } catch (XLEException e) {
            }
        }
        return shouldFinishActivity;
    }

    public boolean TEST_isAnimatingIn() {
        return false;
    }

    public boolean TEST_isAnimatingOut() {
        return false;
    }

    public boolean isAnimating() {
        return this.animationState != NavigationManagerAnimationState.NONE;
    }

    public boolean ShouldBackCloseApp() {
        return Size() <= 1 && this.animationState == NavigationManagerAnimationState.NONE;
    }

    public boolean IsScreenOnStack(Class<? extends ScreenLayout> screenClass) {
        for (ScreenLayout stackEntry : this.navigationStack) {
            if (stackEntry.getClass().equals(screenClass)) {
                return true;
            }
        }
        return false;
    }

    public int CountPopsToScreen(Class<? extends ScreenLayout> screenClass) {
        int TOP_ELEM = this.navigationStack.size() - 1;
        for (int i = TOP_ELEM; i >= 0; i--) {
            ScreenLayout stackEntry = this.navigationStack.get(i);
            if (stackEntry.getClass().equals(screenClass)) {
                return TOP_ELEM - i;
            }
        }
        return -1;
    }

    private int Size() {
        return this.navigationStack.size();
    }

    public void RestartCurrentScreen(boolean animate) throws XLEException {
        RestartCurrentScreen(null, animate);
    }

    public void RestartCurrentScreen(ActivityParameters params, boolean animate) throws XLEException {
        if (this.animationState == NavigationManagerAnimationState.ANIMATING_OUT) {
            OnAnimationEnd();
        } else if (this.animationState == NavigationManagerAnimationState.ANIMATING_IN) {
            OnAnimationEnd();
            PopScreensAndReplace(1, getCurrentActivity().getClass(), animate, true, true, params);
        } else {
            PopScreensAndReplace(1, getCurrentActivity().getClass(), animate, true, true, params);
        }
    }

    public void PopScreen() throws XLEException {
        PopScreens(1);
    }

    public void PopScreens(int popCount) throws XLEException {
        PopScreensAndReplace(popCount, null);
    }

    public void PopAllScreens() throws XLEException {
        if (Size() > 0) {
            PopScreensAndReplace(Size(), null, false, false, false);
        }
    }

    public void PopTillScreenThenPush(Class<? extends ScreenLayout> target, Class<? extends ScreenLayout> newScreen, ActivityParameters params) throws XLEException {
        int toPop = CountPopsToScreen(target);
        if (toPop > 0) {
            PopScreensAndReplace(toPop, newScreen, true, true, false, params);
        } else if (toPop < 0) {
            PopScreensAndReplace(0, newScreen, true, false, false, params);
        } else {
            PopScreensAndReplace(0, newScreen, true, false, false, params);
        }
    }

    public void PopTillScreenThenPush(Class<? extends ScreenLayout> target, Class<? extends ScreenLayout> newScreen) throws XLEException {
        PopTillScreenThenPush(target, newScreen, null);
    }

    public void GotoScreenWithPop(Class<? extends ScreenLayout> screenClass) throws XLEException {
        int toPop = CountPopsToScreen(screenClass);
        if (toPop > 0) {
            PopScreensAndReplace(toPop, null, true, false, false);
        } else if (toPop < 0) {
            PopScreensAndReplace(Size(), screenClass, true, false, false);
        } else {
            RestartCurrentScreen(true);
        }
    }

    public void GotoScreenWithPop(ActivityParameters activityParameters, Class<? extends ScreenLayout> newTop, Class<? extends ScreenLayout>... until) throws XLEException {
        Class<? extends ScreenLayout> clsUntil = null;
        int idxTop = this.navigationStack.size() - 1;
        int pos = idxTop;
        loop0: while (pos >= 0) {
            ScreenLayout cur = this.navigationStack.get(pos);
            Class<?> cls = cur.getClass();
            for (Class<? extends ScreenLayout> cls2 : until) {
                if (cls2 == cls) {
                    clsUntil = cls2;
                    break loop0;
                }
            }
            pos--;
        }
        if (clsUntil != null) {
            if (clsUntil == newTop) {
                if (pos == idxTop) {
                    RestartCurrentScreen(activityParameters, false);
                    return;
                } else {
                    PopScreensAndReplace(idxTop - pos, null, true, true, false, activityParameters);
                    return;
                }
            }
            PopScreensAndReplace(idxTop - pos, newTop, true, true, false, activityParameters);
            return;
        }
        PopScreensAndReplace(Size(), newTop, true, true, false, activityParameters);
    }

    public void GotoScreenWithPush(Class<? extends ScreenLayout> screenClass) throws XLEException {
        int toPop = CountPopsToScreen(screenClass);
        if (toPop > 0) {
            PopScreensAndReplace(toPop, null, true, false, false);
        } else if (toPop < 0) {
            PopScreensAndReplace(0, screenClass, true, false, false);
        } else {
            RestartCurrentScreen(true);
        }
    }

    public void GotoScreenWithPush(Class<? extends ScreenLayout> screenClass, ActivityParameters activityParameters) throws XLEException {
        int toPop = CountPopsToScreen(screenClass);
        if (toPop > 0) {
            PopScreensAndReplace(toPop, null, true, false, false, activityParameters);
        } else if (toPop < 0) {
            PopScreensAndReplace(0, screenClass, true, false, false, activityParameters);
        } else {
            RestartCurrentScreen(true);
        }
    }

    public void PushScreen(Class<? extends ScreenLayout> screenClass, ActivityParameters activityParameters) throws XLEException {
        PopScreensAndReplace(0, screenClass, true, false, false, activityParameters);
    }

    public void PushScreen(Class<? extends ScreenLayout> screenClass) throws XLEException {
        PushScreen(screenClass, null);
    }

    public void PopScreensAndReplace(int popCount, Class<? extends ScreenLayout> newScreenClass, ActivityParameters activityParameters) throws XLEException {
        PopScreensAndReplace(popCount, newScreenClass, true, true, false, activityParameters);
    }

    public void PopScreensAndReplace(int popCount, Class<? extends ScreenLayout> newScreenClass) throws XLEException {
        PopScreensAndReplace(popCount, newScreenClass, null);
    }

    public void PopScreensAndReplace(int popCount, Class<? extends ScreenLayout> newScreenClass, boolean animate, boolean isRestart) throws XLEException {
        PopScreensAndReplace(popCount, newScreenClass, animate, true, isRestart);
    }

    public void PopScreensAndReplace(final int popCount, Class<? extends ScreenLayout> newScreenClass, boolean animate, boolean goingBack, boolean isRestart, ActivityParameters activityParameters) throws XLEException {
        final ScreenLayout newScreen;
        Runnable popAndReplaceRunnable;
        XLEAssert.assertTrue("You must access navigation manager on UI thread.", Thread.currentThread() == ThreadManager.UIThread);
        if (this.cannotNavigateTripwire) {
            throw new UnsupportedOperationException("NavigationManager: attempted to execute a recursive navigation in the OnStop/OnStart method.  This is forbidden.");
        }
        if (newScreenClass == null || isRestart) {
            newScreen = null;
        } else {
            try {
                newScreen = newScreenClass.getConstructor(new Class[0]).newInstance(new Object[0]);
                animate = animate && newScreen.isAnimateOnPush();
            } catch (Exception e) {
                throw new XLEException(19L, "FIXME: Failed to create a screen of type " + newScreenClass.getName(), e);
            }
        }
        if (getCurrentActivity() != null) {
            animate = animate && getCurrentActivity().isAnimateOnPop();
        }
        final ActivityParameters screenParameters = activityParameters == null ? new ActivityParameters() : activityParameters;
        final NavigationCallbacks callbacks = this.navigationCallbacks;
        XLEAssert.assertNotNull(callbacks);
        if (isRestart) {
            popAndReplaceRunnable = new RestartRunner(screenParameters);
        } else {
            popAndReplaceRunnable = new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.NavigationManager.1
                @Override // java.lang.Runnable
                public void run() {
                    NavigationManager.this.cannotNavigateTripwire = true;
                    ScreenLayout from = NavigationManager.this.getCurrentActivity();
                    screenParameters.putFromScreen(from);
                    screenParameters.putSourcePage(NavigationManager.this.getCurrentActivityName());
                    if (NavigationManager.this.getCurrentActivity() != null) {
                        NavigationManager.this.getCurrentActivity().onSetInactive();
                        NavigationManager.this.getCurrentActivity().onPause();
                        NavigationManager.this.getCurrentActivity().onStop();
                    }
                    for (int i = 0; i < popCount; i++) {
                        NavigationManager.this.getCurrentActivity().onDestroy();
                        callbacks.removeContentViewXLE((ScreenLayout) NavigationManager.this.navigationStack.pop());
                        NavigationManager.this.navigationParameters.pop();
                    }
                    TextureManager.Instance().purgeResourceBitmapCache();
                    ScreenLayout to = null;
                    if (newScreen != null) {
                        if (NavigationManager.this.getCurrentActivity() != null && !newScreen.isKeepPreviousScreen()) {
                            NavigationManager.this.getCurrentActivity().onTombstone();
                        }
                        callbacks.addContentViewXLE((ScreenLayout) NavigationManager.this.navigationStack.push(newScreen));
                        NavigationManager.this.navigationParameters.push(screenParameters);
                        NavigationManager.this.getCurrentActivity().onCreate();
                    } else if (NavigationManager.this.getCurrentActivity() != null) {
                        callbacks.addContentViewXLE(NavigationManager.this.getCurrentActivity());
                        if (NavigationManager.this.getCurrentActivity().getIsTombstoned()) {
                            NavigationManager.this.getCurrentActivity().onRehydrate();
                        }
                    }
                    if (NavigationManager.this.getCurrentActivity() != null) {
                        NavigationManager.this.getCurrentActivity().onStart();
                        NavigationManager.this.getCurrentActivity().onResume();
                        NavigationManager.this.getCurrentActivity().onSetActive();
                        NavigationManager.this.getCurrentActivity().onAnimateInStarted();
                        XboxTcuiSdk.getActivity().invalidateOptionsMenu();
                        to = NavigationManager.this.getCurrentActivity();
                    }
                    if (NavigationManager.this.navigationListener != null) {
                        NavigationManager.this.navigationListener.onPageNavigated(from, to);
                    }
                    NavigationManager.this.cannotNavigateTripwire = false;
                }
            };
        }
        switch (this.animationState) {
            case NONE:
                Transition(goingBack, popAndReplaceRunnable, animate);
                return;
            default:
                ReplaceOnAnimationEnd(goingBack, popAndReplaceRunnable, animate);
                return;
        }
    }

    public void PopScreensAndReplace(int popCount, Class<? extends ScreenLayout> newScreenClass, boolean animate, boolean goingBack, boolean isRestart) throws XLEException {
        PopScreensAndReplace(popCount, newScreenClass, animate, goingBack, isRestart, null);
    }

    public void onApplicationPause() {
        for (int i = 0; i < this.navigationStack.size(); i++) {
            ScreenLayout stackEntry = this.navigationStack.get(i);
            stackEntry.onApplicationPause();
        }
    }

    public void onApplicationResume() {
        for (int i = 0; i < this.navigationStack.size(); i++) {
            ScreenLayout stackEntry = this.navigationStack.get(i);
            stackEntry.onApplicationResume();
        }
    }

    public void setAnimationBlocking(boolean animationBlocking) {
        if (this.navigationCallbacks != null) {
            this.navigationCallbacks.setAnimationBlocking(animationBlocking);
        }
    }

    private void Transition(boolean goingBack, Runnable lambda, boolean animate) {
        this.transitionLambda = lambda;
        this.transitionAnimate = animate;
        this.goingBack = goingBack;
        this.currentAnimation = getCurrentActivity() == null ? null : getCurrentActivity().getAnimateOut(goingBack);
        startAnimation(this.currentAnimation, NavigationManagerAnimationState.ANIMATING_OUT);
    }

    private void ReplaceOnAnimationEnd(boolean goingBack, Runnable lambda, boolean animate) {
        XLEAssert.assertTrue(this.animationState == NavigationManagerAnimationState.ANIMATING_OUT || this.animationState == NavigationManagerAnimationState.ANIMATING_IN);
        this.animationState = NavigationManagerAnimationState.ANIMATING_OUT;
        this.transitionLambda = lambda;
        this.transitionAnimate = animate;
        this.goingBack = goingBack;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OnAnimationEnd() {
        switch (this.animationState) {
            case ANIMATING_IN:
                if (this.navigationCallbacks != null) {
                    this.navigationCallbacks.setAnimationBlocking(false);
                }
                this.animationState = NavigationManagerAnimationState.NONE;
                if (getCurrentActivity() != null) {
                    getCurrentActivity().onAnimateInCompleted();
                }
                break;
            case ANIMATING_OUT:
                this.transitionLambda.run();
                XLEAnimationPackage anim = null;
                if (getCurrentActivity() != null) {
                    anim = getCurrentActivity().getAnimateIn(this.goingBack);
                }
                if (this.navigationCallbacks != null) {
                    this.navigationCallbacks.onBeforeNavigatingIn();
                }
                startAnimation(anim, NavigationManagerAnimationState.ANIMATING_IN);
                break;
        }
    }

    private void startAnimation(XLEAnimationPackage anim, NavigationManagerAnimationState state) {
        this.animationState = state;
        this.currentAnimation = anim;
        if (this.navigationCallbacks != null) {
            this.navigationCallbacks.setAnimationBlocking(true);
        }
        if (this.transitionAnimate && anim != null) {
            anim.setOnAnimationEndRunnable(this.callAfterAnimation);
            anim.startAnimation();
        } else {
            this.callAfterAnimation.run();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View v, int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getAction() != 1) {
            return false;
        }
        if (!OnBackButtonPressed()) {
            return true;
        }
        removeNavigationCallbacks();
        removeNaviationListener();
        return false;
    }

    private class RestartRunner implements Runnable {
        private final ActivityParameters params;

        public RestartRunner(ActivityParameters params) {
            this.params = params;
        }

        @Override // java.lang.Runnable
        public void run() {
            NavigationManager.this.cannotNavigateTripwire = true;
            ScreenLayout from = NavigationManager.this.getCurrentActivity();
            XLEAssert.assertNotNull(from);
            NavigationManager.this.getCurrentActivity().onSetInactive();
            NavigationManager.this.getCurrentActivity().onPause();
            NavigationManager.this.getCurrentActivity().onStop();
            XLEAssert.assertTrue("navigationParameters cannot be empty!", NavigationManager.this.navigationParameters.isEmpty() ? false : true);
            NavigationManager.this.navigationParameters.pop();
            NavigationManager.this.navigationParameters.push(this.params);
            NavigationManager.this.getCurrentActivity().onStart();
            NavigationManager.this.getCurrentActivity().onResume();
            NavigationManager.this.getCurrentActivity().onSetActive();
            NavigationManager.this.getCurrentActivity().onAnimateInStarted();
            XboxTcuiSdk.getActivity().invalidateOptionsMenu();
            if (NavigationManager.this.navigationListener != null) {
                NavigationManager.this.navigationListener.onPageRestarted(from);
            }
            NavigationManager.this.cannotNavigateTripwire = false;
        }
    }
}
