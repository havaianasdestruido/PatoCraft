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
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.toolkit.FinishSignInLoader;
import com.microsoft.xbox.idp.util.CacheUtil;
import com.microsoft.xbox.idp.util.ErrorHelper;
import com.microsoft.xbox.idp.util.FragmentLoaderKey;
import com.microsoft.xbox.idp.util.ResultLoaderInfo;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FinishSignInFragment extends BaseFragment implements ErrorHelper.ActivityContext {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ARG_AUTH_STATUS = "ARG_AUTH_STATUS";
    public static final String ARG_CID = "ARG_CID";
    private static final String KEY_STATE = "KEY_STATE";
    private static final int LOADER_FINISH_SIGN_IN = 1;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private State state;
    private final SparseArray<ErrorHelper.LoaderInfo> loaderMap = new SparseArray<>();
    private Callbacks callbacks = NO_OP_CALLBACKS;
    private final LoaderManager.LoaderCallbacks<FinishSignInLoader.Result> finishSignInCallbacks = new LoaderManager.LoaderCallbacks<FinishSignInLoader.Result>() { // from class: com.microsoft.xbox.idp.ui.FinishSignInFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<FinishSignInLoader.Result> onCreateLoader(int id, Bundle args) {
            Log.d(FinishSignInFragment.TAG, "Creating LOADER_FINISH_SIGN_IN");
            return new FinishSignInLoader(FinishSignInFragment.this.getActivity(), Interop.AuthFlowScreenStatus.valueOf(args.getString(FinishSignInFragment.ARG_AUTH_STATUS)), args.getString(FinishSignInFragment.ARG_CID), CacheUtil.getResultCache(FinishSignInLoader.Result.class), args.get(ErrorHelper.KEY_RESULT_KEY));
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<FinishSignInLoader.Result> loader, FinishSignInLoader.Result result) {
            Log.d(FinishSignInFragment.TAG, "LOADER_FINISH_SIGN_IN finished");
            if (result.hasError()) {
                Log.d(FinishSignInFragment.TAG, "LOADER_FINISH_SIGN_IN: " + result.getError());
                FinishSignInFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
            } else {
                FinishSignInFragment.this.callbacks.onComplete(Status.SUCCESS);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<FinishSignInLoader.Result> loader) {
            Log.d(FinishSignInFragment.TAG, "LOADER_FINISH_SIGN_IN reset");
        }
    };

    public interface Callbacks {
        void onComplete(Status status);
    }

    public enum Status {
        SUCCESS,
        ERROR,
        PROVIDER_ERROR
    }

    static {
        $assertionsDisabled = !FinishSignInFragment.class.desiredAssertionStatus();
        TAG = FinishSignInFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.FinishSignInFragment.2
            @Override // com.microsoft.xbox.idp.ui.FinishSignInFragment.Callbacks
            public void onComplete(Status status) {
            }
        };
    }

    public FinishSignInFragment() {
        this.loaderMap.put(1, new ResultLoaderInfo(FinishSignInLoader.Result.class, this.finishSignInCallbacks));
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
            this.callbacks.onComplete(Status.ERROR);
        } else if (!args.containsKey(ARG_AUTH_STATUS)) {
            Log.e(TAG, "No ARG_AUTH_STATUS");
            this.callbacks.onComplete(Status.ERROR);
        } else if (!args.containsKey(ARG_CID)) {
            Log.e(TAG, "No ARG_CID");
            this.callbacks.onComplete(Status.ERROR);
        } else {
            this.state = savedInstanceState == null ? new State() : (State) savedInstanceState.getParcelable(KEY_STATE);
            this.state.errorHelper.setActivityContext(this);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle args = new Bundle(getArguments());
        Log.d(TAG, "Initializing LOADER_FINISH_SIGN_IN");
        Bundle bundle = new Bundle(args);
        bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(FinishSignInFragment.class, 1));
        if (this.state.errorHelper != null) {
            this.state.errorHelper.initLoader(1, bundle, false);
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
                this.callbacks.onComplete(Status.PROVIDER_ERROR);
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
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.FinishSignInFragment.State.1
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
