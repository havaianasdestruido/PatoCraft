package com.microsoft.xbox.toolkit.ui;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.TextView;
import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CancellableBlockingScreen extends Dialog {
    private XLEButton cancelButton;
    private View container;
    private TextView statusText;

    public CancellableBlockingScreen(Context context) {
        super(context, XLERValueHelper.getStyleRValue("cancellable_dialog_style"));
        setCancelable(false);
        setOnCancelListener(null);
        requestWindowFeature(1);
        setContentView(XLERValueHelper.getLayoutRValue("cancellable_blocking_dialog"));
        this.container = findViewById(XLERValueHelper.getIdRValue("blocking_dialog_container"));
        this.cancelButton = (XLEButton) findViewById(XLERValueHelper.getIdRValue("blocking_dialog_cancel"));
        this.statusText = (TextView) findViewById(XLERValueHelper.getIdRValue("blocking_dialog_status_text"));
    }

    public void show(Context context, CharSequence statusText) {
        boolean previouslyVisible = isShowing();
        setMessage(statusText);
        show();
        if (!previouslyVisible) {
            AlphaAnimation animation = new AlphaAnimation(0.0f, 1.0f);
            animation.setFillAfter(true);
            animation.setStartOffset(1000L);
            animation.setDuration(1000L);
            this.container.startAnimation(animation);
        }
    }

    public void setMessage(CharSequence statusText) {
        this.statusText.setText(statusText);
    }

    public void setCancelButtonAction(View.OnClickListener listener) {
        if (listener != null) {
            this.cancelButton.setOnClickListener(null);
        }
        this.cancelButton.setOnClickListener(listener);
    }
}
