package com.microsoft.xbox.xle.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.LinearLayout;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLEUniversalImageView;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xboxtcui.R;
import java.net.URI;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ImageTitleSubtitleButton extends LinearLayout {
    private XLEUniversalImageView iconImageView;
    private CustomTypefaceTextView subtitleTextView;
    private CustomTypefaceTextView titleTextView;

    public ImageTitleSubtitleButton(Context context) {
        this(context, null);
    }

    public ImageTitleSubtitleButton(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ImageTitleSubtitleButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        LayoutInflater inflater = LayoutInflater.from(context);
        inflater.inflate(R.layout.image_title_subtitle_button, (ViewGroup) this, true);
        this.iconImageView = (XLEUniversalImageView) findViewById(R.id.image_title_subtitle_button_image);
        this.titleTextView = (CustomTypefaceTextView) findViewById(R.id.image_title_subtitle_button_title);
        this.subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.image_title_subtitle_button_subtitle);
        TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("ImageTitleSubtitleButton"));
        String iconUri = a.getString(XLERValueHelper.getStyleableRValue("ImageTitleSubtitleButton_image_uri"));
        String title = a.getString(XLERValueHelper.getStyleableRValue("ImageTitleSubtitleButton_text_title"));
        String subtitle = a.getString(XLERValueHelper.getStyleableRValue("ImageTitleSubtitleButton_text_subtitle"));
        a.recycle();
        setImageUri(iconUri);
        XLEUtil.updateTextAndVisibilityIfNotNull(this.titleTextView, title, 0);
        XLEUtil.updateTextAndVisibilityIfNotNull(this.subtitleTextView, subtitle, 0);
        setFocusable(true);
    }

    public void setImageUri(String iconUri) {
        if (!JavaUtil.isNullOrEmpty(iconUri)) {
            this.iconImageView.setImageURI2(URI.create(iconUri));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClickable(true);
        info.setClassName(Button.class.getName());
    }
}
