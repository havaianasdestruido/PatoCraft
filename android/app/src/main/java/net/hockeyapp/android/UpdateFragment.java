package net.hockeyapp.android;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Locale;
import net.hockeyapp.android.listeners.DownloadFileListener;
import net.hockeyapp.android.tasks.DownloadFileTask;
import net.hockeyapp.android.tasks.GetFileSizeTask;
import net.hockeyapp.android.utils.AsyncTaskUtils;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.VersionHelper;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@TargetApi(11)
public class UpdateFragment extends DialogFragment implements View.OnClickListener, UpdateInfoListener {
    public static final String FRAGMENT_URL = "url";
    public static final String FRAGMENT_VERSION_INFO = "versionInfo";
    private DownloadFileTask mDownloadTask;
    private String mUrlString;
    private VersionHelper mVersionHelper;
    private JSONArray mVersionInfo;

    public static UpdateFragment newInstance(JSONArray versionInfo, String urlString) {
        Bundle arguments = new Bundle();
        arguments.putString("url", urlString);
        arguments.putString(FRAGMENT_VERSION_INFO, versionInfo.toString());
        UpdateFragment fragment = new UpdateFragment();
        fragment.setArguments(arguments);
        return fragment;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            this.mUrlString = getArguments().getString("url");
            this.mVersionInfo = new JSONArray(getArguments().getString(FRAGMENT_VERSION_INFO));
            setStyle(1, R.style.Theme.Holo.Light.Dialog);
        } catch (JSONException e) {
            dismiss();
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = getLayoutView();
        this.mVersionHelper = new VersionHelper(getActivity(), this.mVersionInfo.toString(), this);
        TextView nameLabel = (TextView) view.findViewById(R.id.label_title);
        nameLabel.setText(getAppName());
        final TextView versionLabel = (TextView) view.findViewById(R.id.label_version);
        final String versionString = "Version " + this.mVersionHelper.getVersionString();
        final String fileDate = this.mVersionHelper.getFileDateString();
        Object appSizeString = "Unknown size";
        long appSize = this.mVersionHelper.getFileSizeBytes();
        if (appSize >= 0) {
            appSizeString = String.format(Locale.US, "%.2f", Float.valueOf(appSize / 1048576.0f)) + " MB";
        } else {
            GetFileSizeTask task = new GetFileSizeTask(getActivity(), this.mUrlString, new DownloadFileListener() { // from class: net.hockeyapp.android.UpdateFragment.1
                @Override // net.hockeyapp.android.listeners.DownloadFileListener
                public void downloadSuccessful(DownloadFileTask task2) {
                    if (task2 instanceof GetFileSizeTask) {
                        long appSize2 = ((GetFileSizeTask) task2).getSize();
                        String appSizeString2 = String.format(Locale.US, "%.2f", Float.valueOf(appSize2 / 1048576.0f)) + " MB";
                        versionLabel.setText(UpdateFragment.this.getString(R.string.hockeyapp_update_version_details_label, new Object[]{versionString, fileDate, appSizeString2}));
                    }
                }
            });
            AsyncTaskUtils.execute(task);
        }
        versionLabel.setText(getString(R.string.hockeyapp_update_version_details_label, new Object[]{versionString, fileDate, appSizeString}));
        Button updateButton = (Button) view.findViewById(R.id.button_update);
        updateButton.setOnClickListener(this);
        WebView webView = (WebView) view.findViewById(R.id.web_update_details);
        webView.clearCache(true);
        webView.destroyDrawingCache();
        webView.loadDataWithBaseURL(Constants.BASE_URL, this.mVersionHelper.getReleaseNotes(false), "text/html", "utf-8", null);
        return view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        prepareDownload();
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (permissions.length != 0 && grantResults.length != 0 && requestCode == 1) {
            if (grantResults[0] == 0) {
                startDownloadTask(getActivity());
                return;
            }
            HockeyLog.warn("User denied write permission, can't continue with updater task.");
            UpdateManagerListener listener = UpdateManager.getLastListener();
            if (listener != null) {
                listener.onUpdatePermissionsNotGranted();
            } else {
                new AlertDialog.Builder(getActivity()).setTitle(getString(R.string.hockeyapp_permission_update_title)).setMessage(getString(R.string.hockeyapp_permission_update_message)).setNegativeButton(getString(R.string.hockeyapp_permission_dialog_negative_button), (DialogInterface.OnClickListener) null).setPositiveButton(getString(R.string.hockeyapp_permission_dialog_positive_button), new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.UpdateFragment.2
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
            int currentVersionCode = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 128).versionCode;
            return currentVersionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        } catch (NullPointerException e2) {
            return -1;
        }
    }

    public void prepareDownload() {
        if (Build.VERSION.SDK_INT >= 23 && getActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        } else {
            startDownloadTask(getActivity());
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDownloadTask(final Activity activity) {
        this.mDownloadTask = new DownloadFileTask(activity, this.mUrlString, new DownloadFileListener() { // from class: net.hockeyapp.android.UpdateFragment.3
            @Override // net.hockeyapp.android.listeners.DownloadFileListener
            public void downloadFailed(DownloadFileTask task, Boolean userWantsRetry) {
                if (userWantsRetry.booleanValue()) {
                    UpdateFragment.this.startDownloadTask(activity);
                }
            }

            @Override // net.hockeyapp.android.listeners.DownloadFileListener
            public void downloadSuccessful(DownloadFileTask task) {
            }
        });
        AsyncTaskUtils.execute(this.mDownloadTask);
    }

    public String getAppName() {
        Activity activity = getActivity();
        try {
            PackageManager pm = activity.getPackageManager();
            ApplicationInfo applicationInfo = pm.getApplicationInfo(activity.getPackageName(), 0);
            return pm.getApplicationLabel(applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    public View getLayoutView() {
        LinearLayout layout = new LinearLayout(getActivity());
        LayoutInflater.from(getActivity()).inflate(R.layout.hockeyapp_fragment_update, layout);
        return layout;
    }
}
