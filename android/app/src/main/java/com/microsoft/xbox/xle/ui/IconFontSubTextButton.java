package com.microsoft.xbox.xle.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class IconFontSubTextButton extends LinearLayout {
    private FrameLayout iconFrameLayout;
    private CustomTypefaceTextView iconTextView;
    private CustomTypefaceTextView subtitleTextView;
    private CustomTypefaceTextView titleTextView;

    public IconFontSubTextButton(Context context) {
        this(context, null);
    }

    public IconFontSubTextButton(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IconFontSubTextButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        LayoutInflater inflater = LayoutInflater.from(context);
        inflater.inflate(R.layout.icon_font_subtext_button, (ViewGroup) this, true);
        this.iconTextView = (CustomTypefaceTextView) findViewById(R.id.icon_font_subtext_icon);
        this.iconFrameLayout = (FrameLayout) findViewById(R.id.icon_font_subtext_btn_icon_bg);
        this.titleTextView = (CustomTypefaceTextView) findViewById(R.id.icon_font_subtext_btn_title);
        this.subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.icon_font_subtext_btn_subtitle);
        TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("IconFontSubTextButton"));
        String iconUri = a.getString(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_icon_uri"));
        String title = a.getString(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_text_title"));
        String subtitle = a.getString(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_text_subtitle"));
        this.iconFrameLayout.setBackgroundColor(a.getColor(XLERValueHelper.getStyleableRValue("IconFontSubTextButton_icon_bg"), 0));
        a.recycle();
        XLEUtil.updateTextAndVisibilityIfNotNull(this.iconTextView, iconUri, 0);
        XLEUtil.updateTextAndVisibilityIfNotNull(this.titleTextView, title, 0);
        XLEUtil.updateTextAndVisibilityIfNotNull(this.subtitleTextView, subtitle, 0);
        setFocusable(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClickable(true);
        info.setClassName(Button.class.getName());
    }
}
