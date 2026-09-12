package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import java.net.URI;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEImageViewFast extends XLEImageView {
    private TextureBindingOption option;
    protected int pendingBitmapResourceId;
    private String pendingFilePath;
    protected URI pendingUri;
    private boolean useFileCache;

    public XLEImageViewFast(Context context) {
        super(context);
        this.pendingBitmapResourceId = -1;
        this.pendingUri = null;
        this.pendingFilePath = null;
        this.useFileCache = true;
        setSoundEffectsEnabled(false);
    }

    public XLEImageViewFast(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.pendingBitmapResourceId = -1;
        this.pendingUri = null;
        this.pendingFilePath = null;
        this.useFileCache = true;
        if (!isInEditMode()) {
            TypedArray a = context.obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("XLEImageViewFast"));
            setImageResource(a.getResourceId(XLERValueHelper.getStyleableRValue("XLEImageViewFast_src"), -1));
            a.recycle();
            setSoundEffectsEnabled(false);
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int resourceId) {
        if (hasSize()) {
            bindToResourceId(resourceId);
        } else {
            this.pendingBitmapResourceId = resourceId;
        }
    }

    public void setImageURI2(URI uri) {
        if (hasSize()) {
            bindToUri(uri);
        } else {
            this.pendingUri = uri;
        }
    }

    public void setImageURI2(URI uri, boolean useFilaCache) {
        this.useFileCache = useFilaCache;
        this.option = new TextureBindingOption(getWidth(), getHeight(), this.useFileCache);
        if (hasSize()) {
            bindToUri(uri, this.option);
        } else {
            this.pendingUri = uri;
        }
    }

    public void setImageURI2(URI uri, int loadingResourceId, int errorResourceId) {
        this.option = new TextureBindingOption(getWidth(), getHeight(), loadingResourceId, errorResourceId, this.useFileCache);
        if (hasSize()) {
            bindToUri(uri, this.option);
        } else {
            this.pendingUri = uri;
        }
    }

    public void setImageFilePath(String filePath) {
        if (hasSize()) {
            bindToFilePath(filePath);
        } else {
            this.pendingFilePath = filePath;
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        throw new UnsupportedOperationException();
    }

    protected boolean hasSize() {
        return getWidth() > 0 && getHeight() > 0;
    }

    private void bindToResourceId(int resourceId) {
        this.pendingBitmapResourceId = -1;
        TextureManager.Instance().bindToView(resourceId, this, getWidth(), getHeight());
    }

    protected void bindToUri(URI uri) {
        this.pendingUri = null;
        bindToUri(uri, new TextureBindingOption(getWidth(), getHeight(), this.useFileCache));
    }

    private void bindToUri(URI uri, TextureBindingOption option) {
        this.pendingUri = null;
        this.option = null;
        TextureManager.Instance().bindToView(uri, this, option);
    }

    private void bindToFilePath(String filePath) {
        this.pendingFilePath = null;
        TextureManager.Instance().bindToViewFromFile(filePath, this, getWidth(), getHeight());
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = resolveSize(0, widthMeasureSpec);
        int height = resolveSize(0, heightMeasureSpec);
        setMeasuredDimension(width, height);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (hasSize()) {
            if (this.pendingBitmapResourceId >= 0) {
                bindToResourceId(this.pendingBitmapResourceId);
            }
            if (this.pendingUri != null || (this.pendingUri == null && this.option != null)) {
                if (this.option != null) {
                    TextureBindingOption opt = new TextureBindingOption(getWidth(), getHeight(), this.option.resourceIdForLoading, this.option.resourceIdForError, this.option.useFileCache);
                    bindToUri(this.pendingUri, opt);
                } else {
                    bindToUri(this.pendingUri);
                }
            }
            if (this.pendingFilePath != null) {
                bindToFilePath(this.pendingFilePath);
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.ui.XLEImageView, android.view.View
    public void setOnClickListener(View.OnClickListener listener) {
        super.setOnClickListener(TouchUtil.createOnClickListener(listener));
    }
}
