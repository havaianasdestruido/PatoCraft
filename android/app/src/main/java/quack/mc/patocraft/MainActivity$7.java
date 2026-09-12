package quack.mc.patocraft;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;

class MainActivity$7 implements ViewTreeObserver.OnGlobalLayoutListener {
    private final MainActivity this$0;
    private final View activityRootView;

    MainActivity$7(MainActivity mainActivity, View activityRootView) {
        this.this$0 = mainActivity;
        this.activityRootView = activityRootView;
    }

    @Override
    public void onGlobalLayout() {
        Rect r = new Rect();
        activityRootView.getWindowVisibleDisplayFrame(r);
        this.this$0.virtualKeyboardHeight = activityRootView.getRootView().getHeight() - r.height();
    }
}
