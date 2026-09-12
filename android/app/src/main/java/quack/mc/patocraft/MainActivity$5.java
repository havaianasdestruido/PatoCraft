package quack.mc.patocraft;

import android.view.MotionEvent;
import android.view.View;

class MainActivity$5 implements View.OnTouchListener {
    private final MainActivity this$0;

    MainActivity$5(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        this.this$0.nativeBackPressed();
        return false;
    }
}
