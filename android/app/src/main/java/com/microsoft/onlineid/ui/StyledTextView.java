package com.microsoft.onlineid.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.microsoft.onlineid.internal.ui.Fonts;
import com.microsoft.onlineid.sdk.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StyledTextView extends TextView {
    public StyledTextView(Context context, AttributeSet attributes, int defStyle) {
        super(context, attributes, defStyle);
        applyAttributes(context, attributes);
    }

    public StyledTextView(Context context, AttributeSet attributes) {
        super(context, attributes);
        applyAttributes(context, attributes);
    }

    public StyledTextView(Context context) {
        super(context);
    }

    private void applyAttributes(Context context, AttributeSet attributes) {
        String fontName;
        Resources.Theme theme = context.getTheme();
        TypedArray styleAttributes = theme.obtainStyledAttributes(attributes, R.styleable.StyledTextView, 0, 0);
        for (int idx = 0; idx < styleAttributes.getIndexCount(); idx++) {
            int attr = styleAttributes.getIndex(idx);
            if (attr == R.styleable.StyledTextView_font) {
                if (!isInEditMode() && (fontName = styleAttributes.getString(attr)) != null) {
                    Typeface tf = Fonts.valueOf(fontName).getTypeface(context);
                    setTypeface(tf);
                }
            } else if (attr == R.styleable.StyledTextView_isUnderlined) {
                boolean isUnderlined = styleAttributes.getBoolean(attr, false);
                if (isUnderlined) {
                    setPaintFlags(getPaintFlags() | 8);
                } else {
                    setPaintFlags(getPaintFlags() & (-9));
                }
            }
        }
        styleAttributes.recycle();
    }
}
