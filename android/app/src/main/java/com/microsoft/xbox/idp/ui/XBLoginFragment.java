package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Intent;
import android.content.Loader;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.toolkit.HttpError;
import com.microsoft.xbox.idp.toolkit.XBLoginLoader;
import com.microsoft.xbox.idp.util.AuthFlowResult;
import com.microsoft.xbox.idp.util.CacheUtil;
import com.microsoft.xbox.idp.util.ErrorHelper;
import com.microsoft.xbox.idp.util.FragmentLoaderKey;
import com.microsoft.xbox.idp.util.ResultLoaderInfo;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XBLoginFragment extends BaseFragment implements ErrorHelper.ActivityContext {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int AM_E_NO_NETWORK = -2015559650;
    public static final String ARG_RPS_TICKET = "ARG_RPS_TICKET";
    private static final String KEY_STATE = "KEY_STATE";
    private static final int LOADER_XB_LOGIN = 1;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private static final int XO_E_ENFORCEMENT_BAN = -2146051069;
    private State state;
    private final SparseArray<ErrorHelper.LoaderInfo> loaderMap = new SparseArray<>();
    private Callbacks callbacks = NO_OP_CALLBACKS;
    private final LoaderManager.LoaderCallbacks<XBLoginLoader.Result> xbLoginCallbacks = new LoaderManager.LoaderCallbacks<XBLoginLoader.Result>() { // from class: com.microsoft.xbox.idp.ui.XBLoginFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<XBLoginLoader.Result> onCreateLoader(int id, Bundle args) {
            Log.d(XBLoginFragment.TAG, "Creating LOADER_XB_LOGIN");
            return new XBLoginLoader(XBLoginFragment.this.getActivity(), args.getLong("ARG_USER_PTR"), args.getString("ARG_RPS_TICKET"), CacheUtil.getResultCache(XBLoginLoader.Result.class), args.get(ErrorHelper.KEY_RESULT_KEY));
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<XBLoginLoader.Result> loader, XBLoginLoader.Result result) {
            Log.d(XBLoginFragment.TAG, "LOADER_XB_LOGIN finished");
            if (result.hasData()) {
                XBLoginLoader.Data data = result.getData();
                XBLoginFragment.this.callbacks.onComplete(Status.SUCCESS, data.getAuthFlowResult(), data.isCreateAccount());
            }
            HttpError error = result.getError();
            Log.d(XBLoginFragment.TAG, "LOADER_XTOKEN: " + error);
            switch (error.getErrorCode()) {
                case XBLoginFragment.XO_E_ENFORCEMENT_BAN /* -2146051069 */:
                    XBLoginFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.BAN);
                    break;
                case XBLoginFragment.AM_E_NO_NETWORK /* -2015559650 */:
                    XBLoginFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.OFFLINE);
                    break;
                default:
                    XBLoginFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
                    break;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<XBLoginLoader.Result> loader) {
            Log.d(XBLoginFragment.TAG, "LOADER_XB_LOGIN reset");
        }
    };

    public interface Callbacks {
        void onComplete(Status status, AuthFlowResult authFlowResult, boolean z);
    }

    public enum Status {
        SUCCESS,
        ERROR,
        PROVIDER_ERROR
    }

    static {
        $assertionsDisabled = !XBLoginFragment.class.desiredAssertionStatus();
        TAG = XBLoginFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.XBLoginFragment.2
            @Override // com.microsoft.xbox.idp.ui.XBLoginFragment.Callbacks
            public void onComplete(Status status, AuthFlowResult authFlowResult, boolean createAccount) {
            }
        };
    }

    public XBLoginFragment() {
        this.loaderMap.put(1, new ResultLoaderInfo(XBLoginLoader.Result.class, this.xbLoginCallbacks));
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
            Log.e(TAG, "No arguments");
            this.callbacks.onComplete(Status.ERROR, null, false);
        } else if (!args.containsKey("ARG_USER_PTR")) {
            Log.e(TAG, "No ARG_USER_PTR");
            this.callbacks.onComplete(Status.ERROR, null, false);
        } else if (!args.containsKey("ARG_RPS_TICKET")) {
            Log.e(TAG, "No ARG_USER_PTR");
            this.callbacks.onComplete(Status.ERROR, null, false);
        } else {
            this.state = savedInstanceState == null ? new State() : (State) savedInstanceState.getParcelable(KEY_STATE);
            this.state.errorHelper.setActivityContext(this);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle args = getArguments();
        Log.d(TAG, "Initializing LOADER_XB_LOGIN");
        Bundle bundle = new Bundle(args);
        bundle.putLong("ARG_USER_PTR", args.getLong("ARG_USER_PTR"));
        bundle.putString("ARG_RPS_TICKET", args.getString("ARG_RPS_TICKET"));
        bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(XBLoginFragment.class, 1));
        if (this.state.errorHelper != null) {
            this.state.errorHelper.initLoader(1, bundle);
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelable(KEY_STATE, this.state);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        ErrorHelper.ActivityResult result = this.state.errorHelper.getActivityResult(requestCode, resultCode, data);
        if (result != null) {
            if (result.isTryAgain()) {
                Log.d(TAG, "Trying again");
                this.state.errorHelper.deleteLoader();
            } else {
                this.state.errorHelper = null;
                this.callbacks.onComplete(Status.PROVIDER_ERROR, null, false);
            }
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_busy, container, false);
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.ActivityContext
    public ErrorHelper.LoaderInfo getLoaderInfo(int loaderId) {
        return this.loaderMap.get(loaderId);
    }

    private static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.XBLoginFragment.State.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public State createFromParcel(Parcel in) {
                return new State(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public State[] newArray(int size) {
                return new State[size];
            }
        };
        public ErrorHelper errorHelper;

        public State() {
            this.errorHelper = new ErrorHelper();
        }

        protected State(Parcel in) {
            this.errorHelper = (ErrorHelper) in.readParcelable(ErrorHelper.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.errorHelper, flags);
        }
    }
}
