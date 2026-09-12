package net.hockeyapp.android.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Scanner;
import java.util.regex.Pattern;
import net.hockeyapp.android.UpdateInfoListener;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class VersionHelper {
    public static final String VERSION_MAX = "99.0";
    private int mCurrentVersionCode;
    private UpdateInfoListener mListener;
    private JSONObject mNewest;
    private ArrayList<JSONObject> mSortedVersions;

    public VersionHelper(Context context, String infoJSON, UpdateInfoListener listener) {
        this.mListener = listener;
        loadVersions(context, infoJSON);
        sortVersions();
    }

    private void loadVersions(Context context, String infoJSON) {
        this.mNewest = new JSONObject();
        this.mSortedVersions = new ArrayList<>();
        this.mCurrentVersionCode = this.mListener.getCurrentVersionCode();
        try {
            JSONArray versions = new JSONArray(infoJSON);
            int versionCode = this.mListener.getCurrentVersionCode();
            for (int index = 0; index < versions.length(); index++) {
                JSONObject entry = versions.getJSONObject(index);
                boolean largerVersionCode = entry.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION) > versionCode;
                boolean newerApkFile = entry.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION) == versionCode && isNewerThanLastUpdateTime(context, entry.getLong("timestamp"));
                if (largerVersionCode || newerApkFile) {
                    this.mNewest = entry;
                    versionCode = entry.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
                }
                this.mSortedVersions.add(entry);
            }
        } catch (NullPointerException e) {
        } catch (JSONException e2) {
        }
    }

    private void sortVersions() {
        Collections.sort(this.mSortedVersions, new Comparator<JSONObject>() { // from class: net.hockeyapp.android.utils.VersionHelper.1
            @Override // java.util.Comparator
            public int compare(JSONObject object1, JSONObject object2) {
                try {
                    if (object1.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION) > object2.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION)) {
                    }
                } catch (NullPointerException e) {
                } catch (JSONException e2) {
                }
                return 0;
            }
        });
    }

    public String getVersionString() {
        return failSafeGetStringFromJSON(this.mNewest, "shortversion", "") + " (" + failSafeGetStringFromJSON(this.mNewest, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "") + ")";
    }

    @SuppressLint({"SimpleDateFormat"})
    public String getFileDateString() {
        long timestamp = failSafeGetLongFromJSON(this.mNewest, "timestamp", 0L);
        Date date = new Date(1000 * timestamp);
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        return dateFormat.format(date);
    }

    public long getFileSizeBytes() {
        boolean external = Boolean.valueOf(failSafeGetStringFromJSON(this.mNewest, "external", "false")).booleanValue();
        long appSize = failSafeGetLongFromJSON(this.mNewest, "appsize", 0L);
        if (external && appSize == 0) {
            return -1L;
        }
        return appSize;
    }

    private static String failSafeGetStringFromJSON(JSONObject json, String name, String defaultValue) {
        try {
            String defaultValue2 = json.getString(name);
            return defaultValue2;
        } catch (JSONException e) {
            return defaultValue;
        }
    }

    private static long failSafeGetLongFromJSON(JSONObject json, String name, long defaultValue) {
        try {
            long defaultValue2 = json.getLong(name);
            return defaultValue2;
        } catch (JSONException e) {
            return defaultValue;
        }
    }

    public String getReleaseNotes(boolean showRestore) {
        StringBuilder result = new StringBuilder();
        result.append("<html>");
        result.append("<body style='padding: 0px 0px 20px 0px'>");
        int count = 0;
        for (JSONObject version : this.mSortedVersions) {
            if (count > 0) {
                result.append(getSeparator());
                if (showRestore) {
                    result.append(getRestoreButton(count, version));
                }
            }
            result.append(getVersionLine(count, version));
            result.append(getVersionNotes(count, version));
            count++;
        }
        result.append("</body>");
        result.append("</html>");
        return result.toString();
    }

    private Object getSeparator() {
        return "<hr style='border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;' />";
    }

    private String getRestoreButton(int count, JSONObject version) {
        StringBuilder result = new StringBuilder();
        String versionID = getVersionID(version);
        if (!TextUtils.isEmpty(versionID)) {
            result.append("<a href='restore:" + versionID + "'  style='background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;'>Restore</a>");
        }
        return result.toString();
    }

    private String getVersionID(JSONObject version) {
        try {
            String versionID = version.getString("id");
            return versionID;
        } catch (JSONException e) {
            return "";
        }
    }

    private String getVersionLine(int count, JSONObject version) {
        StringBuilder result = new StringBuilder();
        int newestCode = getVersionCode(this.mNewest);
        int versionCode = getVersionCode(version);
        String versionName = getVersionName(version);
        result.append("<div style='padding: 20px 10px 10px;'><strong>");
        if (count == 0) {
            result.append("Newest version:");
        } else {
            result.append("Version " + versionName + " (" + versionCode + "): ");
            if (versionCode != newestCode && versionCode == this.mCurrentVersionCode) {
                this.mCurrentVersionCode = -1;
                result.append("[INSTALLED]");
            }
        }
        result.append("</strong></div>");
        return result.toString();
    }

    private int getVersionCode(JSONObject version) {
        try {
            int versionCode = version.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            return versionCode;
        } catch (JSONException e) {
            return 0;
        }
    }

    private String getVersionName(JSONObject version) {
        try {
            String versionName = version.getString("shortversion");
            return versionName;
        } catch (JSONException e) {
            return "";
        }
    }

    private String getVersionNotes(int count, JSONObject version) {
        StringBuilder result = new StringBuilder();
        String notes = failSafeGetStringFromJSON(version, "notes", "");
        result.append("<div style='padding: 0px 10px;'>");
        if (notes.trim().length() == 0) {
            result.append("<em>No information.</em>");
        } else {
            result.append(notes);
        }
        result.append("</div>");
        return result.toString();
    }

    public static int compareVersionStrings(String left, String right) {
        if (left == null || right == null) {
            return 0;
        }
        try {
            Scanner leftScanner = new Scanner(left.replaceAll("\\-.*", ""));
            Scanner rightScanner = new Scanner(right.replaceAll("\\-.*", ""));
            leftScanner.useDelimiter("\\.");
            rightScanner.useDelimiter("\\.");
            while (leftScanner.hasNextInt() && rightScanner.hasNextInt()) {
                int leftValue = leftScanner.nextInt();
                int rightValue = rightScanner.nextInt();
                if (leftValue < rightValue) {
                    return -1;
                }
                if (leftValue > rightValue) {
                    return 1;
                }
            }
            if (leftScanner.hasNextInt()) {
                return 1;
            }
            return !rightScanner.hasNextInt() ? 0 : -1;
        } catch (Exception e) {
            return 0;
        }
    }

    public static boolean isNewerThanLastUpdateTime(Context context, long timestamp) {
        if (context == null) {
            return false;
        }
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo appInfo = pm.getApplicationInfo(context.getPackageName(), 0);
            String appFile = appInfo.sourceDir;
            long lastModified = (new File(appFile).lastModified() / 1000) + 1800;
            return timestamp > lastModified;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String mapGoogleVersion(String version) {
        if (version == null || version.equalsIgnoreCase("L")) {
            return "5.0";
        }
        if (version.equalsIgnoreCase("M")) {
            return "6.0";
        }
        if (version.equalsIgnoreCase("N")) {
            return "7.0";
        }
        if (Pattern.matches("^[a-zA-Z]+", version)) {
            return VERSION_MAX;
        }
        return version;
    }
}
