package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.Loader;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.gson.Gson;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.model.Const;
import com.microsoft.xbox.idp.model.GamerTag;
import com.microsoft.xbox.idp.model.Suggestions;
import com.microsoft.xbox.idp.services.EndpointsFactory;
import com.microsoft.xbox.idp.telemetry.helpers.UTCError;
import com.microsoft.xbox.idp.telemetry.helpers.UTCPageView;
import com.microsoft.xbox.idp.telemetry.helpers.UTCSignup;
import com.microsoft.xbox.idp.telemetry.helpers.UTCUser;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCCommonDataModel;
import com.microsoft.xbox.idp.toolkit.ObjectLoader;
import com.microsoft.xbox.idp.util.ErrorHelper;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpUtil;
import com.microsoft.xbox.idp.util.ObjectLoaderInfo;
import com.microsoft.xbox.toolkit.network.XboxLiveEnvironment;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SignUpFragment extends BaseFragment implements View.OnClickListener, ErrorHelper.ActivityContext {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ARG_ACCOUNT_PROVISIONING_RESULT = "ARG_ACCOUNT_PROVISIONING_RESULT";
    private static final String KEY_STATE = "KEY_STATE";
    private static final int LOADER_CLAIM_GAMERTAG = 1;
    private static final int LOADER_RESERVE_GAMERTAG = 2;
    private static final int LOADER_SUGGESTIONS = 3;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private View bottomBarShadow;
    private Button claimItButton;
    private View clearTextButton;
    private EditText editTextGamerTag;
    private View editTextGamerTagContainer;
    private GamerTagState gamerTagState;
    private TextView privacyDetailsText;
    private TextView privacyText;
    private AccountProvisioningResult provisioningResult;
    private ScrollView scrollView;
    private View searchButton;
    private State state;
    private AbsListView suggestionsList;
    private ArrayAdapter<String> suggestionsListAdapter;
    private TextView textGamerTagComment;
    private final SparseArray<ErrorHelper.LoaderInfo> loaderMap = new SparseArray<>();
    private Callbacks callbacks = NO_OP_CALLBACKS;
    private final TextWatcher gamerTagChangeListener = new TextWatcher() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.3
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            SignUpFragment.this.resetGamerTagState(s);
        }
    };
    private final AdapterView.OnItemClickListener onSuggestionClickListener = new AdapterView.OnItemClickListener() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.4
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            SignUpFragment.this.editTextGamerTag.setText((CharSequence) SignUpFragment.this.suggestionsListAdapter.getItem(position));
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<GamerTag.Response>> gamerTagClaimCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<GamerTag.Response>>() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.5
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<GamerTag.Response>> onCreateLoader(int id, Bundle args) {
            Log.d(SignUpFragment.TAG, "Creating LOADER_CLAIM_GAMERTAG");
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", EndpointsFactory.get().accounts(), "/users/current/profile/gamertag"), XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION);
            GamerTag.Request req = new GamerTag.Request();
            req.gamertag = SignUpFragment.this.state.gamerTag;
            req.preview = false;
            req.reservationId = SignUpFragment.this.provisioningResult.getXuid();
            httpCall.setRequestBody(new Gson().toJson(req, GamerTag.Request.class));
            return new ObjectLoader(SignUpFragment.this.getActivity(), GamerTag.Response.class, new Gson(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<GamerTag.Response>> loader, ObjectLoader.Result<GamerTag.Response> result) {
            Log.d(SignUpFragment.TAG, "LOADER_CLAIM_GAMERTAG finished");
            if (!result.hasData()) {
                Log.e(SignUpFragment.TAG, "Error getting GamerTag.Response");
                SignUpFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
            } else if (result.getData().hasFree) {
                Log.i(SignUpFragment.TAG, "Gamertag claimed successfully");
                SignUpFragment.this.state.gamerTag = SignUpFragment.this.editTextGamerTag.getText().toString();
                Interop.UpdateGamerTag(SignUpFragment.this.state.gamerTag);
                SignUpFragment.this.callbacks.onCloseWithStatus(Status.NO_ERROR);
            } else {
                Log.e(SignUpFragment.TAG, "Gamertag is not free");
                SignUpFragment.this.state.errorHelper.startErrorActivity(ErrorActivity.ErrorScreen.CATCHALL);
            }
            SignUpFragment.this.resetGamerTagState(SignUpFragment.this.editTextGamerTag.getText());
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<GamerTag.Response>> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Void>> gamerTagReservationCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Void>>() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.6
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Void>> onCreateLoader(int id, Bundle args) {
            Log.d(SignUpFragment.TAG, "creating LOADER_RESERVE_GAMERTAG");
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", EndpointsFactory.get().userManagement(), "/gamertags/reserve"), "1");
            GamerTag.ReservationRequest req = new GamerTag.ReservationRequest(SignUpFragment.this.editTextGamerTag.getText().toString(), SignUpFragment.this.provisioningResult.getXuid());
            httpCall.setRequestBody(new Gson().toJson(req, GamerTag.ReservationRequest.class));
            return new ObjectLoader(SignUpFragment.this.getActivity(), Void.class, new Gson(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Void>> loader, ObjectLoader.Result<Void> result) {
            Log.d(SignUpFragment.TAG, "LOADER_RESERVE_GAMERTAG finished");
            if (!result.hasError()) {
                SignUpFragment.this.state.gamerTag = SignUpFragment.this.editTextGamerTag.getText().toString();
                SignUpFragment.this.state.reserved = true;
                SignUpFragment.this.resetGamerTagState(SignUpFragment.this.editTextGamerTag.getText());
                return;
            }
            if (result.getError().getHttpStatus() == 409) {
                SignUpFragment.this.state.gamerTagWithSuggestions = SignUpFragment.this.editTextGamerTag.getText().toString();
                SignUpFragment.this.resetGamerTagState(SignUpFragment.this.editTextGamerTag.getText());
                SignUpFragment.this.getLoaderManager().restartLoader(3, null, SignUpFragment.this.suggestionsCallbacks);
                return;
            }
            Log.e(SignUpFragment.TAG, result.getError().toString());
            UTCError.trackServiceFailure("Service Error - Reserve gamertag", "Sign up view", result.getError());
            SignUpFragment.this.setGamerTagState(GamerTagState.ERROR);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Void>> loader) {
            SignUpFragment.this.state.reserved = false;
            SignUpFragment.this.state.gamerTagWithSuggestions = null;
            SignUpFragment.this.resetGamerTagState(SignUpFragment.this.editTextGamerTag.getText());
        }
    };
    private final LoaderManager.LoaderCallbacks<ObjectLoader.Result<Suggestions.Response>> suggestionsCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<Suggestions.Response>>() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.7
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<Suggestions.Response>> onCreateLoader(int id, Bundle args) {
            Log.d(SignUpFragment.TAG, "Creating LOADER_SUGGESTIONS");
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", EndpointsFactory.get().userManagement(), "/gamertags/generate"), "1");
            Suggestions.Request req = new Suggestions.Request();
            req.Algorithm = 1;
            req.Count = 3;
            req.Locale = Locale.getDefault().toString().replace("_", "-");
            req.Seed = SignUpFragment.this.editTextGamerTag.getText().toString();
            Log.d(SignUpFragment.TAG, "getting suggestions for " + req.Seed);
            httpCall.setRequestBody(new Gson().toJson(req, Suggestions.Request.class));
            return new ObjectLoader(SignUpFragment.this.getActivity(), Suggestions.Response.class, new Gson(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<Suggestions.Response>> loader, ObjectLoader.Result<Suggestions.Response> result) {
            Log.d(SignUpFragment.TAG, "LOADER_SUGGESTIONS finished");
            if (result.hasData()) {
                Log.d(SignUpFragment.TAG, "Got suggestions");
                SignUpFragment.this.state.suggestions = result.getData();
                SignUpFragment.this.resetGamerTagState(SignUpFragment.this.editTextGamerTag.getText());
                return;
            }
            Log.d(SignUpFragment.TAG, "Error getting suggestions: " + result.getError());
            UTCError.trackServiceFailure("Service Error - Load suggestions", "Sign up view", result.getError());
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<Suggestions.Response>> loader) {
            SignUpFragment.this.state.suggestions = null;
        }
    };
    private final ClickableSpan xboxDotComLauncher = new ClickableSpan() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.8
        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Log.d(SignUpFragment.TAG, "xboxDotComLauncher.onClick");
            try {
                SignUpFragment.this.startActivity(new Intent("android.intent.action.VIEW", Const.URL_XBOX_COM));
            } catch (ActivityNotFoundException e) {
                Log.e(SignUpFragment.TAG, e.getMessage());
            }
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
        $assertionsDisabled = !SignUpFragment.class.desiredAssertionStatus();
        TAG = SignUpFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.9
            @Override // com.microsoft.xbox.idp.ui.SignUpFragment.Callbacks
            public void onCloseWithStatus(Status status) {
            }
        };
    }

    public SignUpFragment() {
        this.loaderMap.put(2, new ObjectLoaderInfo(this.gamerTagReservationCallbacks));
        this.loaderMap.put(1, new ObjectLoaderInfo(this.gamerTagClaimCallbacks));
        this.loaderMap.put(3, new ObjectLoaderInfo(this.suggestionsCallbacks));
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
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle args = getArguments();
        if (args == null) {
            Log.e(TAG, "No arguments provided");
            this.callbacks.onCloseWithStatus(Status.PROVIDER_ERROR);
        } else if (!args.containsKey(ARG_ACCOUNT_PROVISIONING_RESULT)) {
            Log.e(TAG, "No ARG_ACCOUNT_PROVISIONING_RESULT");
            this.callbacks.onCloseWithStatus(Status.PROVIDER_ERROR);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_sign_up, container, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.scrollView = (ScrollView) view.findViewById(R.id.xbid_scroll_container);
        this.bottomBarShadow = view.findViewById(R.id.xbid_bottom_bar_shadow);
        this.scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                SignUpFragment.this.bottomBarShadow.setVisibility(UiUtil.canScroll(SignUpFragment.this.scrollView) ? 0 : 4);
            }
        });
        this.editTextGamerTagContainer = view.findViewById(R.id.xbid_enter_gamertag_container);
        this.editTextGamerTag = (EditText) view.findViewById(R.id.xbid_enter_gamertag);
        this.editTextGamerTag.addTextChangedListener(this.gamerTagChangeListener);
        this.editTextGamerTag.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View v, boolean hasFocus) {
                SignUpFragment.this.editTextGamerTagContainer.setBackgroundResource(hasFocus ? R.drawable.xbid_edit_text_state_focused : R.drawable.xbid_edit_text_state_normal);
            }
        });
        this.clearTextButton = view.findViewById(R.id.xbid_clear_text);
        this.clearTextButton.setOnClickListener(this);
        this.searchButton = view.findViewById(R.id.xbid_search);
        this.searchButton.setOnClickListener(this);
        this.textGamerTagComment = (TextView) view.findViewById(R.id.xbid_enter_gamertag_comment);
        this.textGamerTagComment.setOnClickListener(this);
        this.privacyText = (TextView) view.findViewById(R.id.xbid_privacy);
        this.privacyDetailsText = (TextView) view.findViewById(R.id.xbid_privacy_details);
        TextView diffAccountLink = (TextView) view.findViewById(R.id.xbid_aleady_have_gamer_tag_answer);
        diffAccountLink.setOnClickListener(this);
        diffAccountLink.setText(Html.fromHtml("<u>" + getString(R.string.xbid_another_sign_in) + "</u>"));
        this.claimItButton = (Button) view.findViewById(R.id.xbid_claim_it);
        this.claimItButton.setOnClickListener(this);
        this.suggestionsList = (AbsListView) view.findViewById(R.id.xbid_suggestions_list);
        this.suggestionsListAdapter = new ArrayAdapter<>(getActivity(), R.layout.xbid_row_suggestion, R.id.xbid_suggestion_text);
        this.suggestionsList.setAdapter((ListAdapter) this.suggestionsListAdapter);
        this.suggestionsList.setOnItemClickListener(this.onSuggestionClickListener);
        Bundle args = getArguments();
        this.provisioningResult = (AccountProvisioningResult) args.getParcelable(ARG_ACCOUNT_PROVISIONING_RESULT);
        if (this.provisioningResult != null) {
            UTCCommonDataModel.setUserId(this.provisioningResult.getXuid());
        }
        UTCSignup.trackPageView(getActivityTitle());
        AccountProvisioningResult.AgeGroup ageGroup = this.provisioningResult.getAgeGroup();
        if (savedInstanceState == null) {
            this.state = new State();
            this.state.gamerTag = this.provisioningResult.getGamerTag();
            this.editTextGamerTag.setText(this.state.gamerTag);
        } else {
            this.state = (State) savedInstanceState.getParcelable(KEY_STATE);
            resetGamerTagState(this.editTextGamerTag.getText());
        }
        this.state.errorHelper.setActivityContext(this);
        this.privacyText.setText(getString(R.string.xbid_privacy_settings_header_android, new Object[]{getString(ageGroup.resIdAgeGroup)}));
        UiUtil.ensureClickableSpanOnUnderlineSpan(this.privacyDetailsText, ageGroup.resIdAgeGroupDetails, this.xboxDotComLauncher);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.state.errorHelper.restartLoader();
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
        if (id == R.id.xbid_enter_gamertag_comment || id == R.id.xbid_search) {
            setGamerTagState(GamerTagState.CHECKING);
            Log.d(TAG, "Restarting LOADER_RESERVE_GAMERTAG");
            UTCSignup.trackSearchGamerTag(this.provisioningResult, getActivityTitle());
            getLoaderManager().restartLoader(2, null, this.gamerTagReservationCallbacks);
            return;
        }
        if (id == R.id.xbid_aleady_have_gamer_tag_answer) {
            UTCSignup.trackSignInWithDifferentUser(this.provisioningResult, getActivityTitle());
            UTCUser.setIsSilent(false);
            this.callbacks.onCloseWithStatus(Status.ERROR_SWITCH_USER);
        } else {
            if (id == R.id.xbid_claim_it) {
                if (this.gamerTagState == GamerTagState.INITIAL) {
                    Log.d(TAG, "Interop.SignUpStatus.NO_ERROR");
                    this.callbacks.onCloseWithStatus(Status.NO_ERROR);
                } else {
                    Log.d(TAG, "Restarting LOADER_CLAIM_GAMERTAG");
                    getLoaderManager().restartLoader(1, null, this.gamerTagClaimCallbacks);
                }
                UTCSignup.trackClaimGamerTag(this.provisioningResult, getActivityTitle());
                return;
            }
            if (id == R.id.xbid_clear_text) {
                this.editTextGamerTag.setText("");
                UTCSignup.trackClearGamerTag(this.provisioningResult, getActivityTitle());
            }
        }
    }

    @Override // com.microsoft.xbox.idp.util.ErrorHelper.ActivityContext
    public ErrorHelper.LoaderInfo getLoaderInfo(int loaderId) {
        return this.loaderMap.get(loaderId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGamerTagState(GamerTagState newState) {
        boolean z = true;
        this.textGamerTagComment.setText(newState.getStringId());
        this.textGamerTagComment.setFocusable(newState == GamerTagState.UNKNOWN);
        this.editTextGamerTag.setEnabled((newState == GamerTagState.CHECKING || newState == GamerTagState.UNINITIALIZED) ? false : true);
        boolean searchEnabled = newState == GamerTagState.UNKNOWN || newState == GamerTagState.ERROR;
        this.textGamerTagComment.setEnabled(searchEnabled);
        this.searchButton.setEnabled(searchEnabled);
        this.searchButton.setVisibility(searchEnabled ? 0 : 8);
        Button button = this.claimItButton;
        if (newState != GamerTagState.AVAILABLE && newState != GamerTagState.INITIAL) {
            z = false;
        }
        button.setEnabled(z);
        if (newState == GamerTagState.UNAVAILABLE_WITH_SUGGESTIONS) {
            this.suggestionsListAdapter.clear();
            if (this.state.hasSuggestions()) {
                this.suggestionsListAdapter.addAll(this.state.suggestions.Gamertags);
            }
            this.suggestionsListAdapter.notifyDataSetChanged();
        } else if (this.gamerTagState == GamerTagState.UNAVAILABLE_WITH_SUGGESTIONS) {
            this.suggestionsListAdapter.clear();
            this.suggestionsListAdapter.notifyDataSetChanged();
        }
        this.clearTextButton.setVisibility(TextUtils.isEmpty(this.editTextGamerTag.getText()) ? 8 : 0);
        this.gamerTagState = newState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetGamerTagState(CharSequence gamertag) {
        if (TextUtils.isEmpty(this.state.gamerTag)) {
            setGamerTagState(GamerTagState.UNINITIALIZED);
            return;
        }
        if (TextUtils.isEmpty(gamertag)) {
            setGamerTagState(GamerTagState.EMPTY);
            return;
        }
        if (TextUtils.equals(gamertag, this.state.gamerTag)) {
            if (TextUtils.equals(this.state.gamerTag, this.provisioningResult.getGamerTag())) {
                setGamerTagState(GamerTagState.INITIAL);
                return;
            }
            if (this.state.reserved) {
                setGamerTagState(GamerTagState.AVAILABLE);
                return;
            } else if (TextUtils.equals(gamertag, this.state.gamerTagWithSuggestions)) {
                setGamerTagState(this.state.hasSuggestions() ? GamerTagState.UNAVAILABLE_WITH_SUGGESTIONS : GamerTagState.UNAVAILABLE);
                return;
            } else {
                setGamerTagState(GamerTagState.UNKNOWN);
                return;
            }
        }
        if (TextUtils.equals(gamertag, this.state.gamerTagWithSuggestions)) {
            setGamerTagState(this.state.hasSuggestions() ? GamerTagState.UNAVAILABLE_WITH_SUGGESTIONS : GamerTagState.UNAVAILABLE);
        } else {
            setGamerTagState(GamerTagState.UNKNOWN);
        }
    }

    private static class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.microsoft.xbox.idp.ui.SignUpFragment.State.1
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
        public String gamerTag;
        public String gamerTagWithSuggestions;
        public boolean reserved;
        public Suggestions.Response suggestions;

        public State() {
            this.gamerTag = null;
            this.reserved = false;
            this.gamerTagWithSuggestions = null;
            this.suggestions = null;
            this.errorHelper = new ErrorHelper();
        }

        public boolean hasSuggestions() {
            return (this.suggestions == null || this.suggestions.Gamertags == null || this.suggestions.Gamertags.isEmpty()) ? false : true;
        }

        protected State(Parcel in) {
            this.gamerTag = in.readString();
            this.reserved = in.readByte() != 0;
            this.gamerTagWithSuggestions = in.readString();
            this.suggestions = (Suggestions.Response) in.readParcelable(Suggestions.Response.class.getClassLoader());
            this.errorHelper = (ErrorHelper) in.readParcelable(ErrorHelper.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.gamerTag);
            dest.writeByte((byte) (this.reserved ? 1 : 0));
            dest.writeString(this.gamerTagWithSuggestions);
            dest.writeParcelable(this.suggestions, flags);
            dest.writeParcelable(this.errorHelper, flags);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }
    }

    private enum GamerTagState {
        UNINITIALIZED(R.string.xbid_tools_empty),
        INITIAL(R.string.xbid_gamertag_available),
        EMPTY(R.string.xbid_tools_empty),
        AVAILABLE(R.string.xbid_gamertag_available),
        UNAVAILABLE(R.string.xbid_gamertag_not_available_no_suggestions_android),
        UNAVAILABLE_WITH_SUGGESTIONS(R.string.xbid_gamertag_not_available_android),
        UNKNOWN(R.string.xbid_gamertag_check_availability),
        CHECKING(R.string.xbid_gamertag_checking_android),
        ERROR(R.string.xbid_gamertag_checking_error);

        private final int stringId;

        GamerTagState(int stringId) {
            this.stringId = stringId;
        }

        public int getStringId() {
            return this.stringId;
        }
    }
}
