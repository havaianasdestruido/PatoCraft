package quack.mc.patocraft;

import java.lang.Runnable;

class MainActivity$11 implements Runnable {
    private final MainActivity this$0;
    private final String newText;

    MainActivity$11(MainActivity mainActivity, String newText) {
        this.this$0 = mainActivity;
        this.newText = newText;
    }

    @Override
    public void run() {
        if (this.this$0.textInputWidget == null) {
            this.this$0.setupKeyboardViews(newText, newText.length(), false, false);
        }
        this.this$0.textInputWidget.setText(newText);
        this.this$0.textInputWidget.setSelection(this.this$0.textInputWidget.length());
    }
}
