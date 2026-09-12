package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Intent;
import android.content.Loader;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.gson.GsonBuilder;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.interop.XboxLiveAppConfig;
import com.microsoft.xbox.idp.model.Privacy;
import com.microsoft.xbox.idp.model.Profile;
import com.microsoft.xbox.idp.model.UserAccount;
import com.microsoft.xbox.idp.services.EndpointsFactory;
import com.microsoft.xbox.idp.telemetry.helpers.UTCError;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCNames;
import com.microsoft.xbox.idp.toolkit.ObjectLoader;
import com.microsoft.xbox.idp.toolkit.XTokenLoader;
import com.microsoft.xbox.idp.util.CacheUtil;
import com.microsoft.xbox.idp.util.ErrorHelper;
import com.microsoft.xbox.idp.util.FragmentLoaderKey;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpUtil;
import com.microsoft.xbox.idp.util.ObjectLoaderInfo;
import com.microsoft.xbox.idp.util.ResultLoaderInfo;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AccountProvisioningFragment extends BaseFragment implements ErrorHelper.ActivityContext {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String GAMERPIC_UPDATE_IMAGE_URL_KEY = "GAMERPIC_UPDATE_IMAGE_URL_KEY";
    private static final String KEY_STATE = "KEY_STATE";
    private static final int LOADER_GAMERPIC_CHOICE_LIST = 4;
    private static final int LOADER_GAMERPIC_UPDATE = 5;
    private static final int LOADER_GET_PRIVACY_SETTINGS = 6;
    private static final int LOADER_GET_PROFILE = 1;
    private static final int LOADER_POST_PROFILE = 2;
    private static final int LOADER_SET_PRIVACY_SETTINGS = 7;
    private static final int LOADER_XTOKEN = 3;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private Callbacks callbacks;
    private State state;
    private UserAccount userAccount;
    private XTokenLoader.Data xtokenData;
    private final SparseArray<ErrorHelper.LoaderInfo> loaderMap = new SparseArray<>();
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<UserAccount>> userProfileCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<UserAccount>>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<UserAccount>> onCreateLoader(int id, Bundle args) {
            switch (id) {
                case 1:
                    Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_GET_PROFILE");
                    return new ObjectLoader(AccountProvisioningFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), args.get(ErrorHelper.KEY_RESULT_KEY), UserAccount.class, UserAccount.registerAdapters(new GsonBuilder()).create(), HttpUtil.appendCommonParameters(new HttpCall("GET", EndpointsFactory.get().userAccount(), "/users/current/profile"), "4"));
                case 2:
                    Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_POST_PROFILE");
                    HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", EndpointsFactory.get().userAccount(), "/users/current/profile"), "4");
                    UserAccount ua = AccountProvisioningFragment.this.userAccount;
                    ua.touAcceptanceDate = new Date();
                    ua.msftOptin = false;
                    if (TextUtils.isEmpty(ua.legalCountry)) {
                        ua.legalCountry = Locale.getDefault().getCountry();
                    }
                    httpCall.setRequestBody(UserAccount.registerAdapters(new GsonBuilder()).create().toJson(ua, UserAccount.class));
                    return new ObjectLoader(AccountProvisioningFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), args.get(ErrorHelper.KEY_RESULT_KEY), UserAccount.class, UserAccount.registerAdapters(new GsonBuilder()).create(), httpCall);
                default:
                    return null;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<UserAccount>> loader, ObjectLoader.Result<UserAccount> result) {
            switch (loader.getId()) {
                case 1:
                    Log.d(AccountProvisioningFragment.TAG, "LOADER_GET_PROFILE finished");
                    if (result.hasData()) {
                        Log.e(AccountProvisioningFragment.TAG, "Got UserAccount");
                        AccountProvisioningFragment.this.userAccount = result.getData();
                        Bundle bundle = new Bundle(AccountProvisioningFragment.this.getArguments());
                        bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(SignUpFragment.class, 2));
                        AccountProvisioningFragment.this.state.errorHelper.initLoader(2, bundle);
                    } else {
                        Log.e(AccountProvisioningFragment.TAG, "Error getting UserAccount");
                        UTCError.trackServiceFailure("Service Error - Profile Load", "Sign up view", result.getError());
                        AccountProvisioningFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CREATION);
                    }
                    break;
                case 2:
                    Log.d(AccountProvisioningFragment.TAG, "LOADER_POST_PROFILE finished");
                    if (result.hasData()) {
                        Log.e(AccountProvisioningFragment.TAG, "Got UserAccount");
                        AccountProvisioningFragment.this.userAccount = result.getData();
                        Bundle args = AccountProvisioningFragment.this.getArguments();
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("ARG_USER_PTR", args.getLong("ARG_USER_PTR"));
                        bundle2.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(SignUpFragment.class, 3));
                        AccountProvisioningFragment.this.state.errorHelper.initLoader(3, bundle2);
                    } else {
                        Log.e(AccountProvisioningFragment.TAG, "Error getting UserAccount");
                        UTCError.trackServiceFailure("Service Error - Profile Load", "Sign up view", result.getError());
                        AccountProvisioningFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CREATION);
                    }
                    break;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<UserAccount>> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<XTokenLoader.Result> xtokenCallbacks = new LoaderManager.LoaderCallbacks<XTokenLoader.Result>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<XTokenLoader.Result> onCreateLoader(int id, Bundle args) {
            Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_XTOKEN");
            return new XTokenLoader(AccountProvisioningFragment.this.getActivity(), args.getLong("ARG_USER_PTR"), CacheUtil.getResultCache(XTokenLoader.Result.class), args.get(ErrorHelper.KEY_RESULT_KEY));
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<XTokenLoader.Result> loader, XTokenLoader.Result result) {
            Log.d(AccountProvisioningFragment.TAG, "LOADER_XTOKEN finished");
            if (!result.hasData()) {
                Log.d(AccountProvisioningFragment.TAG, "LOADER_XTOKEN: " + result.getError());
                UTCError.trackServiceFailure("Service Error - Load XTOKEN", "Sign up view", result.getError());
                AccountProvisioningFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
                return;
            }
            AccountProvisioningFragment.this.xtokenData = result.getData();
            AccountProvisioningFragment.this.state.result = new AccountProvisioningResult(AccountProvisioningFragment.this.userAccount.gamerTag, AccountProvisioningFragment.this.userAccount.userXuid);
            AccountProvisioningResult.AgeGroup ageGroup = AccountProvisioningResult.AgeGroup.fromServiceString(AccountProvisioningFragment.this.xtokenData.getAuthFlowResult().getAgeGroup());
            if (ageGroup != null) {
                Log.d(AccountProvisioningFragment.TAG, "ageGroup: " + ageGroup);
                AccountProvisioningFragment.this.state.result.setAgeGroup(ageGroup);
                if (ageGroup == AccountProvisioningResult.AgeGroup.Child) {
                    AccountProvisioningFragment.this.callbacks.onCloseWithStatus(Status.NO_ERROR, AccountProvisioningFragment.this.state.result);
                    return;
                } else {
                    Bundle bundle = new Bundle();
                    AccountProvisioningFragment.this.state.errorHelper.initLoader(4, bundle);
                    return;
                }
            }
            Log.e(AccountProvisioningFragment.TAG, "Unknown age group");
            AccountProvisioningFragment.this.callbacks.onCloseWithStatus(Status.NO_ERROR, AccountProvisioningFragment.this.state.result);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<XTokenLoader.Result> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Privacy.Settings>> getPrivacySettingsCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Privacy.Settings>>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.3
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Privacy.Settings>> onCreateLoader(int id, Bundle args) {
            Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_GET_PRIVACY_SETTINGS");
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", EndpointsFactory.get().privacy(), "/users/me/privacy/settings"), "4");
            return new ObjectLoader(AccountProvisioningFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), args.get(ErrorHelper.KEY_RESULT_KEY), Privacy.Settings.class, Privacy.registerAdapters(new GsonBuilder()).create(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Privacy.Settings>> loader, ObjectLoader.Result<Privacy.Settings> result) {
            Log.d(AccountProvisioningFragment.TAG, "LOADER_GET_PRIVACY_SETTINGS finished");
            if (result.hasData()) {
                Log.d(AccountProvisioningFragment.TAG, "Got privacy settings");
                Privacy.Settings ps = result.getData();
                if (ps.settings == null) {
                    Log.d(AccountProvisioningFragment.TAG, "Privacy settings map is null");
                    AccountProvisioningFragment.this.callbacks.onCloseWithStatus(Status.NO_ERROR, AccountProvisioningFragment.this.state.result);
                    return;
                }
                if (ps.isSettingSet(Privacy.Key.ShareIdentity) || ps.isSettingSet(Privacy.Key.ShareIdentityTransitively)) {
                    Log.d(AccountProvisioningFragment.TAG, "ShareIdentity or ShareIdentityTransitively are set");
                    Log.d(AccountProvisioningFragment.TAG, "ShareIdentity: " + ps.settings.get(Privacy.Key.ShareIdentity));
                    Log.d(AccountProvisioningFragment.TAG, "ShareIdentityTransitively: " + ps.settings.get(Privacy.Key.ShareIdentityTransitively));
                    AccountProvisioningFragment.this.callbacks.onCloseWithStatus(Status.NO_ERROR, AccountProvisioningFragment.this.state.result);
                    return;
                }
                Log.d(AccountProvisioningFragment.TAG, "ShareIdentity and ShareIdentityTransitively are NotSet");
                Bundle bundle = new Bundle();
                bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(SignUpFragment.class, 7));
                AccountProvisioningFragment.this.state.errorHelper.initLoader(7, bundle);
                return;
            }
            Log.e(AccountProvisioningFragment.TAG, "Error getting privacy settings: " + result.getError());
            UTCError.trackServiceFailure("Service Error - Load privacy settings", "Sign up view", result.getError());
            AccountProvisioningFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Privacy.Settings>> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Void>> setPrivacySettingsCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Void>>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.4
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Void>> onCreateLoader(int id, Bundle args) {
            Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_SET_PRIVACY_SETTINGS");
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("PUT", EndpointsFactory.get().privacy(), "/users/me/privacy/settings"), "4");
            Privacy.Settings ps = Privacy.Settings.newWithMap();
            ps.settings.put(Privacy.Key.ShareIdentity, Privacy.Value.PeopleOnMyList);
            ps.settings.put(Privacy.Key.ShareIdentityTransitively, Privacy.Value.Everyone);
            httpCall.setRequestBody(Privacy.registerAdapters(new GsonBuilder()).create().toJson(ps, Privacy.Settings.class));
            return new ObjectLoader(AccountProvisioningFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), args.get(ErrorHelper.KEY_RESULT_KEY), Void.class, Privacy.registerAdapters(new GsonBuilder()).create(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Void>> loader, ObjectLoader.Result<Void> result) {
            Log.d(AccountProvisioningFragment.TAG, "LOADER_SET_PRIVACY_SETTINGS finished");
            if (result.hasError()) {
                Log.e(AccountProvisioningFragment.TAG, "Error setting privacy settings: " + result.getError());
                UTCError.trackServiceFailure("Service Error - Set privacy settings", "Sign up view", result.getError());
                AccountProvisioningFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
            } else {
                Log.e(AccountProvisioningFragment.TAG, "Privacy settings set successfully");
                AccountProvisioningFragment.this.callbacks.onCloseWithStatus(Status.NO_ERROR, AccountProvisioningFragment.this.state.result);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Void>> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Profile.GamerpicUpdateResponse>> gamerpicUpdateCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Profile.GamerpicUpdateResponse>>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.5
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Profile.GamerpicUpdateResponse>> onCreateLoader(int id, Bundle args) {
            Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_GAMERPIC_UPDATE");
            Profile.GamerpicChangeRequest req = new Profile.GamerpicChangeRequest(args.getString(AccountProvisioningFragment.GAMERPIC_UPDATE_IMAGE_URL_KEY));
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", EndpointsFactory.get().profile(), "/users/me/profile/settings/PublicGamerpic"), "3");
            httpCall.setRequestBody(new GsonBuilder().create().toJson(req, Profile.GamerpicChangeRequest.class));
            return new ObjectLoader(AccountProvisioningFragment.this.getActivity(), null, args.get(ErrorHelper.KEY_RESULT_KEY), Profile.GamerpicUpdateResponse.class, Profile.registerAdapters(new GsonBuilder()).create(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Profile.GamerpicUpdateResponse>> loader, ObjectLoader.Result<Profile.GamerpicUpdateResponse> result) {
            Log.d(AccountProvisioningFragment.TAG, "Finished LOADER_GAMERPIC_UPDATE");
            if (result.hasError()) {
                UTCError.trackServiceFailure(UTCNames.Service.Errors.GamerPicUpdate, "Introducing view", result.getError());
                Log.e(AccountProvisioningFragment.TAG, "Failed to update gamerpic");
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(SignUpFragment.class, 6));
            AccountProvisioningFragment.this.state.errorHelper.initLoader(6, bundle);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Profile.GamerpicUpdateResponse>> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Profile.GamerpicChoiceList>> gamerpicChoiceListCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Profile.GamerpicChoiceList>>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.6
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Profile.GamerpicChoiceList>> onCreateLoader(int id, Bundle args) {
            Log.d(AccountProvisioningFragment.TAG, "Creating LOADER_GAMERPIC_CHOICE_LIST");
            XboxLiveAppConfig config = new XboxLiveAppConfig();
            int titleId = config.getOverrideTitleId();
            if (titleId == 0) {
                titleId = config.getTitleId();
            }
            String url = String.format("/public/content/ppl/gamerpics/gamerpicsautoassign-%08X.json", Integer.valueOf(titleId));
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", "http://dlassets.xboxlive.com", url), "3");
            return new ObjectLoader(AccountProvisioningFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), args.get(ErrorHelper.KEY_RESULT_KEY), Profile.GamerpicChoiceList.class, Profile.registerAdapters(new GsonBuilder()).create(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Profile.GamerpicChoiceList>> loader, ObjectLoader.Result<Profile.GamerpicChoiceList> result) {
            Log.d(AccountProvisioningFragment.TAG, "Finished LOADER_GAMERPIC_CHOICE_LIST");
            if (!result.hasData() || result.getData().gamerpics == null) {
                Log.e(AccountProvisioningFragment.TAG, "Failed to get gamerpic choice list");
                UTCError.trackServiceFailure(UTCNames.Service.Errors.GamerPicChoiceList, "Welcome view", result.getError());
                Bundle bundle = new Bundle();
                bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(SignUpFragment.class, 6));
                AccountProvisioningFragment.this.state.errorHelper.initLoader(6, bundle);
                return;
            }
            Log.e(AccountProvisioningFragment.TAG, "Got gamerpic choice list");
            List<Profile.GamerpicListEntry> gamerPicList = result.getData().gamerpics;
            if (!gamerPicList.isEmpty()) {
                Random r = new Random();
                int index = r.nextInt(gamerPicList.size());
                String gamerPicUrl = String.format("http://dlassets.xboxlive.com/public/content/ppl/gamerpics/%s-xl.png", gamerPicList.get(index).id);
                Bundle gamerPicUpdateArgs = new Bundle();
                gamerPicUpdateArgs.putString(AccountProvisioningFragment.GAMERPIC_UPDATE_IMAGE_URL_KEY, gamerPicUrl);
                AccountProvisioningFragment.this.state.errorHelper.initLoader(5, gamerPicUpdateArgs);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Profile.GamerpicChoiceList>> loader) {
        }
    };

    public interface Callbacks {
        void onCloseWithStatus(Status status, AccountProvisioningResult accountProvisioningResult);
    }

    public enum Status {
        NO_ERROR,
        PROVIDER_ERROR,
        ERROR_USER_CANCEL
    }

    static {
        $assertionsDisabled = !AccountProvisioningFragment.class.desiredAssertionStatus();
        TAG = AccountProvisioningFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.7
            @Override // com.microsoft.xbox.idp.ui.AccountProvisioningFragment.Callbacks
            public void onCloseWithStatus(Status status, AccountProvisioningResult result) {
            }
        };
    }

    public AccountProvisioningFragment() {
        this.loaderMap.put(1, new ObjectLoaderInfo(this.userProfileCallbacks));
        this.loaderMap.put(2, new ObjectLoaderInfo(this.userProfileCallbacks));
        this.loaderMap.put(3, new ResultLoaderInfo(XTokenLoader.Result.class, this.xtokenCallbacks));
        this.loaderMap.put(4, new ObjectLoaderInfo(this.gamerpicChoiceListCallbacks));
        this.loaderMap.put(5, new ObjectLoaderInfo(this.gamerpicUpdateCallbacks));
        this.loaderMap.put(6, new ObjectLoaderInfo(this.getPrivacySettingsCallbacks));
        this.loaderMap.put(7, new ObjectLoaderInfo(this.setPrivacySettingsCallbacks));
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
            Log.e(TAG, "No arguments provided");
            this.callbacks.onCloseWithStatus(Status.PROVIDER_ERROR, null);
        } else if (!args.containsKey("ARG_USER_PTR")) {
            Log.e(TAG, "No ARG_USER_PTR");
            this.callbacks.onCloseWithStatus(Status.PROVIDER_ERROR, null);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_busy, container, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.state = savedInstanceState == null ? new State() : (State) savedInstanceState.getParcelable(KEY_STATE);
        this.state.errorHelper.setActivityContext(this);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle args = getArguments();
        Log.d(TAG, "Initializing LOADER_GET_PROFILE");
        Bundle bundle = new Bundle(args);
        bundle.putParcelable(ErrorHelper.KEY_RESULT_KEY, new FragmentLoaderKey(SignUpFragment.class, 1));
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
                Log.d(TAG, "onActivityResult");
                this.callbacks.onCloseWithStatus(Status.PROVIDER_ERROR, null);
            }
        }
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.ActivityContext
    public ErrorHelper.LoaderInfo getLoaderInfo(int loaderId) {
        return this.loaderMap.get(loaderId);
    }

    public static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningFragment.State.1
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
        public AccountProvisioningResult result;

        public State() {
            this.errorHelper = new ErrorHelper();
        }

        protected State(Parcel in) {
            this.errorHelper = (ErrorHelper) in.readParcelable(ErrorHelper.class.getClassLoader());
            this.result = (AccountProvisioningResult) in.readParcelable(AccountProvisioningResult.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.errorHelper, flags);
            dest.writeParcelable(this.result, flags);
        }
    }
}
