package quack.mc.patocraft;

import android.text.InputFilter;
import android.text.Spanned;

class TextInputProxyEditTextbox$1 implements InputFilter {
    private final TextInputProxyEditTextbox this$0;

    TextInputProxyEditTextbox$1(TextInputProxyEditTextbox this$0) {
        this.this$0 = this$0;
    }

    @Override
    public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
        if ("".equals(source)) {
        }
        return source;
    }
}
