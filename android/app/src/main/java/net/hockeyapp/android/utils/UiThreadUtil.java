package net.hockeyapp.android.utils;

import android.app.Activity;
import android.app.ProgressDialog;
import android.widget.Toast;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UiThreadUtil {
    private UiThreadUtil() {
    }

    private static class WbUtilHolder {
        public static final UiThreadUtil INSTANCE = new UiThreadUtil();

        private WbUtilHolder() {
        }
    }

    public static UiThreadUtil getInstance() {
        return WbUtilHolder.INSTANCE;
    }

    public void dismissLoadingDialogAndDisplayError(WeakReference<Activity> weakActivity, final ProgressDialog progressDialog, final int errorDialogId) {
        final Activity activity;
        if (weakActivity != null && (activity = weakActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.utils.UiThreadUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    if (progressDialog != null && progressDialog.isShowing()) {
                        progressDialog.dismiss();
                    }
                    activity.showDialog(errorDialogId);
                }
            });
        }
    }

    public void dismissLoading(WeakReference<Activity> weakActivity, final ProgressDialog progressDialog) {
        Activity activity;
        if (weakActivity != null && (activity = weakActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.utils.UiThreadUtil.2
                @Override // java.lang.Runnable
                public void run() {
                    if (progressDialog != null && progressDialog.isShowing()) {
                        progressDialog.dismiss();
                    }
                }
            });
        }
    }

    public void displayToastMessage(WeakReference<Activity> weakActivity, final String message, final int flags) {
        final Activity activity;
        if (weakActivity != null && (activity = weakActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.utils.UiThreadUtil.3
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(activity, message, flags).show();
                }
            });
        }
    }
}
