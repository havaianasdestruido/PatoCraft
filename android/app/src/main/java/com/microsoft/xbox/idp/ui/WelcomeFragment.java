package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Intent;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.gson.GsonBuilder;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.model.Profile;
import com.microsoft.xbox.idp.services.EndpointsFactory;
import com.microsoft.xbox.idp.telemetry.helpers.UTCError;
import com.microsoft.xbox.idp.telemetry.helpers.UTCPageView;
import com.microsoft.xbox.idp.telemetry.helpers.UTCUser;
import com.microsoft.xbox.idp.telemetry.helpers.UTCWelcome;
import com.microsoft.xbox.idp.toolkit.BitmapLoader;
import com.microsoft.xbox.idp.toolkit.ObjectLoader;
import com.microsoft.xbox.idp.util.BitmapLoaderInfo;
import com.microsoft.xbox.idp.util.CacheUtil;
import com.microsoft.xbox.idp.util.ErrorHelper;
import com.microsoft.xbox.idp.util.FragmentLoaderKey;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpUtil;
import com.microsoft.xbox.idp.util.ObjectLoaderInfo;
import com.microsoft.xbox.toolkit.network.XboxLiveEnvironment;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class WelcomeFragment extends BaseFragment implements View.OnClickListener, ErrorHelper.ActivityContext {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String KEY_STATE = "WelcomeFragment.KEY_STATE";
    private static final int LOADER_GAMER_IMAGE = 2;
    private static final int LOADER_GAMER_PROFILE = 1;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private View bottomBarShadow;
    private TextView displayNameText;
    private TextView gamerScoreText;
    private TextView gamerTagText;
    private ImageView gamerpicView;
    private ScrollView scrollView;
    private State state;
    private Profile.User user;
    private final SparseArray<ErrorHelper.LoaderInfo> loaderMap = new SparseArray<>();
    private Callbacks callbacks = NO_OP_CALLBACKS;
    private final LoaderManager.LoaderCallbacks<BitmapLoader.Result> bitmapCallbacks = new LoaderManager.LoaderCallbacks<BitmapLoader.Result>() { // from class: com.microsoft.xbox.idp.ui.WelcomeFragment.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<BitmapLoader.Result> onCreateLoader(int id, Bundle args) {
            Log.d(WelcomeFragment.TAG, "Creating LOADER_GAMER_IMAGE");
            String strUri = args.getString(ErrorHelper.KEY_RESULT_KEY);
            Uri uri = HttpUtil.getImageSizeUrlParams(Uri.parse(strUri).buildUpon(), HttpUtil.ImageSize.MEDIUM).build();
            Log.d(WelcomeFragment.TAG, "uri: " + uri);
            return new BitmapLoader(WelcomeFragment.this.getActivity(), CacheUtil.getBitmapCache(), strUri, uri.toString());
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<BitmapLoader.Result> loader, BitmapLoader.Result result) {
            if (result.hasException()) {
                UTCError.trackException(result.getException(), "Welcome view");
            }
            Log.d(WelcomeFragment.TAG, "Finished LOADER_GAMER_IMAGE");
            WelcomeFragment.this.gamerpicView.setImageBitmap(result.getData());
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<BitmapLoader.Result> loader) {
            WelcomeFragment.this.gamerpicView.setImageBitmap(null);
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Profile.Response>> profileCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Profile.Response>>() { // from class: com.microsoft.xbox.idp.ui.WelcomeFragment.3
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Profile.Response>> onCreateLoader(int id, Bundle args) {
            Log.d(WelcomeFragment.TAG, "Creating LOADER_GAMER_PROFILE");
            String settings = Profile.SettingId.GameDisplayPicRaw + "," + Profile.SettingId.Gamerscore + "," + Profile.SettingId.Gamertag + "," + Profile.SettingId.FirstName + "," + Profile.SettingId.LastName;
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", EndpointsFactory.get().profile(), "/users/me/profile/settings?settings=" + settings), XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION);
            return new ObjectLoader(WelcomeFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), args.get(ErrorHelper.KEY_RESULT_KEY), Profile.Response.class, Profile.registerAdapters(new GsonBuilder()).create(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Profile.Response>> loader, ObjectLoader.Result<Profile.Response> result) {
            Log.d(WelcomeFragment.TAG, "Finished LOADER_GAMER_PROFILE");
            if (!result.hasData() || result.getData().profileUsers == null || result.getData().profileUsers.length <= 0) {
                Log.e(WelcomeFragment.TAG, "No gamer profile data");
                UTCError.trackServiceFailure("Service Error - Load Profile", "Welcome view", result.getError());
                WelcomeFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
                return;
            }
            Log.e(WelcomeFragment.TAG, "Got gamer profile data");
            WelcomeFragment.this.user = result.getData().profileUsers[0];
            UTCWelcome.trackPageView(WelcomeFragment.this.user, WelcomeFragment.this.getActivityTitle());
            WelcomeFragment.this.displayNameText.setText(WelcomeFragment.this.getString(R.string.xbid_first_and_last_name_android, new Object[]{WelcomeFragment.this.user.settings.get(Profile.SettingId.FirstName), WelcomeFragment.this.user.settings.get(Profile.SettingId.LastName)}));
            WelcomeFragment.this.gamerTagText.setText(WelcomeFragment.this.user.settings.get(Profile.SettingId.Gamertag));
            WelcomeFragment.this.gamerScoreText.setText(WelcomeFragment.this.user.settings.get(Profile.SettingId.Gamerscore));
            if (!TextUtils.isEmpty(WelcomeFragment.this.user.settings.get(Profile.SettingId.GameDisplayPicRaw))) {
                Bundle bundle = new Bundle();
                bundle.putString(ErrorHelper.KEY_RESULT_KEY, WelcomeFragment.this.user.settings.get(Profile.SettingId.GameDisplayPicRaw));
                WelcomeFragment.this.state.errorHelper.initLoader(2, bundle);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Profile.Response>> loader) {
        }
    };

    public interface Callbacks {
        void onCloseWithStatus(Status status);
    }

    public enum Status {
        NO_ERROR,
        ERROR_USER_CANCEL,
        ERROR_SWITCH_USER,
        PROVIDER_ERROR
    }

    static {
        $assertionsDisabled = !WelcomeFragment.class.desiredAssertionStatus();
        TAG = WelcomeFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.WelcomeFragment.4
            @Override // com.microsoft.xbox.idp.ui.WelcomeFragment.Callbacks
            public void onCloseWithStatus(Status status) {
            }
        };
    }

    public WelcomeFragment() {
        this.loaderMap.put(1, new ObjectLoaderInfo(this.profileCallbacks));
        this.loaderMap.put(2, new BitmapLoaderInfo(this.bitmapCallbacks));
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
        UTCPageView.removePage();
        super.onDetach();
        this.callbacks = NO_OP_CALLBACKS;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_welcome, container, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.state = savedInstanceState == null ? new State() : (State) savedInstanceState.getParcelable(KEY_STATE);
        this.state.errorHelper.setActivityContext(this);
        this.scrollView = (ScrollView) view.findViewById(R.id.xbid_scroll_container);
        this.bottomBarShadow = view.findViewById(R.id.xbid_bottom_bar_shadow);
        this.scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.idp.ui.WelcomeFragment.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                WelcomeFragment.this.bottomBarShadow.setVisibility(UiUtil.canScroll(WelcomeFragment.this.scrollView) ? 0 : 4);
            }
        });
        this.gamerpicView = (ImageView) view.findViewById(R.id.xbid_gamerpic);
        this.displayNameText = (TextView) view.findViewById(R.id.xbid_display_name);
        this.gamerTagText = (TextView) view.findViewById(R.id.xbid_gamertag);
        this.gamerScoreText = (TextView) view.findViewById(R.id.xbid_gamerscore);
        Button doneButton = (Button) view.findViewById(R.id.xbid_done);
        doneButton.setOnClickListener(this);
        TextView diffAccountLink = (TextView) view.findViewById(R.id.xbid_different_gamer_tag_answer);
        diffAccountLink.setOnClickListener(this);
        diffAccountLink.setText(Html.fromHtml("<u>" + getString(R.string.xbid_different_gamer_tag_answer) + "</u>"));
        Bundle args = getArguments();
        if (args != null) {
            if (args.containsKey("ARG_LOG_IN_BUTTON_TEXT")) {
                doneButton.setText(args.getString("ARG_LOG_IN_BUTTON_TEXT"));
            }
            if (args.containsKey("ARG_ALT_BUTTON_TEXT")) {
                doneButton.setText(args.getString("ARG_ALT_BUTTON_TEXT"));
            }
        }
        UTCWelcome.trackPageView(this.user, getActivityTitle());
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle args = getArguments();
        if (args != null) {
            Log.d(TAG, "Initializing LOADER_GAMER_PROFILE");
            Bundle bundle = new Bundle(args);
            bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(WelcomeFragment.class, 1));
            if (this.state.errorHelper != null) {
                this.state.errorHelper.initLoader(1, bundle);
                return;
            }
            return;
        }
        Log.e(TAG, "No arguments provided");
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
                Log.d(TAG, "onActivityResult");
                this.callbacks.onCloseWithStatus(Status.PROVIDER_ERROR);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.xbid_done) {
            UTCWelcome.trackDone(this.user, getActivityTitle());
            this.callbacks.onCloseWithStatus(Status.NO_ERROR);
        } else if (id == R.id.xbid_different_gamer_tag_answer) {
            UTCWelcome.trackChangeUser(this.user, getActivityTitle());
            UTCUser.setIsSilent(false);
            this.callbacks.onCloseWithStatus(Status.ERROR_SWITCH_USER);
        }
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.ActivityContext
    public ErrorHelper.LoaderInfo getLoaderInfo(int loaderId) {
        return this.loaderMap.get(loaderId);
    }

    private static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.WelcomeFragment.State.1
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
