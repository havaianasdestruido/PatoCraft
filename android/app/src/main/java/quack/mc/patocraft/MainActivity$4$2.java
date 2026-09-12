package quack.mc.patocraft;

import android.util.Log;
import java.lang.Runnable;

class MainActivity$4$2 implements Runnable {
    private final MainActivity this$0;

    MainActivity$4$2(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void run() {
        Log.w("mcpe - keyboard", "textInputWidget.onBackPressed");
        this.this$0.nativeBackPressed();
    }
}
