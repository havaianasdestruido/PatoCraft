package com.microsoft.xbox.toolkit.ui;

import android.view.View;
import android.widget.AdapterView;
import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TouchUtil {
    public static View.OnClickListener createOnClickListener(View.OnClickListener listener) {
        if (listener == null) {
            return null;
        }
        XLEAssert.assertNotNull("Original listener is null.", listener);
        return listener;
    }

    public static AdapterView.OnItemClickListener createOnItemClickListener(AdapterView.OnItemClickListener listener) {
        if (listener == null) {
            return null;
        }
        XLEAssert.assertNotNull("Original listener is null.", listener);
        return listener;
    }

    public static View.OnLongClickListener createOnLongClickListener(View.OnLongClickListener listener) {
        if (listener == null) {
            return null;
        }
        XLEAssert.assertNotNull("Original listener is null.", listener);
        return listener;
    }
}
