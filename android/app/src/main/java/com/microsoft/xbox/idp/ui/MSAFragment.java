package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.UserAccount;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.jobs.JobSignIn;
import com.microsoft.xbox.idp.jobs.MSAJob;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MSAFragment extends BaseFragment implements MSAJob.Callbacks {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ARG_SECURITY_POLICY = "ARG_SECURITY_POLICY";
    public static final String ARG_SECURITY_SCOPE = "ARG_SECURITY_SCOPE";
    private static final String KEY_STATE = "KEY_STATE";
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private Callbacks callbacks = NO_OP_CALLBACKS;
    private JobSignIn currentJob;
    private State state;

    public interface Callbacks {
        void onComplete(Status status, String str, Ticket ticket);
    }

    public enum Status {
        SUCCESS,
        ERROR,
        PROVIDER_ERROR
    }

    static {
        $assertionsDisabled = !MSAFragment.class.desiredAssertionStatus();
        TAG = MSAFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.MSAFragment.1
            @Override // com.microsoft.xbox.idp.ui.MSAFragment.Callbacks
            public void onComplete(Status status, String cid, Ticket ticket) {
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
        Bundle extras = getArguments();
        if (savedInstanceState == null) {
            if (extras == null) {
                Log.e(TAG, "Intent has no extras");
                this.callbacks.onComplete(Status.ERROR, null, null);
                return;
            }
            String scope = extras.getString("ARG_SECURITY_SCOPE");
            if (scope == null) {
                Log.e(TAG, "No security scope");
                this.callbacks.onComplete(Status.ERROR, null, null);
                return;
            }
            String policy = extras.getString("ARG_SECURITY_POLICY");
            if (policy == null) {
                Log.e(TAG, "No security policy");
                this.callbacks.onComplete(Status.ERROR, null, null);
                return;
            } else {
                this.state = new State();
                this.currentJob = new JobSignIn(getActivity(), this, scope, policy).start();
                return;
            }
        }
        this.state = (State) savedInstanceState.getParcelable(KEY_STATE);
        this.currentJob = new JobSignIn(getActivity(), this, extras.getString("ARG_SECURITY_SCOPE"), extras.getString("ARG_SECURITY_POLICY"));
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_busy, container, false);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelable(KEY_STATE, this.state);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.d(TAG, "requestCode: " + requestCode + ", resultCode: " + resultCode + ", extras: " + (data == null ? null : data.getExtras()));
        if (this.currentJob != null) {
            this.currentJob.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onUiNeeded(MSAJob job) {
        Log.e(TAG, "Must show UI to acquire an account. Should not be here");
        this.callbacks.onComplete(Status.ERROR, null, null);
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onFailure(MSAJob job, Exception e) {
        Log.d(TAG, "There was a problem acquiring an account: " + e);
        this.callbacks.onComplete(e instanceof NetworkException ? Status.PROVIDER_ERROR : Status.ERROR, null, null);
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onUserCancel(MSAJob job) {
        Log.d(TAG, "The user cancelled the UI to acquire a ticket.");
        this.callbacks.onComplete(Status.ERROR, null, null);
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onSignedOut(MSAJob job) {
        Log.d(TAG, "Signed out during sing in - should not be here.");
        this.callbacks.onComplete(Status.ERROR, null, null);
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onAccountAcquired(MSAJob job, UserAccount userAccount) {
        this.state.cid = userAccount.getCid();
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onTicketAcquired(MSAJob job, Ticket ticket) {
        this.callbacks.onComplete(Status.SUCCESS, this.state.cid, ticket);
    }

    private static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.MSAFragment.State.1
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
        public String cid;

        public State() {
        }

        protected State(Parcel in) {
            this.cid = in.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.cid);
        }
    }
}
