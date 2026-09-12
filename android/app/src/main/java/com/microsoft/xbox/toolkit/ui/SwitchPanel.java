package com.microsoft.xbox.toolkit.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.microsoft.xbox.toolkit.BackgroundThreadWaitor;
import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SwitchPanel extends LinearLayout {
    private static final int LAYOUT_BLOCK_TIMEOUT_MS = 150;
    private AnimatorListenerAdapter AnimateInListener;
    private AnimatorListenerAdapter AnimateOutListener;
    private final int INVALID_STATE_ID;
    private final int VALID_CONTENT_STATE;
    private boolean active;
    private boolean blocking;
    private View newView;
    private View oldView;
    private int selectedState;
    private boolean shouldAnimate;

    public interface SwitchPanelChild {
        int getState();
    }

    public SwitchPanel(Context context) {
        super(context);
        this.INVALID_STATE_ID = -1;
        this.VALID_CONTENT_STATE = 0;
        this.blocking = false;
        this.active = false;
        this.oldView = null;
        this.newView = null;
        this.shouldAnimate = true;
        this.AnimateInListener = new AnimatorListenerAdapter() { // from class: com.microsoft.xbox.toolkit.ui.SwitchPanel.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                SwitchPanel.this.onAnimateInEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                SwitchPanel.this.onAnimateInEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                SwitchPanel.this.onAnimateInStart();
            }
        };
        this.AnimateOutListener = new AnimatorListenerAdapter() { // from class: com.microsoft.xbox.toolkit.ui.SwitchPanel.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                SwitchPanel.this.onAnimateOutEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                SwitchPanel.this.onAnimateOutEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                SwitchPanel.this.onAnimateOutStart();
            }
        };
        throw new UnsupportedOperationException();
    }

    public SwitchPanel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.INVALID_STATE_ID = -1;
        this.VALID_CONTENT_STATE = 0;
        this.blocking = false;
        this.active = false;
        this.oldView = null;
        this.newView = null;
        this.shouldAnimate = true;
        this.AnimateInListener = new AnimatorListenerAdapter() { // from class: com.microsoft.xbox.toolkit.ui.SwitchPanel.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                SwitchPanel.this.onAnimateInEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                SwitchPanel.this.onAnimateInEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                SwitchPanel.this.onAnimateInStart();
            }
        };
        this.AnimateOutListener = new AnimatorListenerAdapter() { // from class: com.microsoft.xbox.toolkit.ui.SwitchPanel.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                SwitchPanel.this.onAnimateOutEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                SwitchPanel.this.onAnimateOutEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                SwitchPanel.this.onAnimateOutStart();
            }
        };
        TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("SwitchPanel"));
        this.selectedState = a.getInteger(XLERValueHelper.getStyleableRValue("SwitchPanel_selectedState"), -1);
        a.recycle();
        if (this.selectedState < 0) {
            throw new IllegalArgumentException("You must specify the selectedState attribute in the xml, and the value must be positive.");
        }
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        updateVisibility(-1, this.selectedState);
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public void setShouldAnimate(boolean value) {
        this.shouldAnimate = value;
    }

    public void setState(int newState) {
        if (newState < 0) {
            throw new IllegalArgumentException("New state must be a positive value.");
        }
        if (this.selectedState != newState) {
            int oldState = this.selectedState;
            this.selectedState = newState;
            updateVisibility(oldState, newState);
        }
    }

    public int getState() {
        return this.selectedState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateVisibility(int oldState, int newState) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!(childAt instanceof SwitchPanelChild)) {
                throw new UnsupportedOperationException("All children of SwitchPanel must implement the SwitchPanelChild interface. All other types are not supported and should be removed.");
            }
            SwitchPanelChild switchPanelChild = (SwitchPanelChild) childAt;
            int switchPanelState = switchPanelChild.getState();
            if (switchPanelState == oldState) {
                this.oldView = childAt;
            } else if (switchPanelState == newState) {
                this.newView = childAt;
            } else {
                childAt.setVisibility(8);
            }
        }
        if (this.shouldAnimate && newState == 0 && this.newView != null) {
            this.newView.setAlpha(0.0f);
            this.newView.setVisibility(0);
            requestLayout();
            if (this.oldView != null) {
                this.oldView.animate().alpha(0.0f).setDuration(150L).setListener(this.AnimateOutListener);
            }
            this.newView.animate().alpha(1.0f).setDuration(150L).setListener(this.AnimateInListener);
            return;
        }
        if (this.oldView != null) {
            this.oldView.setVisibility(8);
        }
        if (this.newView != null) {
            this.newView.setAlpha(1.0f);
            this.newView.setVisibility(0);
        }
        requestLayout();
    }

    public void setBlocking(boolean value) {
        if (this.blocking != value) {
            this.blocking = value;
            if (this.blocking) {
                BackgroundThreadWaitor.getInstance().setBlocking(BackgroundThreadWaitor.WaitType.ListLayout, LAYOUT_BLOCK_TIMEOUT_MS);
            } else {
                BackgroundThreadWaitor.getInstance().clearBlocking(BackgroundThreadWaitor.WaitType.ListLayout);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateInStart() {
        if (this.newView != null) {
            this.newView.setLayerType(2, null);
            setBlocking(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateInEnd() {
        setBlocking(false);
        if (this.newView != null) {
            this.newView.setLayerType(0, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateOutStart() {
        if (this.oldView != null) {
            this.oldView.setLayerType(2, null);
            setBlocking(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateOutEnd() {
        if (this.oldView != null) {
            this.oldView.setVisibility(8);
            this.oldView.setLayerType(0, null);
        }
    }
}
