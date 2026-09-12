package net.hockeyapp.android.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.support.v4.view.GravityCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.microsoft.onlineid.ui.AddAccountActivity;
import java.io.File;
import net.hockeyapp.android.Constants;
import net.hockeyapp.android.R;
import net.hockeyapp.android.objects.FeedbackAttachment;
import net.hockeyapp.android.utils.ImageUtils;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@SuppressLint({"ViewConstructor"})
public class AttachmentView extends FrameLayout {
    private static final int IMAGES_PER_ROW_LANDSCAPE = 2;
    private static final int IMAGES_PER_ROW_PORTRAIT = 3;
    private final FeedbackAttachment mAttachment;
    private final Uri mAttachmentUri;
    private final Context mContext;
    private final String mFilename;
    private int mGap;
    private ImageView mImageView;
    private int mMaxHeightLandscape;
    private int mMaxHeightPortrait;
    private int mOrientation;
    private final ViewGroup mParent;
    private TextView mTextView;
    private int mWidthLandscape;
    private int mWidthPortrait;

    /* JADX WARN: Type inference failed for: r0v5, types: [net.hockeyapp.android.views.AttachmentView$1] */
    public AttachmentView(Context context, ViewGroup parent, Uri attachmentUri, boolean removable) {
        super(context);
        this.mContext = context;
        this.mParent = parent;
        this.mAttachment = null;
        this.mAttachmentUri = attachmentUri;
        this.mFilename = attachmentUri.getLastPathSegment();
        calculateDimensions(20);
        initializeView(context, removable);
        this.mTextView.setText(this.mFilename);
        this.mTextView.setContentDescription(this.mFilename);
        new AsyncTask<Void, Void, Bitmap>() { // from class: net.hockeyapp.android.views.AttachmentView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Void... args) {
                return AttachmentView.this.loadImageThumbnail();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                if (bitmap != null) {
                    AttachmentView.this.configureViewForThumbnail(bitmap, false);
                } else {
                    AttachmentView.this.configureViewForPlaceholder(false);
                }
            }
        }.execute(new Void[0]);
    }

    public AttachmentView(Context context, ViewGroup parent, FeedbackAttachment attachment, boolean removable) {
        super(context);
        this.mContext = context;
        this.mParent = parent;
        this.mAttachment = attachment;
        this.mAttachmentUri = Uri.fromFile(new File(Constants.getHockeyAppStorageDir(), attachment.getCacheId()));
        this.mFilename = attachment.getFilename();
        calculateDimensions(30);
        initializeView(context, removable);
        this.mOrientation = 0;
        this.mTextView.setText(R.string.hockeyapp_feedback_attachment_loading);
        this.mTextView.setContentDescription(this.mTextView.getText());
        configureViewForPlaceholder(false);
    }

    public FeedbackAttachment getAttachment() {
        return this.mAttachment;
    }

    public Uri getAttachmentUri() {
        return this.mAttachmentUri;
    }

    public int getWidthPortrait() {
        return this.mWidthPortrait;
    }

    public int getMaxHeightPortrait() {
        return this.mMaxHeightPortrait;
    }

    public int getWidthLandscape() {
        return this.mWidthLandscape;
    }

    public int getMaxHeightLandscape() {
        return this.mMaxHeightLandscape;
    }

    public int getGap() {
        return this.mGap;
    }

    public int getEffectiveMaxHeight() {
        return this.mOrientation == 1 ? this.mMaxHeightLandscape : this.mMaxHeightPortrait;
    }

    public void remove() {
        this.mParent.removeView(this);
    }

    public void setImage(Bitmap bitmap, int orientation) {
        this.mTextView.setText(this.mFilename);
        this.mOrientation = orientation;
        if (bitmap == null) {
            configureViewForPlaceholder(true);
        } else {
            configureViewForThumbnail(bitmap, true);
        }
    }

    public void signalImageLoadingError() {
        this.mTextView.setText(R.string.hockeyapp_feedback_attachment_error);
    }

    private void calculateDimensions(int marginDip) {
        DisplayMetrics metrics = getResources().getDisplayMetrics();
        this.mGap = Math.round(TypedValue.applyDimension(1, 10.0f, metrics));
        int layoutMargin = Math.round(TypedValue.applyDimension(1, marginDip, metrics));
        int displayWidth = metrics.widthPixels;
        int parentWidthPortrait = (displayWidth - (layoutMargin * 2)) - (this.mGap * 2);
        int parentWidthLandscape = (displayWidth - (layoutMargin * 2)) - this.mGap;
        this.mWidthPortrait = parentWidthPortrait / 3;
        this.mWidthLandscape = parentWidthLandscape / 2;
        this.mMaxHeightPortrait = this.mWidthPortrait * 2;
        this.mMaxHeightLandscape = this.mWidthLandscape;
    }

    private void initializeView(Context context, boolean removable) {
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        setPadding(0, this.mGap, 0, 0);
        this.mImageView = new ImageView(context);
        LinearLayout bottomView = new LinearLayout(context);
        bottomView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 80));
        bottomView.setGravity(GravityCompat.START);
        bottomView.setOrientation(1);
        bottomView.setBackgroundColor(Color.parseColor("#80262626"));
        this.mTextView = new TextView(context);
        this.mTextView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 17));
        this.mTextView.setGravity(17);
        this.mTextView.setTextColor(context.getResources().getColor(R.color.hockeyapp_text_white));
        this.mTextView.setSingleLine();
        this.mTextView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        if (removable) {
            ImageButton imageButton = new ImageButton(context);
            imageButton.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 80));
            imageButton.setAdjustViewBounds(true);
            imageButton.setImageDrawable(getSystemIcon("ic_menu_delete"));
            imageButton.setBackgroundResource(0);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: net.hockeyapp.android.views.AttachmentView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    AttachmentView.this.remove();
                }
            });
            bottomView.addView(imageButton);
        }
        bottomView.addView(this.mTextView);
        addView(this.mImageView);
        addView(bottomView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureViewForThumbnail(Bitmap bitmap, final boolean openOnClick) {
        int width = this.mOrientation == 1 ? this.mWidthLandscape : this.mWidthPortrait;
        int height = this.mOrientation == 1 ? this.mMaxHeightLandscape : this.mMaxHeightPortrait;
        this.mTextView.setMaxWidth(width);
        this.mTextView.setMinWidth(width);
        this.mImageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.mImageView.setAdjustViewBounds(true);
        this.mImageView.setMinimumWidth(width);
        this.mImageView.setMaxWidth(width);
        this.mImageView.setMaxHeight(height);
        this.mImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.mImageView.setImageBitmap(bitmap);
        this.mImageView.setOnClickListener(new View.OnClickListener() { // from class: net.hockeyapp.android.views.AttachmentView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (openOnClick) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setDataAndType(AttachmentView.this.mAttachmentUri, "image/*");
                    AttachmentView.this.mContext.startActivity(intent);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureViewForPlaceholder(final boolean openOnClick) {
        this.mTextView.setMaxWidth(this.mWidthPortrait);
        this.mTextView.setMinWidth(this.mWidthPortrait);
        this.mImageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.mImageView.setAdjustViewBounds(false);
        this.mImageView.setBackgroundColor(Color.parseColor("#eeeeee"));
        this.mImageView.setMinimumHeight((int) (this.mWidthPortrait * 1.2f));
        this.mImageView.setMinimumWidth(this.mWidthPortrait);
        this.mImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mImageView.setImageDrawable(getSystemIcon("ic_menu_attachment"));
        this.mImageView.setOnClickListener(new View.OnClickListener() { // from class: net.hockeyapp.android.views.AttachmentView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (openOnClick) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setDataAndType(AttachmentView.this.mAttachmentUri, "*/*");
                    AttachmentView.this.mContext.startActivity(intent);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap loadImageThumbnail() {
        try {
            this.mOrientation = ImageUtils.determineOrientation(this.mContext, this.mAttachmentUri);
            int width = this.mOrientation == 1 ? this.mWidthLandscape : this.mWidthPortrait;
            int height = this.mOrientation == 1 ? this.mMaxHeightLandscape : this.mMaxHeightPortrait;
            return ImageUtils.decodeSampledBitmap(this.mContext, this.mAttachmentUri, width, height);
        } catch (Throwable th) {
            return null;
        }
    }

    private Drawable getSystemIcon(String name) {
        return Build.VERSION.SDK_INT >= 21 ? getResources().getDrawable(getResources().getIdentifier(name, "drawable", AddAccountActivity.PlatformName), this.mContext.getTheme()) : getResources().getDrawable(getResources().getIdentifier(name, "drawable", AddAccountActivity.PlatformName));
    }
}
