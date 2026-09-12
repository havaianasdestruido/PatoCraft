package quack.mc.patocraft;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

public class TextInputProxyEditTextbox extends EditText {
    TextInputProxyEditTextbox$MCPEKeyWatcher _mcpeKeyWatcher;
    public final int allowedLength;
    public final boolean limitInput;

    public TextInputProxyEditTextbox(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this._mcpeKeyWatcher = null;
        this.allowedLength = 160;
        this.limitInput = false;
    }

    public TextInputProxyEditTextbox(Context context, AttributeSet attrs) {
        super(context, attrs);
        this._mcpeKeyWatcher = null;
        this.allowedLength = 160;
        this.limitInput = false;
    }

    public TextInputProxyEditTextbox(Context context, int allowedLength, boolean limitInput) {
        super(context);
        this._mcpeKeyWatcher = null;
        this.allowedLength = allowedLength;
        this.limitInput = limitInput;
        InputFilter[] filters;
        if (limitInput) {
            filters = new InputFilter[]{new InputFilter.LengthFilter(allowedLength), new TextInputProxyEditTextbox$1(this)};
        } else {
            filters = new InputFilter[]{new InputFilter.LengthFilter(allowedLength)};
        }
        setFilters(filters);
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        return new TextInputProxyEditTextbox$MCPEInputConnection(super.onCreateInputConnection(outAttrs), true, this);
    }

    @Override
    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getAction() != 1) {
            return super.onKeyPreIme(keyCode, event);
        }
        TextInputProxyEditTextbox$MCPEKeyWatcher watcher = _mcpeKeyWatcher;
        if (watcher != null) {
            watcher.onBackKeyPressed();
        }
        return false;
    }

    public void setOnMCPEKeyWatcher(TextInputProxyEditTextbox$MCPEKeyWatcher mcpeKeyWatcher) {
        this._mcpeKeyWatcher = mcpeKeyWatcher;
    }
}
