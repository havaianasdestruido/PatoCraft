package net.hockeyapp.android.views;

import android.content.Context;
import android.net.Uri;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import net.hockeyapp.android.utils.HockeyLog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AttachmentListView extends ViewGroup {
    private static final String TAG = "AttachmentListView";
    private int mLineHeight;

    public AttachmentListView(Context context) {
        super(context);
    }

    public AttachmentListView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ArrayList<Uri> getAttachments() {
        ArrayList<Uri> attachments = new ArrayList<>();
        for (int i = 0; i < getChildCount(); i++) {
            AttachmentView attachmentView = (AttachmentView) getChildAt(i);
            attachments.add(attachmentView.getAttachmentUri());
        }
        return attachments;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (View.MeasureSpec.getMode(widthMeasureSpec) == 0) {
            HockeyLog.debug(TAG, "Width is unspecified");
        }
        int width = View.MeasureSpec.getSize(widthMeasureSpec);
        int count = getChildCount();
        int height = 0;
        int line_height = 0;
        int xPos = getPaddingLeft();
        int yPos = getPaddingTop();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            AttachmentView attachmentView = (AttachmentView) child;
            height = attachmentView.getEffectiveMaxHeight() + attachmentView.getPaddingTop();
            if (child.getVisibility() != 8) {
                ViewGroup.LayoutParams lp = child.getLayoutParams();
                child.measure(View.MeasureSpec.makeMeasureSpec(width, ExploreByTouchHelper.INVALID_ID), View.MeasureSpec.makeMeasureSpec(height, ExploreByTouchHelper.INVALID_ID));
                int childWidth = child.getMeasuredWidth();
                line_height = Math.max(line_height, child.getMeasuredHeight() + lp.height);
                if (xPos + childWidth > width) {
                    xPos = getPaddingLeft();
                    yPos += line_height;
                }
                xPos += lp.width + childWidth;
            }
        }
        this.mLineHeight = line_height;
        if (View.MeasureSpec.getMode(heightMeasureSpec) == 0) {
            height = yPos + line_height + getPaddingBottom();
        } else if (View.MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE && yPos + line_height + getPaddingBottom() < height) {
            height = yPos + line_height + getPaddingBottom();
        }
        setMeasuredDimension(width, height);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(1, 1);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof ViewGroup.LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int count = getChildCount();
        int width = r - l;
        int xPos = getPaddingLeft();
        int yPos = getPaddingTop();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                child.invalidate();
                int childWidth = child.getMeasuredWidth();
                int childHeight = child.getMeasuredHeight();
                ViewGroup.LayoutParams lp = child.getLayoutParams();
                if (xPos + childWidth > width) {
                    xPos = getPaddingLeft();
                    yPos += this.mLineHeight;
                }
                child.layout(xPos, yPos, xPos + childWidth, yPos + childHeight);
                xPos += lp.width + childWidth + ((AttachmentView) child).getGap();
            }
        }
    }
}
