package net.hockeyapp.android.tasks;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import net.hockeyapp.android.R;
import net.hockeyapp.android.UpdateActivity;
import net.hockeyapp.android.UpdateFragment;
import net.hockeyapp.android.UpdateManagerListener;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.Util;
import net.hockeyapp.android.utils.VersionCache;
import org.json.JSONArray;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CheckUpdateTaskWithUI extends CheckUpdateTask {
    private Activity mActivity;
    private AlertDialog mDialog;
    protected boolean mIsDialogRequired;

    public CheckUpdateTaskWithUI(WeakReference<Activity> weakActivity, String urlString, String appIdentifier, UpdateManagerListener listener, boolean isDialogRequired) {
        super(weakActivity, urlString, appIdentifier, listener);
        this.mActivity = null;
        this.mDialog = null;
        this.mIsDialogRequired = false;
        if (weakActivity != null) {
            this.mActivity = weakActivity.get();
        }
        this.mIsDialogRequired = isDialogRequired;
    }

    @Override // net.hockeyapp.android.tasks.CheckUpdateTask
    public void detach() {
        super.detach();
        this.mActivity = null;
        if (this.mDialog != null) {
            this.mDialog.dismiss();
            this.mDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.hockeyapp.android.tasks.CheckUpdateTask, android.os.AsyncTask
    public void onPostExecute(JSONArray updateInfo) {
        super.onPostExecute(updateInfo);
        if (updateInfo != null && this.mIsDialogRequired) {
            showDialog(updateInfo);
        }
    }

    @TargetApi(11)
    private void showDialog(final JSONArray updateInfo) {
        if (getCachingEnabled()) {
            HockeyLog.verbose("HockeyUpdate", "Caching is enabled. Setting version to cached one.");
            VersionCache.setVersionInfo(this.mActivity, updateInfo.toString());
        }
        if (this.mActivity != null && !this.mActivity.isFinishing()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
            builder.setTitle(R.string.hockeyapp_update_dialog_title);
            if (!this.mandatory.booleanValue()) {
                builder.setMessage(R.string.hockeyapp_update_dialog_message);
                builder.setNegativeButton(R.string.hockeyapp_update_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.tasks.CheckUpdateTaskWithUI.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        CheckUpdateTaskWithUI.this.cleanUp();
                        if (CheckUpdateTaskWithUI.this.listener != null) {
                            CheckUpdateTaskWithUI.this.listener.onCancel();
                        }
                    }
                });
                builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: net.hockeyapp.android.tasks.CheckUpdateTaskWithUI.2
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialog) {
                        CheckUpdateTaskWithUI.this.cleanUp();
                        if (CheckUpdateTaskWithUI.this.listener != null) {
                            CheckUpdateTaskWithUI.this.listener.onCancel();
                        }
                    }
                });
                builder.setPositiveButton(R.string.hockeyapp_update_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.tasks.CheckUpdateTaskWithUI.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        if (CheckUpdateTaskWithUI.this.getCachingEnabled()) {
                            VersionCache.setVersionInfo(CheckUpdateTaskWithUI.this.mActivity, "[]");
                        }
                        WeakReference<Activity> weakActivity = new WeakReference<>(CheckUpdateTaskWithUI.this.mActivity);
                        if (!Util.fragmentsSupported().booleanValue() || !Util.runsOnTablet(weakActivity).booleanValue()) {
                            CheckUpdateTaskWithUI.this.startUpdateIntent(updateInfo, false);
                        } else {
                            CheckUpdateTaskWithUI.this.showUpdateFragment(updateInfo);
                        }
                    }
                });
                this.mDialog = builder.create();
                this.mDialog.show();
                return;
            }
            String appName = Util.getAppName(this.mActivity);
            String toast = String.format(this.mActivity.getString(R.string.hockeyapp_update_mandatory_toast), appName);
            Toast.makeText(this.mActivity, toast, 1).show();
            startUpdateIntent(updateInfo, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public void showUpdateFragment(JSONArray updateInfo) {
        if (this.mActivity != null) {
            FragmentTransaction fragmentTransaction = this.mActivity.getFragmentManager().beginTransaction();
            fragmentTransaction.setTransition(android.support.v4.app.FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            Fragment existingFragment = this.mActivity.getFragmentManager().findFragmentByTag("hockey_update_dialog");
            if (existingFragment != null) {
                fragmentTransaction.remove(existingFragment);
            }
            fragmentTransaction.addToBackStack(null);
            Class<? extends UpdateFragment> fragmentClass = UpdateFragment.class;
            if (this.listener != null) {
                fragmentClass = this.listener.getUpdateFragmentClass();
            }
            try {
                Method method = fragmentClass.getMethod("newInstance", JSONArray.class, String.class);
                DialogFragment updateFragment = (DialogFragment) method.invoke(null, updateInfo, getURLString("apk"));
                updateFragment.show(fragmentTransaction, "hockey_update_dialog");
            } catch (Exception e) {
                HockeyLog.error("An exception happened while showing the update fragment:");
                e.printStackTrace();
                HockeyLog.error("Showing update activity instead.");
                startUpdateIntent(updateInfo, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startUpdateIntent(JSONArray updateInfo, Boolean finish) {
        Class<?> activityClass = null;
        if (this.listener != null) {
            activityClass = this.listener.getUpdateActivityClass();
        }
        if (activityClass == null) {
            activityClass = UpdateActivity.class;
        }
        if (this.mActivity != null) {
            Intent intent = new Intent();
            intent.setClass(this.mActivity, activityClass);
            intent.putExtra(UpdateActivity.EXTRA_JSON, updateInfo.toString());
            intent.putExtra("url", getURLString("apk"));
            this.mActivity.startActivity(intent);
            if (finish.booleanValue()) {
                this.mActivity.finish();
            }
        }
        cleanUp();
    }

    @Override // net.hockeyapp.android.tasks.CheckUpdateTask
    protected void cleanUp() {
        super.cleanUp();
        this.mActivity = null;
        this.mDialog = null;
    }
}
