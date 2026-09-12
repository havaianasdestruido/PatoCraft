package com.microsoft.onlineid.internal.ui;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AccountHeaderView {
    public static final float MarginLargeDip = 16.0f;
    public static final float MarginLogoDip = 9.3f;
    public static final float MarginMediumDip = 8.0f;
    public static final float SizeLogoDip = 32.0f;
    public static final int TextColorTitle = Color.rgb(88, 88, 88);
    public static final float TextSizeLargeSP = 16.0f;

    public static void applyStyle(Activity activity, CharSequence title) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            String baseTitle = title.toString();
            SpannableString titleSpan = new SpannableString(baseTitle);
            Typeface seguiSB = Fonts.SegoeUISemiBold.getTypeface(activity.getApplicationContext());
            titleSpan.setSpan(new CustomTypefaceSpan(seguiSB), 0, baseTitle.length(), 18);
            actionBar.setTitle(titleSpan);
            View home = activity.findViewById(R.id.home);
            home.setPadding(0, 0, 0, 0);
            int logoSizePixels = Dimensions.convertDipToPixels(32.0f, activity.getResources().getDisplayMetrics());
            ViewGroup.LayoutParams params = home.getLayoutParams();
            params.height = logoSizePixels;
            params.width = logoSizePixels;
        }
    }

    private static class CustomTypefaceSpan extends MetricAffectingSpan {
        private Typeface _typeface;

        public CustomTypefaceSpan(Typeface typeface) {
            this._typeface = typeface;
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint p) {
            p.setTypeface(this._typeface);
            p.setFlags(p.getFlags() | 128);
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint p) {
            p.setTypeface(this._typeface);
            p.setFlags(p.getFlags() | 128);
        }
    }
}
