package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.ExploreByTouchHelper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEUniversalImageView extends XLEImageView {
    private static final int JELLY_BEAN_MR1 = 17;
    private static final String TAG = XLEUniversalImageView.class.getSimpleName();
    private boolean adjustViewBounds;
    private Params arg;
    private final View.OnLayoutChangeListener listener;
    private int maxHeight;
    private int maxWidth;

    public XLEUniversalImageView(Context context) {
        this(context, new Params());
    }

    public XLEUniversalImageView(Context context, Params params) {
        super(context);
        this.listener = new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                int width = right - left;
                int height = bottom - top;
                if ((width != oldRight - oldLeft || height != oldBottom - oldTop) && XLEUniversalImageView.this.arg.hasText()) {
                    XLETextTask t = new XLETextTask(XLEUniversalImageView.this);
                    t.execute(XLEUniversalImageView.this.arg.getArgText());
                }
            }
        };
        setMaxWidth(Integer.MAX_VALUE);
        setMaxHeight(Integer.MAX_VALUE);
        this.arg = params;
    }

    public XLEUniversalImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.listener = new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                int width = right - left;
                int height = bottom - top;
                if ((width != oldRight - oldLeft || height != oldBottom - oldTop) && XLEUniversalImageView.this.arg.hasText()) {
                    XLETextTask t = new XLETextTask(XLEUniversalImageView.this);
                    t.execute(XLEUniversalImageView.this.arg.getArgText());
                }
            }
        };
        this.arg = initializeAttributes(context, attrs, 0);
        updateImage();
    }

    public XLEUniversalImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.listener = new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                int width = right - left;
                int height = bottom - top;
                if ((width != oldRight - oldLeft || height != oldBottom - oldTop) && XLEUniversalImageView.this.arg.hasText()) {
                    XLETextTask t = new XLETextTask(XLEUniversalImageView.this);
                    t.execute(XLEUniversalImageView.this.arg.getArgText());
                }
            }
        };
        this.arg = initializeAttributes(context, attrs, defStyle);
        updateImage();
    }

    public void setText(String text) {
        if (TextUtils.equals(text, this.arg.getArgText().getText())) {
            return;
        }
        this.arg = this.arg.cloneWithText(text);
        updateImage();
    }

    public void setText(int resId) {
        setText(getResources().getString(resId));
    }

    public void setImageURI2(URI uri, int loadingResourceId, int errorResourceId) {
        this.arg = this.arg.cloneWithUri(uri, loadingResourceId, errorResourceId);
        updateImage();
    }

    public void setImageURI2(URI uri) {
        this.arg = this.arg.cloneWithUri(uri);
        updateImage();
    }

    public void clearImage() {
        this.arg = this.arg.cloneEmpty();
        updateImage();
    }

    private void updateImage() {
        if (this.arg.hasText()) {
            XLETextTask t = new XLETextTask(this);
            t.execute(this.arg.getArgText());
        } else if (this.arg.hasArgUri()) {
            TextureManager.Instance().bindToView(this.arg.getArgUri().getUri(), this, this.arg.getArgUri().getTextureBindingOption());
        } else if (!this.arg.hasSrc()) {
            setImageDrawable(null);
        }
    }

    private Params initializeAttributes(Context context, AttributeSet attrs, int defStyle) {
        Params params;
        TypedArray a = context.getTheme().obtainStyledAttributes(attrs, XLERValueHelper.getStyleableRValueArray("XLEUniversalImageView"), defStyle, 0);
        try {
            float scaledDensity = context.getResources().getDisplayMetrics().scaledDensity;
            float textSize = a.getDimension(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_textSize"), 8.0f * scaledDensity);
            int color = a.getColor(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_textColor"), 0);
            int typefaceIndex = a.getInt(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_typeface"), -1);
            int styleIndex = a.getInt(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_textStyle"), 0);
            String typefaceSource = a.getString(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_typefaceSource"));
            Typeface typeface = typefaceSource == null ? Typeface.create(TypefaceXml.typefaceFromIndex(typefaceIndex), styleIndex) : FontManager.Instance().getTypeface(context, typefaceSource);
            int eraseColor = a.getColor(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_eraseColor"), 0);
            boolean adjustForImageSize = a.getBoolean(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_adjustForImageSize"), false);
            boolean hasSrc = a.hasValue(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_src"));
            Float textAspectRatio = null;
            if (a.hasValue(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_textAspectRatio"))) {
                textAspectRatio = Float.valueOf(a.getFloat(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_textAspectRatio"), 0.0f));
            }
            XLETextArg.Params textParams = new XLETextArg.Params(textSize, color, typeface, eraseColor, adjustForImageSize, textAspectRatio);
            String str = a.getString(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_text"));
            if (str != null) {
                params = new Params(new XLETextArg(str, textParams), false);
            } else {
                String str2 = a.getString(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_uri"));
                if (str2 != null) {
                    try {
                        params = new Params(new XLETextArg(textParams), new XLEURIArg(new URI(str2)));
                    } catch (URISyntaxException e) {
                        String msg = "Error parsing URI '" + str2 + "'";
                        throw new RuntimeException(msg, e);
                    }
                } else {
                    params = new Params(new XLETextArg(textParams), hasSrc);
                }
            }
            if (adjustForImageSize) {
                addOnLayoutChangeListener(this.listener);
            }
            a.recycle();
            return params;
        } catch (Throwable th) {
            a.recycle();
            throw th;
        }
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int maxWidth) {
        super.setMaxWidth(maxWidth);
        this.maxWidth = maxWidth;
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int maxHeight) {
        super.setMaxHeight(maxHeight);
        this.maxHeight = maxHeight;
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean adjustViewBounds) {
        this.adjustViewBounds = adjustViewBounds;
        super.setAdjustViewBounds(adjustViewBounds);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int w;
        int h;
        int widthSize;
        int heightSize;
        float desiredAspect = 0.0f;
        boolean resizeWidth = false;
        boolean resizeHeight = false;
        int widthSpecMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int heightSpecMode = View.MeasureSpec.getMode(heightMeasureSpec);
        Drawable drawable = getDrawable();
        if (drawable == null) {
            h = 0;
            w = 0;
        } else {
            w = drawable.getIntrinsicWidth();
            h = drawable.getIntrinsicHeight();
            if (w <= 0) {
                w = 1;
            }
            if (h <= 0) {
                h = 1;
            }
            if (this.adjustViewBounds) {
                resizeWidth = widthSpecMode != 1073741824;
                resizeHeight = heightSpecMode != 1073741824;
                int actualWidth = View.MeasureSpec.getSize(widthMeasureSpec);
                int actualHeight = View.MeasureSpec.getSize(heightMeasureSpec);
                if (actualWidth > actualHeight) {
                    h = (actualWidth * h) / w;
                    w = actualWidth;
                } else {
                    w = (actualHeight * w) / h;
                    h = actualHeight;
                }
                desiredAspect = w / h;
            }
        }
        int pleft = getPaddingLeft();
        int pright = getPaddingRight();
        int ptop = getPaddingTop();
        int pbottom = getPaddingBottom();
        boolean adjustViewBoundsCompat = getContext().getApplicationInfo().targetSdkVersion <= 17;
        if (resizeWidth || resizeHeight) {
            widthSize = resolveAdjustedSize(w + pleft + pright, this.maxWidth, widthMeasureSpec);
            heightSize = resolveAdjustedSize(h + ptop + pbottom, this.maxHeight, heightMeasureSpec);
            if (desiredAspect != 0.0f) {
                float actualAspect = ((widthSize - pleft) - pright) / ((heightSize - ptop) - pbottom);
                if (Math.abs(actualAspect - desiredAspect) > 1.0E-7d) {
                    boolean done = false;
                    if (resizeWidth) {
                        int newWidth = ((int) (((heightSize - ptop) - pbottom) * desiredAspect)) + pleft + pright;
                        if (!resizeHeight && !adjustViewBoundsCompat) {
                            widthSize = resolveAdjustedSize(newWidth, this.maxWidth, widthMeasureSpec);
                        }
                        if (newWidth <= widthSize) {
                            widthSize = newWidth;
                            done = true;
                        }
                    }
                    if (!done && resizeHeight) {
                        int newHeight = ((int) (((widthSize - pleft) - pright) / desiredAspect)) + ptop + pbottom;
                        if (!resizeWidth && !adjustViewBoundsCompat) {
                            heightSize = resolveAdjustedSize(newHeight, this.maxHeight, heightMeasureSpec);
                        }
                        if (newHeight <= heightSize) {
                            heightSize = newHeight;
                        }
                    }
                }
            }
        } else {
            int w2 = Math.max(w + pleft + pright, getSuggestedMinimumWidth());
            int h2 = Math.max(h + ptop + pbottom, getSuggestedMinimumHeight());
            widthSize = resolveSizeAndState(w2, widthMeasureSpec, 0);
            heightSize = resolveSizeAndState(h2, heightMeasureSpec, 0);
        }
        setMeasuredDimension(widthSize, heightSize);
    }

    private int resolveAdjustedSize(int desiredSize, int maxSize, int measureSpec) {
        int specMode = View.MeasureSpec.getMode(measureSpec);
        int specSize = View.MeasureSpec.getSize(measureSpec);
        switch (specMode) {
            case ExploreByTouchHelper.INVALID_ID /* -2147483648 */:
                int result = Math.min(Math.min(desiredSize, specSize), maxSize);
                return result;
            case 0:
                int result2 = Math.min(desiredSize, maxSize);
                return result2;
            case 1073741824:
                return specSize;
            default:
                return desiredSize;
        }
    }

    public static class Params {
        private final XLETextArg argText;
        private final XLEURIArg argUri;
        private final boolean hasSrc;

        public Params() {
            this(new XLETextArg(new XLETextArg.Params()), null, false);
        }

        public Params(XLETextArg argText, boolean hasSrc) {
            this(argText, null, hasSrc);
        }

        public Params(XLETextArg argText, XLEURIArg argUri) {
            this(argText, argUri, false);
        }

        private Params(XLETextArg argText, XLEURIArg argUri, boolean hasSrc) {
            this.argText = argText;
            this.argUri = argUri;
            this.hasSrc = hasSrc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Params cloneWithText(String text) {
            return new Params(new XLETextArg(text, this.argText.getParams()), null, this.hasSrc);
        }

        public Params cloneWithUri(URI uri, int loadingResourceId, int errorResourceId) {
            return new Params(new XLETextArg(this.argText.getParams()), new XLEURIArg(uri, loadingResourceId, errorResourceId), this.hasSrc);
        }

        public Params cloneWithUri(URI uri) {
            int loadingResourceId = this.argUri == null ? -1 : this.argUri.getLoadingResourceId();
            int errorResourceId = this.argUri == null ? -1 : this.argUri.getErrorResourceId();
            return cloneWithUri(uri, loadingResourceId, errorResourceId);
        }

        public Params cloneWithSrc(boolean hasSrc) {
            return new Params(new XLETextArg(this.argText.getParams()), null, hasSrc);
        }

        public Params cloneEmpty() {
            return new Params(new XLETextArg(this.argText.getParams()), null, false);
        }

        public XLETextArg getArgText() {
            return this.argText;
        }

        public boolean hasText() {
            return this.argText.hasText();
        }

        public XLEURIArg getArgUri() {
            return this.argUri;
        }

        public boolean hasArgUri() {
            return this.argUri != null;
        }

        public boolean hasSrc() {
            return this.hasSrc;
        }
    }

    public enum TypefaceXml {
        NORMAL,
        SANS,
        SERIF,
        MONOSPACE;

        public static TypefaceXml fromIndex(int typefaceIndex) {
            TypefaceXml[] vals = values();
            if (typefaceIndex < 0 || typefaceIndex >= vals.length) {
                return null;
            }
            return vals[typefaceIndex];
        }

        public static Typeface typefaceFromIndex(int typefaceIndex) {
            TypefaceXml tfx = fromIndex(typefaceIndex);
            if (tfx == null) {
                return null;
            }
            switch (tfx) {
                case NORMAL:
                default:
                    return null;
                case SANS:
                    return Typeface.SANS_SERIF;
                case SERIF:
                    return Typeface.SERIF;
                case MONOSPACE:
                    return Typeface.MONOSPACE;
            }
        }
    }
}
