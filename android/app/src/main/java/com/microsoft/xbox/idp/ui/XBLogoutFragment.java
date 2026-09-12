package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Loader;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.toolkit.XBLogoutLoader;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XBLogoutFragment extends BaseFragment {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int LOADER_XB_LOGOUT = 1;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private Callbacks callbacks = NO_OP_CALLBACKS;
    private final LoaderManager.LoaderCallbacks<XBLogoutLoader.Result> xbLogoutCallbacks = new LoaderManager.LoaderCallbacks<XBLogoutLoader.Result>() { // from class: com.microsoft.xbox.idp.ui.XBLogoutFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<XBLogoutLoader.Result> onCreateLoader(int id, Bundle args) {
            Log.d(XBLogoutFragment.TAG, "Creating LOADER_XB_LOGOUT");
            return new XBLogoutLoader(XBLogoutFragment.this.getActivity(), args.getLong("ARG_USER_PTR"));
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<XBLogoutLoader.Result> loader, XBLogoutLoader.Result data) {
            Log.d(XBLogoutFragment.TAG, "LOADER_XB_LOGOUT finished");
            XBLogoutFragment.this.callbacks.onComplete(Status.SUCCESS);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<XBLogoutLoader.Result> loader) {
            Log.d(XBLogoutFragment.TAG, "LOADER_XB_LOGOUT reset");
        }
    };

    public interface Callbacks {
        void onComplete(Status status);
    }

    public enum Status {
        SUCCESS,
        ERROR
    }

    static {
        $assertionsDisabled = !XBLogoutFragment.class.desiredAssertionStatus();
        TAG = XBLogoutFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.XBLogoutFragment.2
            @Override // com.microsoft.xbox.idp.ui.XBLogoutFragment.Callbacks
            public void onComplete(Status status) {
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!$assertionsDisabled && !(activity instanceof Callbacks)) {
            throw new AssertionError();
        }
        this.callbacks = (Callbacks) activity;
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.callbacks = NO_OP_CALLBACKS;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle args = getArguments();
        if (args == null) {
            Log.d(TAG, "No arguments");
            this.callbacks.onComplete(Status.ERROR);
        } else if (!args.containsKey("ARG_USER_PTR")) {
            Log.d(TAG, "No ARG_USER_PTR");
            this.callbacks.onComplete(Status.ERROR);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        getLoaderManager().initLoader(1, getArguments(), this.xbLogoutCallbacks);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_busy, container, false);
    }
}
