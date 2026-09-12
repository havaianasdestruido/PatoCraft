package com.microsoft.xbox.idp.ui;

import android.app.Fragment;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.telemetry.helpers.UTCPageView;
import com.microsoft.xbox.idp.telemetry.helpers.UTCUser;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SignOutActivity extends AuthActivity implements HeaderFragment.Callbacks, SignOutFragment.Callbacks {
    private static final String KEY_STATE = "KEY_STATE";
    private static final String TAG = SignOutActivity.class.getSimpleName();
    private State state;
    private Interop.AuthFlowScreenStatus status = Interop.AuthFlowScreenStatus.NO_ERROR;

    private enum Task {
        SIGN_OUT
    }

    @Override // com.microsoft.xbox.idp.compat.BaseActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.xbid_activity_auth_flow);
        if (savedInstanceState == null) {
            this.state = new State();
            showBodyFragment(Task.SIGN_OUT, new SignOutFragment(), new Bundle(), true);
        } else {
            this.state = (State) savedInstanceState.getParcelable(KEY_STATE);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        UTCPageView.removePage();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelable(KEY_STATE, this.state);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Log.d(TAG, "onBackPressed");
        this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
        finishWithResult();
    }

    @Override // com.microsoft.xbox.idp.ui.HeaderFragment.Callbacks
    public void onClickCloseHeader() {
        Log.d(TAG, "onClickCloseHeader");
        this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
        finishWithResult();
    }

    @Override // com.microsoft.xbox.idp.ui.SignOutFragment.Callbacks
    public void onComplete(SignOutFragment.Status status) {
        Log.d(TAG, "onComplete: StartSignInFragment.Status." + status);
        switch (status) {
            case SUCCESS:
                this.status = Interop.AuthFlowScreenStatus.NO_ERROR;
                UTCUser.trackSignout(getTitle());
                finishWithResult();
                break;
            case ERROR:
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
            case PROVIDER_ERROR:
                this.status = Interop.AuthFlowScreenStatus.PROVIDER_ERROR;
                finishWithResult();
                break;
        }
    }

    private void finishWithResult() {
        setResult(toActivityResult(this.status));
        finishCompat();
    }

    private void showBodyFragment(Task task, Fragment bodyFragment, Bundle args, boolean showHeader) {
        this.state.currentTask = task;
        showBodyFragment(bodyFragment, args, showHeader);
    }

    private static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.SignOutActivity.State.1
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
        public Task currentTask;

        public State() {
        }

        protected State(Parcel in) {
            int taskId = in.readInt();
            if (taskId != -1) {
                this.currentTask = Task.values()[taskId];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.currentTask == null ? -1 : this.currentTask.ordinal());
        }
    }
}
