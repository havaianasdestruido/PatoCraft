package quack.mc.patocraft;

import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

class TextInputProxyEditTextbox$MCPEInputConnection extends InputConnectionWrapper {
    private final TextInputProxyEditTextbox textbox;

    public TextInputProxyEditTextbox$MCPEInputConnection(InputConnection target, boolean mutable, TextInputProxyEditTextbox textbox) {
        super(target, mutable);
        this.textbox = textbox;
    }

    @Override
    public boolean sendKeyEvent(KeyEvent event) {
        Editable text = textbox.getText();
        if (text.length() != 0 || event.getAction() != 0 || event.getKeyCode() != 67) {
            return super.sendKeyEvent(event);
        }
        TextInputProxyEditTextbox$MCPEKeyWatcher watcher = textbox._mcpeKeyWatcher;
        if (watcher != null) {
            watcher.onDeleteKeyPressed();
        }
        return false;
    }
}
