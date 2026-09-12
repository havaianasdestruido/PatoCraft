package com.microsoft.xbox.xle.app.adapter;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderHomeScreenViewModel;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.ui.IconFontSubTextButton;
import com.microsoft.xbox.xle.ui.ImageTitleSubtitleButton;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xboxtcui.R;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderHomeScreenAdapter extends AdapterBase implements View.OnClickListener {
    private XLEButton doneButton;
    private ImageTitleSubtitleButton inviteFacebookButton;
    private CustomTypefaceTextView inviteFriendsTextView;
    private IconFontSubTextButton invitePhoneButton;
    private ImageTitleSubtitleButton linkFacebookButton;
    private IconFontSubTextButton linkPhoneButton;
    private FrameLayout loadingFrameLayout;
    private IconFontSubTextButton searchButton;
    private EditText searchEditText;
    private FrameLayout searchIconButton;
    private final ArrayList<Integer> searchImeActions;
    private RelativeLayout searchLayout;
    private FriendFinderHomeScreenViewModel viewModel;

    public FriendFinderHomeScreenAdapter(FriendFinderHomeScreenViewModel viewModel) {
        super(viewModel);
        this.searchImeActions = new ArrayList<>(Arrays.asList(6, 5, 3, 2, 4));
        this.viewModel = viewModel;
        this.linkFacebookButton = (ImageTitleSubtitleButton) findViewById(R.id.friendfinder_link_facebook);
        this.linkPhoneButton = (IconFontSubTextButton) findViewById(R.id.friendfinder_link_phone);
        this.searchButton = (IconFontSubTextButton) findViewById(R.id.friendfinder_link_search);
        this.searchIconButton = (FrameLayout) findViewById(R.id.friendfinder_search_icon);
        this.searchLayout = (RelativeLayout) findViewById(R.id.friendfinder_search_layout);
        this.searchEditText = (EditText) findViewById(R.id.friendfinder_search_edittext);
        this.inviteFacebookButton = (ImageTitleSubtitleButton) findViewById(R.id.friendfinder_home_invite_facebook);
        this.invitePhoneButton = (IconFontSubTextButton) findViewById(R.id.friendfinder_home_invite_phone);
        this.inviteFriendsTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_home_invite_friends_text);
        this.loadingFrameLayout = (FrameLayout) findViewById(R.id.friendfinder_home_loading);
        this.doneButton = (XLEButton) findViewById(R.id.friendfinder_home_done);
        XLEAssert.assertNotNull(this.linkFacebookButton);
        XLEAssert.assertNotNull(this.linkPhoneButton);
        XLEAssert.assertNotNull(this.searchButton);
        XLEAssert.assertNotNull(this.searchIconButton);
        XLEAssert.assertNotNull(this.searchLayout);
        XLEAssert.assertNotNull(this.searchEditText);
        XLEAssert.assertNotNull(this.inviteFacebookButton);
        XLEAssert.assertNotNull(this.invitePhoneButton);
        XLEAssert.assertNotNull(this.inviteFriendsTextView);
        XLEAssert.assertNotNull(this.loadingFrameLayout);
        XLEAssert.assertNotNull(this.doneButton);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        this.linkFacebookButton.setOnClickListener(this);
        this.linkPhoneButton.setOnClickListener(this);
        this.searchButton.setOnClickListener(this);
        this.inviteFacebookButton.setOnClickListener(this);
        this.invitePhoneButton.setOnClickListener(this);
        this.doneButton.setOnClickListener(this);
        this.linkFacebookButton.setImageUri("");
        this.inviteFacebookButton.setImageUri("");
        this.searchLayout.setVisibility(8);
        final String activityName = this.viewModel.getScreen().getName();
        this.searchIconButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderHomeScreenAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FriendFinderHomeScreenAdapter.this.viewModel.searchGamertag(FriendFinderHomeScreenAdapter.this.searchEditText.getText().toString());
            }
        });
        this.searchEditText.addTextChangedListener(new TextWatcher() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderHomeScreenAdapter.2
            private boolean isEnterKey;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                this.isEnterKey = s.length() > 0 && s.subSequence(s.length() + (-1), s.length()).toString().equalsIgnoreCase("\n");
                if (this.isEnterKey) {
                    UTCFriendFinder.trackGamertagSearchSubmit(activityName);
                    FriendFinderHomeScreenAdapter.this.viewModel.searchGamertag(FriendFinderHomeScreenAdapter.this.searchEditText.getText().toString());
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                if (this.isEnterKey) {
                    s.delete(s.length() - 1, s.length());
                }
            }
        });
        this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderHomeScreenAdapter.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (!FriendFinderHomeScreenAdapter.this.searchImeActions.contains(Integer.valueOf(actionId))) {
                    return false;
                }
                UTCFriendFinder.trackGamertagSearchSubmit(activityName);
                FriendFinderHomeScreenAdapter.this.viewModel.searchGamertag(FriendFinderHomeScreenAdapter.this.searchEditText.getText().toString());
                return true;
            }
        });
        this.searchEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderHomeScreenAdapter.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View v, boolean hasFocus) {
                InputMethodManager inputMethodManager = (InputMethodManager) FriendFinderHomeScreenAdapter.this.searchEditText.getContext().getSystemService("input_method");
                if (hasFocus) {
                    inputMethodManager.toggleSoftInput(2, 0);
                } else {
                    inputMethodManager.toggleSoftInput(1, 0);
                }
            }
        });
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        setViewVisibilities();
        String facebookIcon = this.viewModel.getFacebookIconUri();
        if (!JavaUtil.isNullOrEmpty(facebookIcon)) {
            this.linkFacebookButton.setImageUri(facebookIcon);
            this.inviteFacebookButton.setImageUri(facebookIcon);
        }
    }

    private void setViewVisibilities() {
        this.linkFacebookButton.setVisibility(this.viewModel.facebookLinked() ? 8 : 0);
        this.linkPhoneButton.setVisibility(this.viewModel.phoneLinked() ? 8 : 0);
        this.inviteFacebookButton.setVisibility(this.viewModel.facebookLinked() ? 0 : 8);
        this.invitePhoneButton.setVisibility(this.viewModel.phoneLinked() ? 0 : 8);
        this.loadingFrameLayout.setVisibility(this.viewModel.isBusy() ? 0 : 8);
        this.doneButton.setVisibility(this.viewModel.shouldShowDone() ? 0 : 8);
        this.inviteFriendsTextView.setVisibility((this.viewModel.facebookLinked() || this.viewModel.phoneLinked()) ? 0 : 8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        CharSequence activityName = this.viewModel.getScreen().getName();
        if (id == R.id.friendfinder_link_facebook) {
            UTCFriendFinder.trackFacebookSignup(activityName);
            this.viewModel.navigateToLinkFacebook();
            return;
        }
        if (id == R.id.friendfinder_link_phone) {
            UTCFriendFinder.trackContactsSignUp(activityName);
            this.viewModel.navigateToLinkPhone();
            return;
        }
        if (id == R.id.friendfinder_link_search) {
            UTCFriendFinder.trackGamertagSearch(activityName);
            this.searchLayout.setVisibility(0);
            this.searchButton.setVisibility(8);
            this.searchEditText.requestFocus();
            return;
        }
        if (id == R.id.friendfinder_home_invite_facebook) {
            UTCFriendFinder.trackFacebookSuggestions(activityName);
            this.viewModel.navigateToFacebookSuggestions();
        } else if (id == R.id.friendfinder_home_invite_phone) {
            UTCFriendFinder.trackContactsSuggestions(activityName);
            this.viewModel.navigateToPhoneSuggestions();
        } else if (id == R.id.friendfinder_home_done) {
            UTCFriendFinder.trackDone(activityName);
            this.viewModel.finishFriendFinder();
        }
    }
}
