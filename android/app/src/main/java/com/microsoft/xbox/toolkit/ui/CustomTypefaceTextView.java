package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CustomTypefaceTextView extends TextView {
    public CustomTypefaceTextView(Context context, String typeface) {
        super(context);
        applyCustomTypeface(context, typeface);
    }

    public CustomTypefaceTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        if (!isInEditMode()) {
            TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.CustomTypeface);
            String typeface = a.getString(R.styleable.CustomTypeface_typefaceSource);
            String uppercaseText = a.getString(R.styleable.CustomTypeface_uppercaseText);
            if (uppercaseText != null) {
                setText(uppercaseText.toUpperCase());
            }
            applyCustomTypeface(context, typeface);
            a.recycle();
        }
    }

    public CustomTypefaceTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        if (!isInEditMode()) {
            TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.CustomTypeface);
            String typeface = a.getString(R.styleable.CustomTypeface_typefaceSource);
            applyCustomTypeface(context, typeface);
            a.recycle();
        }
    }

    private void applyCustomTypeface(Context context, String typefaceSource) {
        if (typefaceSource != null) {
            Typeface tf = FontManager.Instance().getTypeface(getContext(), typefaceSource);
            setTypeface(tf);
        }
        setCursorVisible(false);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener l) {
        throw new UnsupportedOperationException("If you want CustomTypefaceTextView to be clickable, use XLEButton instead.");
    }

    @Override // android.view.View
    public void setClickable(boolean clickable) {
        if (clickable) {
            throw new UnsupportedOperationException("If you want CustomTypefaceTextView to be clickable, use XLEButton instead.");
        }
    }
}
