package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEButton extends Button {
    private boolean alwaysClickable;
    protected boolean disableSound;
    private int disabledTextColor;
    private int enabledTextColor;
    protected ButtonStateHandler stateHandler;

    public XLEButton(Context context) {
        super(context);
        this.stateHandler = new ButtonStateHandler();
        this.disableSound = false;
        setSoundEffectsEnabled(false);
    }

    public XLEButton(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public XLEButton(Context context, AttributeSet attrs, int style) {
        super(context, attrs, style);
        this.stateHandler = new ButtonStateHandler();
        this.disableSound = false;
        if (!isInEditMode()) {
            setSoundEffectsEnabled(false);
            TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("XLEButton"));
            try {
                this.stateHandler.setDisabled(a.getBoolean(XLERValueHelper.getStyleableRValue("XLEButton_disabled"), false));
                this.stateHandler.setDisabledImageHandle(a.getResourceId(XLERValueHelper.getStyleableRValue("XLEButton_disabledImage"), -1));
                this.stateHandler.setEnabledImageHandle(a.getResourceId(XLERValueHelper.getStyleableRValue("XLEButton_enabledImage"), -1));
                this.stateHandler.setPressedImageHandle(a.getResourceId(XLERValueHelper.getStyleableRValue("XLEButton_pressedImage"), -1));
                this.disableSound = a.getBoolean(XLERValueHelper.getStyleableRValue("XLEButton_disableSound"), false);
                FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(-2, -2);
                setLayoutParams(params);
                TypedArray typefaceAttr = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("CustomTypeface"));
                String typeface = typefaceAttr.getString(XLERValueHelper.getStyleableRValue("CustomTypeface_typefaceSource"));
                typefaceAttr.recycle();
                if (typeface != null && typeface.length() > 0) {
                    applyCustomTypeface(context, typeface);
                }
                this.enabledTextColor = getCurrentTextColor();
                this.disabledTextColor = a.getColor(XLERValueHelper.getStyleableRValue("XLEButton_disabledTextColor"), this.enabledTextColor);
                this.alwaysClickable = a.getBoolean(XLERValueHelper.getStyleableRValue("XLEButton_alwaysClickable"), false);
                if (this.alwaysClickable) {
                    super.setEnabled(true);
                    super.setClickable(true);
                }
            } finally {
                a.recycle();
            }
        }
    }

    private void applyCustomTypeface(Context context, String typefaceSource) {
        if (typefaceSource != null) {
            Typeface tf = FontManager.Instance().getTypeface(getContext(), typefaceSource);
            setTypeface(tf);
        }
    }

    public void setTypeFace(String typeface) {
        applyCustomTypeface(getContext(), typeface);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        if (!this.alwaysClickable) {
            super.setEnabled(enabled);
        }
        if (this.stateHandler == null) {
            this.stateHandler = new ButtonStateHandler();
        }
        this.stateHandler.setEnabled(enabled);
        updateImage();
        updateTextColor();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        updateImage();
        setOnTouchListener(new View.OnTouchListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEButton.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                boolean handled = XLEButton.this.stateHandler.onTouch(event);
                XLEButton.this.updateImage();
                return handled;
            }
        });
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener listener) {
        if (this.disableSound) {
            super.setOnClickListener(listener);
        } else {
            super.setOnClickListener(TouchUtil.createOnClickListener(listener));
        }
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener listener) {
        if (this.disableSound) {
            super.setOnLongClickListener(listener);
        } else {
            super.setOnLongClickListener(TouchUtil.createOnLongClickListener(listener));
        }
    }

    public void setPressedStateRunnable(ButtonStateHandler.ButtonStateHandlerRunnable runnable) {
        this.stateHandler.setPressedStateRunnable(runnable);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        boolean loadedNewImage = false;
        if (hasSize()) {
            loadedNewImage = this.stateHandler.onSizeChanged(getWidth(), getHeight());
        }
        if (loadedNewImage) {
            updateImage();
        }
    }

    private boolean hasSize() {
        return getWidth() > 0 && getHeight() > 0;
    }

    protected void updateImage() {
        if (this.stateHandler.getImageDrawable() != null) {
            setBackgroundDrawable(this.stateHandler.getImageDrawable());
        }
    }

    protected void updateTextColor() {
        if (this.enabledTextColor != this.disabledTextColor) {
            setTextColor(this.stateHandler.getDisabled() ? this.disabledTextColor : this.enabledTextColor);
        }
    }
}
