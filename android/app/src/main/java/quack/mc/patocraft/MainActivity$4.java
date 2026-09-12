package quack.mc.patocraft;

import android.util.Log;
import java.lang.Runnable;

class MainActivity$4 implements TextInputProxyEditTextbox$MCPEKeyWatcher {
    private final MainActivity this$0;

    MainActivity$4(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void onDeleteKeyPressed() {
        this.this$0.runOnUiThread(new MainActivity$4$1(this.this$0));
    }

    @Override
    public void onBackKeyPressed() {
        this.this$0.runOnUiThread(new MainActivity$4$2(this.this$0));
    }
}
