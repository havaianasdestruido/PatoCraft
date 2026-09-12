package com.microsoft.xbox.idp.ui;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.microsoft.onlineid.Ticket;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.interop.XsapiUser;
import com.microsoft.xbox.idp.telemetry.helpers.UTCPageView;
import com.microsoft.xbox.idp.telemetry.helpers.UTCSignin;
import com.microsoft.xbox.idp.telemetry.helpers.UTCUser;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCCommonDataModel;
import com.microsoft.xbox.idp.util.AuthFlowResult;
import com.microsoft.xbox.idp.util.CacheUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AuthFlowActivity extends AuthActivity implements HeaderFragment.Callbacks, StartSignInFragment.Callbacks, MSAFragment.Callbacks, XBLoginFragment.Callbacks, AccountProvisioningFragment.Callbacks, SignUpFragment.Callbacks, EventInitializationFragment.Callbacks, WelcomeFragment.Callbacks, IntroducingFragment.Callbacks, FinishSignInFragment.Callbacks, XBLogoutFragment.Callbacks {
    public static final String ARG_ALT_BUTTON_TEXT = "ARG_ALT_BUTTON_TEXT";
    public static final String ARG_LOG_IN_BUTTON_TEXT = "ARG_LOG_IN_BUTTON_TEXT";
    public static final String ARG_SECURITY_POLICY = "ARG_SECURITY_POLICY";
    public static final String ARG_SECURITY_SCOPE = "ARG_SECURITY_SCOPE";
    public static final String ARG_USER_PTR = "ARG_USER_PTR";
    public static final String EXTRA_CID = "EXTRA_CID";
    private static final String KEY_STATE = "KEY_STATE";
    public static final int RESULT_PROVIDER_ERROR = 2;
    private static final String TAG = AuthFlowActivity.class.getSimpleName();
    private static StaticCallbacks staticCallbacks;
    private State state;
    private boolean stateSaved;
    private Interop.AuthFlowScreenStatus status = Interop.AuthFlowScreenStatus.NO_ERROR;
    private final Handler handler = new Handler();

    public interface StaticCallbacks {
        void onAuthFlowFinished(long j, Interop.AuthFlowScreenStatus authFlowScreenStatus, String str);
    }

    private enum Task {
        START_SIGN_IN,
        MSA,
        XB_LOGIN,
        ACCOUNT_PROVISIONING,
        SIGN_UP,
        EVENT_INITIALIZATION,
        INTRODUCING,
        WELCOME,
        FINISH_SIGN_IN,
        XB_LOGOUT
    }

    @Override // com.microsoft.xbox.idp.compat.BaseActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.xbid_activity_auth_flow);
        if (savedInstanceState == null) {
            this.state = new State();
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e(TAG, "Intent has no extras");
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                return;
            }
            Bundle args = new Bundle(extras);
            if (!args.containsKey("ARG_USER_PTR")) {
                Log.e(TAG, "No user pointer, non-native activity mode");
                this.state.nativeActivity = false;
                CacheUtil.clearCaches();
                showBodyFragment(Task.START_SIGN_IN, new StartSignInFragment(), args, false);
                return;
            }
            Log.e(TAG, "User pointer present, native activity mode");
            this.state.nativeActivity = true;
            this.state.userImpl = new XsapiUser.UserImpl(args.getLong("ARG_USER_PTR"));
            showBodyFragment(Task.MSA, new MSAFragment(), args, false);
            return;
        }
        this.state = (State) savedInstanceState.getParcelable(KEY_STATE);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        UTCPageView.removePage();
        super.onDestroy();
        if (isFinishing() && this.state.nativeActivity && staticCallbacks != null) {
            staticCallbacks.onAuthFlowFinished(this.state.userImpl.getUserImplPtr(), this.status, this.state.cid);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.stateSaved = false;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelable(KEY_STATE, this.state);
        this.stateSaved = true;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (this.state.currentTask == Task.MSA) {
            getFragmentManager().findFragmentById(R.id.xbid_body_fragment).onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Log.d(TAG, "onBackPressed");
        UTCUser.trackCancel(getTitle());
        this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
        finishWithResult();
    }

    @Override // com.microsoft.xbox.idp.ui.HeaderFragment.Callbacks
    public void onClickCloseHeader() {
        Log.d(TAG, "onClickCloseHeader");
        switch (this.state.currentTask) {
            case SIGN_UP:
            case INTRODUCING:
            case WELCOME:
                UTCUser.trackCancel(getTitle());
                this.status = Interop.AuthFlowScreenStatus.NO_ERROR;
                finishWithResult();
                break;
            case XB_LOGOUT:
            case FINISH_SIGN_IN:
                break;
            default:
                UTCUser.trackCancel(getTitle());
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
        }
    }

    @Override // com.microsoft.xbox.idp.ui.StartSignInFragment.Callbacks
    public void onComplete(StartSignInFragment.Status status) {
        Log.d(TAG, "onComplete: StartSignInFragment.Status." + status);
        switch (status) {
            case SUCCESS:
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            AuthFlowActivity.this.state.userImpl = XsapiUser.getInstance().getUserImpl();
                            Bundle args = new Bundle(AuthFlowActivity.this.getIntent().getExtras());
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            AuthFlowActivity.this.showBodyFragment(Task.MSA, new MSAFragment(), args, false);
                        }
                    }
                });
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

    @Override // com.microsoft.xbox.idp.ui.MSAFragment.Callbacks
    public void onComplete(MSAFragment.Status status, String cid, Ticket ticket) {
        Log.d(TAG, "onComplete: MSAFragment.Status." + status);
        switch (status) {
            case SUCCESS:
                this.state.cid = cid;
                this.state.ticket = ticket.getValue();
                Bundle args = new Bundle();
                args.putString("ARG_RPS_TICKET", this.state.ticket);
                args.putLong("ARG_USER_PTR", this.state.userImpl.getUserImplPtr());
                UTCSignin.trackXBLSigninStart(cid, getTitle());
                showBodyFragment(Task.XB_LOGIN, new XBLoginFragment(), args, false);
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

    @Override // com.microsoft.xbox.idp.ui.XBLoginFragment.Callbacks
    public void onComplete(XBLoginFragment.Status status, AuthFlowResult authFlowResult, final boolean createAccount) {
        Log.d(TAG, "onComplete: XBLoginFragment.Status." + status);
        switch (status) {
            case SUCCESS:
                this.state.createAccount = createAccount;
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            Bundle args = new Bundle();
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            if (createAccount) {
                                AuthFlowActivity.this.showBodyFragment(Task.ACCOUNT_PROVISIONING, new AccountProvisioningFragment(), args, false);
                            } else {
                                args.putString("ARG_RPS_TICKET", AuthFlowActivity.this.state.ticket);
                                AuthFlowActivity.this.showBodyFragment(Task.EVENT_INITIALIZATION, new EventInitializationFragment(), args, false);
                            }
                        }
                    }
                });
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

    @Override // com.microsoft.xbox.idp.ui.AccountProvisioningFragment.Callbacks
    public void onCloseWithStatus(AccountProvisioningFragment.Status status, final AccountProvisioningResult result) {
        Log.d(TAG, "onComplete: AccountProvisioningFragment.Status." + status);
        switch (status) {
            case NO_ERROR:
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            AuthFlowActivity.this.state.accountProvisioningResult = result;
                            Bundle args = new Bundle();
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            args.putString("ARG_RPS_TICKET", AuthFlowActivity.this.state.ticket);
                            AuthFlowActivity.this.showBodyFragment(Task.EVENT_INITIALIZATION, new EventInitializationFragment(), args, false);
                        }
                    }
                });
                break;
            case ERROR_USER_CANCEL:
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
            case PROVIDER_ERROR:
                this.status = Interop.AuthFlowScreenStatus.PROVIDER_ERROR;
                finishWithResult();
                break;
        }
    }

    @Override // com.microsoft.xbox.idp.ui.EventInitializationFragment.Callbacks
    public void onComplete(EventInitializationFragment.Status status) {
        switch (status) {
            case SUCCESS:
                final CharSequence title = getTitle();
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (AuthFlowActivity.this.state != null && AuthFlowActivity.this.state.accountProvisioningResult != null) {
                            UTCCommonDataModel.setUserId(AuthFlowActivity.this.state.accountProvisioningResult.getXuid());
                        }
                        UTCSignin.trackXBLSigninSuccess(AuthFlowActivity.this.state.cid, title, AuthFlowActivity.this.state.createAccount);
                        if (!AuthFlowActivity.this.stateSaved) {
                            Bundle args = new Bundle();
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            if (AuthFlowActivity.this.state.createAccount) {
                                args.putParcelable(SignUpFragment.ARG_ACCOUNT_PROVISIONING_RESULT, AuthFlowActivity.this.state.accountProvisioningResult);
                                AuthFlowActivity.this.showBodyFragment(Task.SIGN_UP, new SignUpFragment(), args, true);
                                return;
                            }
                            Bundle intentArgs = AuthFlowActivity.this.getIntent().getExtras();
                            if (intentArgs != null) {
                                if (intentArgs.containsKey("ARG_ALT_BUTTON_TEXT")) {
                                    args.putString("ARG_ALT_BUTTON_TEXT", intentArgs.getString("ARG_ALT_BUTTON_TEXT"));
                                }
                                if (intentArgs.containsKey("ARG_LOG_IN_BUTTON_TEXT")) {
                                    args.putString("ARG_LOG_IN_BUTTON_TEXT", intentArgs.getString("ARG_LOG_IN_BUTTON_TEXT"));
                                }
                            }
                            AuthFlowActivity.this.showBodyFragment(Task.WELCOME, new WelcomeFragment(), args, true);
                        }
                    }
                });
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

    @Override // com.microsoft.xbox.idp.ui.SignUpFragment.Callbacks
    public void onCloseWithStatus(SignUpFragment.Status status) {
        Log.d(TAG, "onCloseWithStatus: SignUpFragment.Status." + status);
        switch (status) {
            case NO_ERROR:
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            Bundle args = new Bundle();
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            Bundle intentArgs = AuthFlowActivity.this.getIntent().getExtras();
                            if (intentArgs != null) {
                                if (intentArgs.containsKey("ARG_ALT_BUTTON_TEXT")) {
                                    args.putString("ARG_ALT_BUTTON_TEXT", intentArgs.getString("ARG_ALT_BUTTON_TEXT"));
                                }
                                if (intentArgs.containsKey("ARG_LOG_IN_BUTTON_TEXT")) {
                                    args.putString("ARG_LOG_IN_BUTTON_TEXT", intentArgs.getString("ARG_LOG_IN_BUTTON_TEXT"));
                                }
                            }
                            AuthFlowActivity.this.showBodyFragment(Task.INTRODUCING, new IntroducingFragment(), args, true);
                        }
                    }
                });
                break;
            case ERROR_USER_CANCEL:
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
            case PROVIDER_ERROR:
                this.status = Interop.AuthFlowScreenStatus.PROVIDER_ERROR;
                finishWithResult();
                break;
            case ERROR_SWITCH_USER:
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            Bundle args = new Bundle();
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            AuthFlowActivity.this.showBodyFragment(Task.XB_LOGOUT, new XBLogoutFragment(), args, true);
                        }
                    }
                });
                break;
        }
    }

    @Override // com.microsoft.xbox.idp.ui.IntroducingFragment.Callbacks
    public void onCloseWithStatus(IntroducingFragment.Status status) {
        Log.d(TAG, "onCloseWithStatus: IntroducingFragment.Status." + status);
        switch (status) {
            case NO_ERROR:
                this.status = Interop.AuthFlowScreenStatus.NO_ERROR;
                finishWithResult();
                break;
            case ERROR_USER_CANCEL:
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
            case PROVIDER_ERROR:
                this.status = Interop.AuthFlowScreenStatus.PROVIDER_ERROR;
                finishWithResult();
                break;
        }
    }

    @Override // com.microsoft.xbox.idp.ui.WelcomeFragment.Callbacks
    public void onCloseWithStatus(WelcomeFragment.Status status) {
        Log.d(TAG, "onCloseWithStatus: WelcomeFragment.Status." + status);
        switch (status) {
            case NO_ERROR:
                this.status = Interop.AuthFlowScreenStatus.NO_ERROR;
                finishWithResult();
                break;
            case ERROR_USER_CANCEL:
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
            case PROVIDER_ERROR:
                this.status = Interop.AuthFlowScreenStatus.PROVIDER_ERROR;
                finishWithResult();
                break;
            case ERROR_SWITCH_USER:
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            Bundle args = new Bundle();
                            args.putLong("ARG_USER_PTR", AuthFlowActivity.this.state.userImpl.getUserImplPtr());
                            AuthFlowActivity.this.showBodyFragment(Task.XB_LOGOUT, new XBLogoutFragment(), args, true);
                        }
                    }
                });
                break;
        }
    }

    @Override // com.microsoft.xbox.idp.ui.FinishSignInFragment.Callbacks
    public void onComplete(FinishSignInFragment.Status status) {
        Log.d(TAG, "onComplete: FinishSignInFragment.Status." + status);
        this.status = this.state.lastStatus;
        finishWithResult();
    }

    @Override // com.microsoft.xbox.idp.ui.XBLogoutFragment.Callbacks
    public void onComplete(XBLogoutFragment.Status status) {
        Log.d(TAG, "onComplete: XBLogoutFragment.Status." + status);
        switch (status) {
            case SUCCESS:
                this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.8
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                        if (!AuthFlowActivity.this.stateSaved) {
                            CacheUtil.clearCaches();
                            AuthFlowActivity.this.state.createAccount = false;
                            AuthFlowActivity.this.showBodyFragment(Task.MSA, new MSAFragment(), AuthFlowActivity.this.getIntent().getExtras(), false);
                        }
                    }
                });
                break;
            case ERROR:
                Log.e(TAG, "Should not be here! Cancelling auth flow.");
                this.status = Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
                finishWithResult();
                break;
        }
    }

    public static void setStaticCallbacks(StaticCallbacks staticCallbacks2) {
        staticCallbacks = staticCallbacks2;
    }

    private void finishWithResult() {
        if (this.state.nativeActivity || this.state.currentTask == Task.FINISH_SIGN_IN) {
            Intent intent = new Intent();
            intent.putExtra(EXTRA_CID, this.state.cid);
            setResult(toActivityResult(this.status), intent);
            finishCompat();
            return;
        }
        this.state.lastStatus = this.status;
        this.handler.post(new Runnable() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.9
            @Override // java.lang.Runnable
            public void run() {
                Log.d(AuthFlowActivity.TAG, "stateSaved: " + AuthFlowActivity.this.stateSaved);
                if (!AuthFlowActivity.this.stateSaved) {
                    Bundle args = new Bundle();
                    args.putString(FinishSignInFragment.ARG_AUTH_STATUS, AuthFlowActivity.this.status.toString());
                    args.putString(FinishSignInFragment.ARG_CID, AuthFlowActivity.this.state.cid);
                    AuthFlowActivity.this.showBodyFragment(Task.FINISH_SIGN_IN, new FinishSignInFragment(), args, true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBodyFragment(Task task, Fragment bodyFragment, Bundle args, boolean showHeader) {
        this.state.currentTask = task;
        showBodyFragment(bodyFragment, args, showHeader);
    }

    private static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.AuthFlowActivity.State.1
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
        public AccountProvisioningResult accountProvisioningResult;
        public String cid;
        public boolean createAccount;
        public Task currentTask;
        public Interop.AuthFlowScreenStatus lastStatus;
        public boolean nativeActivity;
        public String ticket;
        public XsapiUser.UserImpl userImpl;

        public State() {
        }

        protected State(Parcel in) {
            this.userImpl = (XsapiUser.UserImpl) in.readParcelable(XsapiUser.UserImpl.class.getClassLoader());
            int taskId = in.readInt();
            if (taskId != -1) {
                this.currentTask = Task.values()[taskId];
            }
            this.cid = in.readString();
            this.ticket = in.readString();
            this.createAccount = in.readInt() != 0;
            this.nativeActivity = in.readInt() != 0;
            int lastStatusId = in.readInt();
            if (lastStatusId != -1) {
                this.lastStatus = Interop.AuthFlowScreenStatus.values()[lastStatusId];
            }
            this.accountProvisioningResult = (AccountProvisioningResult) in.readParcelable(AccountProvisioningResult.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.userImpl, flags);
            dest.writeInt(this.currentTask == null ? -1 : this.currentTask.ordinal());
            dest.writeString(this.cid);
            dest.writeString(this.ticket);
            dest.writeInt(this.createAccount ? 1 : 0);
            dest.writeInt(this.nativeActivity ? 1 : 0);
            dest.writeInt(this.lastStatus != null ? this.lastStatus.ordinal() : -1);
            dest.writeParcelable(this.accountProvisioningResult, flags);
        }
    }
}
