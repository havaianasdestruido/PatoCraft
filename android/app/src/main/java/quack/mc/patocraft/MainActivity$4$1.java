package quack.mc.patocraft;

import java.lang.Runnable;

class MainActivity$4$1 implements Runnable {
    private final MainActivity this$0;

    MainActivity$4$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void run() {
        this.this$0.nativeBackSpacePressed();
    }
}
