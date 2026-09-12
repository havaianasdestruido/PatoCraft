package net.hockeyapp.android;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import java.util.Locale;
import net.hockeyapp.android.listeners.DownloadFileListener;
import net.hockeyapp.android.objects.ErrorObject;
import net.hockeyapp.android.tasks.DownloadFileTask;
import net.hockeyapp.android.tasks.GetFileSizeTask;
import net.hockeyapp.android.utils.AsyncTaskUtils;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.Util;
import net.hockeyapp.android.utils.VersionHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UpdateActivity extends Activity implements UpdateActivityInterface, UpdateInfoListener, View.OnClickListener {
    private static final int DIALOG_ERROR_ID = 0;
    public static final String EXTRA_JSON = "json";
    public static final String EXTRA_URL = "url";
    private Context mContext;
    protected DownloadFileTask mDownloadTask;
    private ErrorObject mError;
    protected VersionHelper mVersionHelper;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("App Update");
        setContentView(getLayoutView());
        this.mContext = this;
        this.mVersionHelper = new VersionHelper(this, getIntent().getStringExtra(EXTRA_JSON), this);
        configureView();
        this.mDownloadTask = (DownloadFileTask) getLastNonConfigurationInstance();
        if (this.mDownloadTask != null) {
            this.mDownloadTask.attach(this);
        }
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        if (this.mDownloadTask != null) {
            this.mDownloadTask.detach();
        }
        return this.mDownloadTask;
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int id) {
        return onCreateDialog(id, null);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int id, Bundle args) {
        switch (id) {
            case 0:
                return new AlertDialog.Builder(this).setMessage("An error has occured").setCancelable(false).setTitle("Error").setIcon(R.drawable.ic_dialog_alert).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.UpdateActivity.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int id2) {
                        UpdateActivity.this.mError = null;
                        dialog.cancel();
                    }
                }).create();
            default:
                return null;
        }
    }

    @Override // android.app.Activity
    protected void onPrepareDialog(int id, Dialog dialog) {
        switch (id) {
            case 0:
                AlertDialog messageDialogError = (AlertDialog) dialog;
                if (this.mError != null) {
                    messageDialogError.setMessage(this.mError.getMessage());
                } else {
                    messageDialogError.setMessage("An unknown error has occured.");
                }
                break;
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        enableUpdateButton();
        if (permissions.length != 0 && grantResults.length != 0 && requestCode == 1) {
            if (grantResults[0] == 0) {
                prepareDownload();
                return;
            }
            HockeyLog.warn("User denied write permission, can't continue with updater task.");
            UpdateManagerListener listener = UpdateManager.getLastListener();
            if (listener != null) {
                listener.onUpdatePermissionsNotGranted();
            } else {
                new AlertDialog.Builder(this.mContext).setTitle(getString(R.string.hockeyapp_permission_update_title)).setMessage(getString(R.string.hockeyapp_permission_update_message)).setNegativeButton(getString(R.string.hockeyapp_permission_dialog_negative_button), (DialogInterface.OnClickListener) null).setPositiveButton(getString(R.string.hockeyapp_permission_dialog_positive_button), new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.UpdateActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        this.prepareDownload();
                    }
                }).create().show();
            }
        }
    }

    @Override // net.hockeyapp.android.UpdateInfoListener
    public int getCurrentVersionCode() {
        try {
            int currentVersionCode = getPackageManager().getPackageInfo(getPackageName(), 128).versionCode;
            return currentVersionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    @Override // net.hockeyapp.android.UpdateActivityInterface
    @SuppressLint({"InflateParams"})
    public View getLayoutView() {
        return getLayoutInflater().inflate(R.layout.hockeyapp_activity_update, (ViewGroup) null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        prepareDownload();
        v.setEnabled(false);
    }

    protected void configureView() {
        TextView nameLabel = (TextView) findViewById(R.id.label_title);
        nameLabel.setText(getAppName());
        nameLabel.setContentDescription(getAppName());
        final TextView versionLabel = (TextView) findViewById(R.id.label_version);
        final String versionString = "Version " + this.mVersionHelper.getVersionString();
        final String fileDate = this.mVersionHelper.getFileDateString();
        Object appSizeString = "Unknown size";
        long appSize = this.mVersionHelper.getFileSizeBytes();
        if (appSize >= 0) {
            appSizeString = String.format(Locale.US, "%.2f", Float.valueOf(appSize / 1048576.0f)) + " MB";
        } else {
            GetFileSizeTask task = new GetFileSizeTask(this, getIntent().getStringExtra("url"), new DownloadFileListener() { // from class: net.hockeyapp.android.UpdateActivity.3
                @Override // net.hockeyapp.android.listeners.DownloadFileListener
                public void downloadSuccessful(DownloadFileTask task2) {
                    if (task2 instanceof GetFileSizeTask) {
                        long appSize2 = ((GetFileSizeTask) task2).getSize();
                        String appSizeString2 = String.format(Locale.US, "%.2f", Float.valueOf(appSize2 / 1048576.0f)) + " MB";
                        versionLabel.setText(UpdateActivity.this.getString(R.string.hockeyapp_update_version_details_label, new Object[]{versionString, fileDate, appSizeString2}));
                        versionLabel.setContentDescription(versionLabel.getText());
                    }
                }
            });
            AsyncTaskUtils.execute(task);
        }
        versionLabel.setText(getString(R.string.hockeyapp_update_version_details_label, new Object[]{versionString, fileDate, appSizeString}));
        Button updateButton = (Button) findViewById(R.id.button_update);
        updateButton.setOnClickListener(this);
        WebView webView = (WebView) findViewById(R.id.web_update_details);
        webView.clearCache(true);
        webView.destroyDrawingCache();
        webView.loadDataWithBaseURL(Constants.BASE_URL, getReleaseNotes(), "text/html", "utf-8", null);
    }

    protected String getReleaseNotes() {
        return this.mVersionHelper.getReleaseNotes(false);
    }

    protected void startDownloadTask() {
        String url = getIntent().getStringExtra("url");
        startDownloadTask(url);
    }

    protected void startDownloadTask(String url) {
        createDownloadTask(url, new DownloadFileListener() { // from class: net.hockeyapp.android.UpdateActivity.4
            @Override // net.hockeyapp.android.listeners.DownloadFileListener
            public void downloadFailed(DownloadFileTask task, Boolean userWantsRetry) {
                if (userWantsRetry.booleanValue()) {
                    UpdateActivity.this.startDownloadTask();
                } else {
                    UpdateActivity.this.enableUpdateButton();
                }
            }

            @Override // net.hockeyapp.android.listeners.DownloadFileListener
            public void downloadSuccessful(DownloadFileTask task) {
                UpdateActivity.this.enableUpdateButton();
            }
        });
        AsyncTaskUtils.execute(this.mDownloadTask);
    }

    protected void createDownloadTask(String url, DownloadFileListener listener) {
        this.mDownloadTask = new DownloadFileTask(this, url, listener);
    }

    public void enableUpdateButton() {
        View updateButton = findViewById(R.id.button_update);
        updateButton.setEnabled(true);
    }

    public String getAppName() {
        try {
            PackageManager pm = getPackageManager();
            ApplicationInfo applicationInfo = pm.getApplicationInfo(getPackageName(), 0);
            return pm.getApplicationLabel(applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    private boolean isWriteExternalStorageSet(Context context) {
        int res = context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
        return res == 0;
    }

    @SuppressLint({"InlinedApi"})
    private boolean isUnknownSourcesChecked() {
        boolean z = true;
        try {
            if (Build.VERSION.SDK_INT >= 17 && Build.VERSION.SDK_INT < 21) {
                if (Settings.Global.getInt(getContentResolver(), "install_non_market_apps") != 1) {
                    z = false;
                }
            } else if (Settings.Secure.getInt(getContentResolver(), "install_non_market_apps") != 1) {
                z = false;
            }
        } catch (Settings.SettingNotFoundException e) {
        }
        return z;
    }

    protected void prepareDownload() {
        if (!Util.isConnectedToNetwork(this.mContext)) {
            this.mError = new ErrorObject();
            this.mError.setMessage(getString(R.string.hockeyapp_error_no_network_message));
            runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.UpdateActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    UpdateActivity.this.showDialog(0);
                }
            });
        } else {
            if (!isWriteExternalStorageSet(this.mContext)) {
                if (Build.VERSION.SDK_INT >= 23) {
                    requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
                    return;
                }
                this.mError = new ErrorObject();
                this.mError.setMessage("The permission to access the external storage permission is not set. Please contact the developer.");
                runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.UpdateActivity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        UpdateActivity.this.showDialog(0);
                    }
                });
                return;
            }
            if (!isUnknownSourcesChecked()) {
                this.mError = new ErrorObject();
                this.mError.setMessage("The installation from unknown sources is not enabled. Please check the device settings.");
                runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.UpdateActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        UpdateActivity.this.showDialog(0);
                    }
                });
                return;
            }
            startDownloadTask();
        }
    }
}
