package quack.mc.patocraft;

import android.text.Editable;
import android.text.TextWatcher;

class MainActivity$3 implements TextWatcher {
    private final MainActivity this$0;

    MainActivity$3(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {
    }

    @Override
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
    }

    @Override
    public void afterTextChanged(Editable s) {
        String textBoxText = s.toString();
        this.this$0.nativeSetTextboxText(textBoxText);
    }
}
