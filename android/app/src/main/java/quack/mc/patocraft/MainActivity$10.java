package quack.mc.patocraft;

import java.lang.Runnable;

class MainActivity$10 implements Runnable {
    private final MainActivity this$0;

    MainActivity$10(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void run() {
        if (this.this$0.mHiddenTextInputDialog != null) {
            this.this$0.mHiddenTextInputDialog.dismiss();
            this.this$0.mHiddenTextInputDialog = null;
        }
    }
}
