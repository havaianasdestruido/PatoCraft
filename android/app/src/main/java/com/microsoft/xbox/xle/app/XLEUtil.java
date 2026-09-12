package com.microsoft.xbox.xle.app;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEUtil {
    public static void updateAndShowTextViewUnlessEmpty(TextView textView, CharSequence text) {
        if (textView != null) {
            if (text != null && text.length() > 0) {
                textView.setText(text);
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
    }

    public static void updateTextAndVisibilityIfNotNull(TextView textView, CharSequence text, int visibility) {
        if (textView != null) {
            textView.setText(text);
            textView.setVisibility(visibility);
        }
    }

    public static void updateVisibilityIfNotNull(View view, int visibility) {
        if (view != null) {
            view.setVisibility(visibility);
        }
    }

    public static void showKeyboard(final View view, int delayMS) {
        ThreadManager.UIThreadPostDelayed(new Runnable() { // from class: com.microsoft.xbox.xle.app.XLEUtil.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager imm = (InputMethodManager) XboxTcuiSdk.getSystemService("input_method");
                imm.showSoftInput(view, 1);
            }
        }, delayMS);
    }

    public static <T> boolean isNullOrEmpty(Iterable<T> collection) {
        return collection == null || !collection.iterator().hasNext();
    }

    public static <T> boolean isNullOrEmpty(T[] array) {
        return array == null || array.length == 0;
    }

    public static boolean shouldRefresh(Date lastRefreshTime, long lifetime) {
        if (lastRefreshTime == null) {
            return true;
        }
        Date currentTime = new Date();
        long diff = currentTime.getTime() - lastRefreshTime.getTime();
        return diff > lifetime;
    }

    public static void showOkCancelDialog(String title, String promptText, String okText, Runnable okHandler, String cancelText, Runnable cancelHandler) {
        XLEAssert.assertNotNull("You must supply cancel text if this is not a must-act dialog.", cancelText);
        DialogManager.getInstance().showOkCancelDialog(title, promptText, okText, okHandler, cancelText, cancelHandler);
    }
}
