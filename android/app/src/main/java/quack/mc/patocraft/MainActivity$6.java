package quack.mc.patocraft;

import android.os.SystemClock;
import android.view.MotionEvent;
import java.lang.Runnable;

class MainActivity$6 implements Runnable {
    private final MainActivity this$0;

    MainActivity$6(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void run() {
        MotionEvent event = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, 0.0f, 0.0f, 0);
        this.this$0.textInputWidget.dispatchTouchEvent(event);
        event.recycle();
        MotionEvent event2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, 0.0f, 0.0f, 0);
        this.this$0.textInputWidget.dispatchTouchEvent(event2);
        event2.recycle();
        this.this$0.textInputWidget.setSelection(this.this$0.textInputWidget.length());
    }
}
