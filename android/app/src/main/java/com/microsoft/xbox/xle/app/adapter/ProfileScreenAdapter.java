package com.microsoft.xbox.xle.app.adapter;

import android.view.View;
import android.widget.ScrollView;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.FastProgressBar;
import com.microsoft.xbox.toolkit.ui.XLERoundedUniversalImageView;
import com.microsoft.xbox.xle.app.ImageUtil;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel;
import com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub;
import com.microsoft.xbox.xle.ui.IconFontToggleButton;
import com.microsoft.xbox.xle.ui.XLERootView;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxAppDeepLinker;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProfileScreenAdapter extends AdapterBase {
    private IconFontToggleButton blockButton;
    private ScrollView contentScrollView;
    private IconFontToggleButton followButton;
    private XLERoundedUniversalImageView gamerPicImageView;
    private CustomTypefaceTextView gamerscoreIconTextView;
    private CustomTypefaceTextView gamerscoreTextView;
    private CustomTypefaceTextView gamertagTextView;
    private FastProgressBar loadingProgressBar;
    private IconFontToggleButton muteButton;
    private CustomTypefaceTextView realNameTextView;
    private IconFontToggleButton reportButton;
    private XLERootView rootView;
    private IconFontToggleButton viewInXboxAppButton;
    private CustomTypefaceTextView viewInXboxAppSubTextView;
    private ProfileScreenViewModel viewModel;

    public ProfileScreenAdapter(ProfileScreenViewModel viewModel) {
        super(viewModel);
        this.viewModel = viewModel;
        this.rootView = (XLERootView) findViewById(R.id.profile_root);
        this.gamerPicImageView = (XLERoundedUniversalImageView) findViewById(R.id.profile_gamerpic);
        this.loadingProgressBar = (FastProgressBar) findViewById(R.id.profile_screen_loading);
        this.contentScrollView = (ScrollView) findViewById(R.id.profile_screen_content_list);
        this.realNameTextView = (CustomTypefaceTextView) findViewById(R.id.profile_realname);
        this.gamerscoreIconTextView = (CustomTypefaceTextView) findViewById(R.id.profile_gamerscore_icon);
        this.gamerscoreTextView = (CustomTypefaceTextView) findViewById(R.id.profile_gamerscore);
        this.gamertagTextView = (CustomTypefaceTextView) findViewById(R.id.profile_gamertag);
        this.followButton = (IconFontToggleButton) findViewById(R.id.profile_follow);
        this.muteButton = (IconFontToggleButton) findViewById(R.id.profile_mute);
        this.blockButton = (IconFontToggleButton) findViewById(R.id.profile_block);
        this.reportButton = (IconFontToggleButton) findViewById(R.id.profile_report);
        this.viewInXboxAppButton = (IconFontToggleButton) findViewById(R.id.profile_view_in_xbox_app);
        this.viewInXboxAppSubTextView = (CustomTypefaceTextView) findViewById(R.id.profile_view_in_xbox_app_subtext);
        this.viewInXboxAppButton.setVisibility(0);
        this.viewInXboxAppButton.setEnabled(true);
        this.viewInXboxAppButton.setChecked(true);
        if (this.viewModel.isMeProfile()) {
            this.followButton.setVisibility(8);
            this.muteButton.setVisibility(8);
            this.blockButton.setVisibility(8);
            this.reportButton.setVisibility(8);
            this.viewInXboxAppSubTextView.setText(R.string.Profile_ViewInXboxApp_Details_MeProfile);
            return;
        }
        this.followButton.setVisibility(0);
        this.followButton.setEnabled(true);
        this.muteButton.setVisibility(0);
        this.muteButton.setEnabled(true);
        this.muteButton.setChecked(false);
        this.blockButton.setVisibility(0);
        this.blockButton.setEnabled(false);
        this.reportButton.setVisibility(0);
        this.reportButton.setEnabled(true);
        this.reportButton.setChecked(false);
        this.viewInXboxAppSubTextView.setText(R.string.Profile_ViewInXboxApp_Details_YouProfile);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        if (this.followButton != null) {
            this.followButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    ProfileScreenAdapter.this.viewModel.navigateToChangeRelationship();
                }
            });
        }
        if (this.muteButton != null) {
            this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    ProfileScreenAdapter.this.muteButton.toggle();
                    ProfileScreenAdapter.this.muteButton.setEnabled(false);
                    if (ProfileScreenAdapter.this.muteButton.isChecked()) {
                        UTCPeopleHub.trackMute(true);
                        ProfileScreenAdapter.this.viewModel.muteUser();
                    } else {
                        UTCPeopleHub.trackMute(false);
                        ProfileScreenAdapter.this.viewModel.unmuteUser();
                    }
                }
            });
        }
        if (this.blockButton != null) {
            this.blockButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    ProfileScreenAdapter.this.blockButton.toggle();
                    ProfileScreenAdapter.this.blockButton.setEnabled(false);
                    if (ProfileScreenAdapter.this.blockButton.isChecked()) {
                        UTCPeopleHub.trackBlock();
                        ProfileScreenAdapter.this.viewModel.blockUser();
                    } else {
                        UTCPeopleHub.trackUnblock();
                        ProfileScreenAdapter.this.viewModel.unblockUser();
                    }
                }
            });
        }
        if (this.reportButton != null) {
            this.reportButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    UTCPeopleHub.trackReport();
                    ProfileScreenAdapter.this.viewModel.showReportDialog();
                }
            });
        }
        if (this.viewInXboxAppButton != null) {
            if (XboxAppDeepLinker.appDeeplinkingSupported()) {
                this.viewInXboxAppButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        UTCPeopleHub.trackViewInXboxApp();
                        ProfileScreenAdapter.this.viewModel.launchXboxApp();
                    }
                });
            } else {
                this.viewInXboxAppButton.setVisibility(8);
                this.viewInXboxAppSubTextView.setVisibility(8);
            }
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        if (this.rootView != null) {
            this.rootView.setBackgroundColor(this.viewModel.getPreferredColor());
        }
        this.loadingProgressBar.setVisibility(this.viewModel.isBusy() ? 0 : 8);
        this.contentScrollView.setVisibility(this.viewModel.isBusy() ? 8 : 0);
        if (this.gamerPicImageView != null) {
            this.gamerPicImageView.setImageURI2(ImageUtil.getMedium(this.viewModel.getGamerPicUrl()), R.drawable.gamerpic_missing, R.drawable.gamerpic_missing);
        }
        if (this.realNameTextView != null) {
            String realName = this.viewModel.getRealName();
            if (!JavaUtil.isNullOrEmpty(realName)) {
                this.realNameTextView.setText(realName);
                this.realNameTextView.setVisibility(0);
            } else {
                this.realNameTextView.setVisibility(8);
            }
        }
        if (this.gamerscoreTextView != null && this.gamerscoreIconTextView != null) {
            String gamerScore = this.viewModel.getGamerScore();
            if (!JavaUtil.isNullOrEmpty(gamerScore)) {
                XLEUtil.updateTextAndVisibilityIfNotNull(this.gamerscoreTextView, gamerScore, 0);
                XLEUtil.updateVisibilityIfNotNull(this.gamerscoreIconTextView, 0);
            }
        }
        if (this.gamertagTextView != null) {
            String gamerTag = this.viewModel.getGamerTag();
            if (!JavaUtil.isNullOrEmpty(gamerTag)) {
                XLEUtil.updateTextAndVisibilityIfNotNull(this.gamertagTextView, gamerTag, 0);
            }
        }
        if (!this.viewModel.isMeProfile()) {
            boolean pendingBlockChange = this.viewModel.getIsAddingUserToBlockList() || this.viewModel.getIsRemovingUserFromBlockList();
            this.followButton.setChecked(this.viewModel.isCallerFollowingTarget());
            this.followButton.setEnabled((pendingBlockChange || this.viewModel.getIsBlocked()) ? false : true);
            this.muteButton.setChecked(this.viewModel.getIsMuted());
            this.muteButton.setEnabled((this.viewModel.getIsAddingUserToMutedList() || this.viewModel.getIsRemovingUserFromMutedList()) ? false : true);
            this.blockButton.setChecked(this.viewModel.getIsBlocked());
            this.blockButton.setEnabled(pendingBlockChange ? false : true);
        }
    }
}
