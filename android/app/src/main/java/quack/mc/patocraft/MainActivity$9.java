package quack.mc.patocraft;

import java.lang.Runnable;

class MainActivity$9 implements Runnable {
    private final MainActivity this$0;
    private final String text;
    private final int maxLength;
    private final boolean limitInput;
    private final boolean numbersOnly;

    MainActivity$9(MainActivity mainActivity, String text, int maxLength, boolean limitInput, boolean numbersOnly) {
        this.this$0 = mainActivity;
        this.text = text;
        this.maxLength = maxLength;
        this.limitInput = limitInput;
        this.numbersOnly = numbersOnly;
    }

    @Override
    public void run() {
        this.this$0.setupKeyboardViews(text, maxLength, limitInput, numbersOnly);
    }
}
