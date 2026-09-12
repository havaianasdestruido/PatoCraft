package com.microsoft.xbox.idp.util;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.microsoft.xbox.idp.ui.ErrorActivity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class ErrorHelper implements Parcelable {
    public static final String KEY_RESULT_KEY = "KEY_RESULT_KEY";
    public static final int LOADER_NONE = -1;
    public static final int RC_ERROR_SCREEN = 63;
    private ActivityContext activityContext;
    public Bundle loaderArgs;
    public int loaderId;
    private static final String TAG = ErrorHelper.class.getSimpleName();
    public static final Parcelable.Creator<ErrorHelper> CREATOR = new Parcelable.Creator<ErrorHelper>() { // from class: com.microsoft.xbox.idp.util.ErrorHelper.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ErrorHelper createFromParcel(Parcel in) {
            return new ErrorHelper(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ErrorHelper[] newArray(int size) {
            return new ErrorHelper[size];
        }
    };

    public interface ActivityContext {
        Activity getActivity();

        LoaderInfo getLoaderInfo(int i);

        LoaderManager getLoaderManager();

        void startActivityForResult(Intent intent, int i);
    }

    public interface LoaderInfo {
        void clearCache(Object obj);

        LoaderManager.LoaderCallbacks<?> getLoaderCallbacks();

        boolean hasCachedData(Object obj);
    }

    public ErrorHelper() {
        this.loaderId = -1;
        this.loaderArgs = null;
    }

    protected ErrorHelper(Parcel in) {
        this.loaderId = in.readInt();
        this.loaderArgs = in.readBundle();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.loaderId);
        dest.writeBundle(this.loaderArgs);
    }

    private boolean isConnected() {
        ConnectivityManager connMgr = (ConnectivityManager) this.activityContext.getActivity().getSystemService("connectivity");
        NetworkInfo ni = connMgr.getActiveNetworkInfo();
        return ni != null && ni.isConnected();
    }

    public void setActivityContext(ActivityContext activityContext) {
        this.activityContext = activityContext;
    }

    public void startErrorActivity(ErrorActivity.ErrorScreen screen) {
        Activity a = this.activityContext.getActivity();
        Intent intent = new Intent(a, (Class<?>) ErrorActivity.class);
        intent.putExtra(ErrorActivity.ARG_ERROR_TYPE, screen.type.getId());
        this.activityContext.startActivityForResult(intent, 63);
    }

    public <D> boolean initLoader(int id, Bundle args) {
        return initLoader(id, args, true);
    }

    public <D> boolean initLoader(int id, Bundle args, boolean checkNetwork) {
        Log.d(TAG, "initLoader");
        if (id != -1) {
            this.loaderId = id;
            this.loaderArgs = args;
            LoaderManager lm = this.activityContext.getLoaderManager();
            LoaderInfo loaderInfo = this.activityContext.getLoaderInfo(this.loaderId);
            Object resultKey = this.loaderArgs == null ? null : this.loaderArgs.get(KEY_RESULT_KEY);
            boolean hasCachedData = resultKey == null ? false : loaderInfo.hasCachedData(resultKey);
            if (hasCachedData || lm.getLoader(id) != null || !checkNetwork || isConnected()) {
                Log.d(TAG, "initializing loader #" + this.loaderId);
                lm.initLoader(id, args, loaderInfo.getLoaderCallbacks());
                return true;
            }
            Log.e(TAG, "Starting error activity: OFFLINE");
            startErrorActivity(ErrorActivity.ErrorScreen.OFFLINE);
            return false;
        }
        Log.e(TAG, "LOADER_NONE");
        return false;
    }

    public <D> boolean restartLoader(int id, Bundle args) {
        if (id == -1) {
            return false;
        }
        this.loaderId = id;
        this.loaderArgs = args;
        if (isConnected()) {
            this.activityContext.getLoaderManager().restartLoader(this.loaderId, this.loaderArgs, this.activityContext.getLoaderInfo(this.loaderId).getLoaderCallbacks());
            return true;
        }
        startErrorActivity(ErrorActivity.ErrorScreen.OFFLINE);
        return false;
    }

    public <D> boolean restartLoader() {
        if (this.loaderId == -1) {
            return false;
        }
        if (isConnected()) {
            this.activityContext.getLoaderManager().restartLoader(this.loaderId, this.loaderArgs, this.activityContext.getLoaderInfo(this.loaderId).getLoaderCallbacks());
            return true;
        }
        startErrorActivity(ErrorActivity.ErrorScreen.OFFLINE);
        return false;
    }

    public void deleteLoader() {
        if (this.loaderId != -1) {
            this.activityContext.getLoaderManager().destroyLoader(this.loaderId);
            Object resultKey = this.loaderArgs == null ? null : this.loaderArgs.get(KEY_RESULT_KEY);
            if (resultKey != null) {
                this.activityContext.getLoaderInfo(this.loaderId).clearCache(resultKey);
            }
            this.loaderId = -1;
            this.loaderArgs = null;
        }
    }

    public ActivityResult getActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != 63) {
            return null;
        }
        return new ActivityResult(resultCode == 1);
    }

    public static class ActivityResult {
        private final boolean tryAgain;

        public ActivityResult(boolean tryAgain) {
            this.tryAgain = tryAgain;
        }

        public boolean isTryAgain() {
            return this.tryAgain;
        }
    }
}
