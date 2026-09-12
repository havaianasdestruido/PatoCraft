package quack.mc.patocraft;

import android.view.KeyEvent;
import android.widget.TextView;

class MainActivity$2 implements TextView.OnEditorActionListener {
    private final MainActivity this$0;

    MainActivity$2(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
        android.util.Log.w("mcpe - keyboard", "onEditorAction: " + actionId);
        if (actionId == 5) {
            this.this$0.nativeReturnKeyPressed();
            String curText = this.this$0.textInputWidget.getText().toString();
            int curSelect = this.this$0.textInputWidget.getSelectionEnd();
            if (curSelect < 0 || curSelect > curText.length()) {
                curSelect = curText.length();
            }
            String newText = curText.substring(0, curSelect) + "\n" + curText.substring(curSelect, curText.length());
            this.this$0.textInputWidget.setText(newText);
            int newSelection = Math.min(curSelect + 1, this.this$0.textInputWidget.getText().length());
            this.this$0.textInputWidget.setSelection(newSelection);
            return true;
        }
        if (actionId != 7) {
            return false;
        }
        this.this$0.nativeBackPressed();
        return true;
    }
}
