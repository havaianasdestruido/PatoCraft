package com.microsoft.xbox.xle.app.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.XLEManagedDialog;
import com.microsoft.xbox.toolkit.network.ListState;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.FastProgressBar;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.SwitchPanel;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.toolkit.ui.XLECheckBox;
import com.microsoft.xbox.toolkit.ui.XLEClickableLayout;
import com.microsoft.xbox.toolkit.ui.XLEUniversalImageView;
import com.microsoft.xbox.xle.app.ImageUtil;
import com.microsoft.xbox.xle.app.SGProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xbox.xle.telemetry.helpers.UTCChangeRelationship;
import com.microsoft.xbox.xle.viewmodel.ChangeFriendshipDialogViewModel;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ChangeFriendshipDialog extends XLEManagedDialog {
    private RadioButton addFavorite;
    private RadioButton addFriend;
    private XLEButton cancelButton;
    private SwitchPanel changeFriendshipSwitchPanel;
    private XLEButton confirmButton;
    private CustomTypefaceTextView favoriteIconView;
    private CustomTypefaceTextView gamertag;
    private FastProgressBar overlayLoadingIndicator;
    private ViewModelBase previousVM;
    private TextView profileAccountTier;
    private CustomTypefaceTextView profileGamerScore;
    private XLEUniversalImageView profilePic;
    private CustomTypefaceTextView realName;
    private XLEClickableLayout removeFriendLayout;
    private XLECheckBox shareRealNameCheckbox;
    private ChangeFriendshipDialogViewModel vm;

    public ChangeFriendshipDialog(Context context, ChangeFriendshipDialogViewModel vm, ViewModelBase previousVM) {
        super(context, R.style.TcuiDialog);
        this.previousVM = previousVM;
        this.vm = vm;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setLayout(-1, -1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.change_friendship_dialog);
        this.profilePic = (XLEUniversalImageView) findViewById(R.id.change_friendship_profile_pic);
        this.gamertag = (CustomTypefaceTextView) findViewById(R.id.gamertag_text);
        this.realName = (CustomTypefaceTextView) findViewById(R.id.realname_text);
        this.profileAccountTier = (TextView) findViewById(R.id.peoplehub_info_gamerscore_icon);
        this.profileGamerScore = (CustomTypefaceTextView) findViewById(R.id.peoplehub_info_gamerscore);
        this.addFriend = (RadioButton) findViewById(R.id.add_as_friend);
        this.addFavorite = (RadioButton) findViewById(R.id.add_as_favorite);
        this.shareRealNameCheckbox = (XLECheckBox) findViewById(R.id.share_real_name_checkbox);
        this.confirmButton = (XLEButton) findViewById(R.id.submit_button);
        this.cancelButton = (XLEButton) findViewById(R.id.cancel_button);
        this.changeFriendshipSwitchPanel = (SwitchPanel) findViewById(R.id.change_friendship_switch_panel);
        this.removeFriendLayout = (XLEClickableLayout) findViewById(R.id.remove_friend_btn_layout);
        this.favoriteIconView = (CustomTypefaceTextView) findViewById(R.id.people_favorites_icon);
        this.overlayLoadingIndicator = (FastProgressBar) findViewById(R.id.overlay_loading_indicator);
        FrameLayout frameLayout = new FrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 5;
        XLEButton closeButton = new XLEButton(getContext());
        closeButton.setPadding(60, 0, 0, 0);
        closeButton.setBackgroundResource(R.drawable.common_button_background);
        closeButton.setText(R.string.ic_Close);
        closeButton.setTextColor(-1);
        closeButton.setTextSize(2, 14.0f);
        closeButton.setTypeFace("fonts/SegXboxSymbol.ttf");
        closeButton.setContentDescription(getContext().getResources().getString(R.string.TextInput_Confirm));
        closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                try {
                    ChangeFriendshipDialog.this.dismiss();
                    NavigationManager.getInstance().PopAllScreens();
                } catch (XLEException e) {
                }
            }
        });
        closeButton.setOnKeyListener(new View.OnKeyListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (keyCode != 4 || event.getAction() != 1) {
                    return false;
                }
                ChangeFriendshipDialog.this.dismiss();
                return true;
            }
        });
        frameLayout.addView(closeButton);
        addContentView(frameLayout, layoutParams);
    }

    @Override // android.app.Dialog
    public void onStart() {
        this.vm.load();
        updateView();
        this.changeFriendshipSwitchPanel.setBackgroundColor(this.vm.getPreferredColor());
        UTCChangeRelationship.trackChangeRelationshipView(getActivityName(), this.vm.getXuid());
    }

    public void updateView() {
        if (this.vm.getViewModelState() == ListState.ValidContentState) {
            setDialogValidContentView();
            XLEUtil.updateAndShowTextViewUnlessEmpty(this.gamertag, this.vm.getGamerTag());
            if (this.profilePic != null) {
                this.profilePic.setImageURI2(ImageUtil.getMedium(this.vm.getGamerPicUrl()), R.drawable.gamerpic_missing, R.drawable.gamerpic_missing);
            }
            XLEUtil.updateAndShowTextViewUnlessEmpty(this.realName, this.vm.getRealName());
            XLEUtil.updateVisibilityIfNotNull(this.favoriteIconView, this.vm.getIsFavorite() ? 0 : 4);
            if (this.vm.getIsFavorite()) {
                this.favoriteIconView.setTextColor(getContext().getResources().getColor(R.color.XboxGreen));
            }
            String gamerScore = this.vm.getGamerScore();
            if (gamerScore != null && !gamerScore.equalsIgnoreCase("0")) {
                XLEUtil.updateAndShowTextViewUnlessEmpty(this.profileGamerScore, this.vm.getGamerScore());
                XLEUtil.updateVisibilityIfNotNull(this.profileAccountTier, 0);
            }
            if (this.addFriend != null) {
                if (this.vm.getIsFollowing()) {
                    this.addFriend.setChecked(true);
                } else {
                    this.vm.setShouldAddUserToFriendList(true);
                    this.addFriend.setChecked(true);
                }
                this.addFriend.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        if (!ChangeFriendshipDialog.this.vm.getIsFollowing()) {
                            ChangeFriendshipDialog.this.vm.setShouldAddUserToFriendList(true);
                        }
                        if (ChangeFriendshipDialog.this.vm.getIsFavorite()) {
                            ChangeFriendshipDialog.this.vm.setShouldRemoveUserFromFavoriteList(true);
                        }
                        ChangeFriendshipDialog.this.vm.setShouldAddUserToFavoriteList(false);
                    }
                });
            }
            if (this.addFavorite != null) {
                if (this.vm.getIsFavorite()) {
                    this.addFavorite.setChecked(true);
                }
                this.addFavorite.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        if (!ChangeFriendshipDialog.this.vm.getIsFavorite()) {
                            ChangeFriendshipDialog.this.vm.setShouldAddUserToFavoriteList(true);
                        }
                        ChangeFriendshipDialog.this.vm.setShouldRemoveUserFromFavoriteList(false);
                    }
                });
            }
            if (this.confirmButton != null) {
                this.confirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        ChangeFriendshipDialog.this.changeFriendshipSwitchPanel.setState(1);
                        ChangeFriendshipDialog.this.vm.onChangeRelationshipCompleted();
                    }
                });
            }
            if (this.cancelButton != null) {
                this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        ChangeFriendshipDialog.this.dismissSelf();
                        ChangeFriendshipDialog.this.vm.clearChangeFriendshipForm();
                    }
                });
            }
            if (this.shareRealNameCheckbox != null) {
                this.shareRealNameCheckbox.setChecked(this.vm.getCallerMarkedTargetAsIdentityShared());
                this.shareRealNameCheckbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.7
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        ChangeFriendshipDialog.this.vm.setIsSharingRealNameEnd(isChecked);
                        if (isChecked) {
                            if (!ChangeFriendshipDialog.this.vm.getCallerMarkedTargetAsIdentityShared()) {
                                ChangeFriendshipDialog.this.vm.setShouldAddUserToShareIdentityList(true);
                            }
                            ChangeFriendshipDialog.this.vm.setShouldRemoveUserFroShareIdentityList(false);
                        } else {
                            if (ChangeFriendshipDialog.this.vm.getCallerMarkedTargetAsIdentityShared()) {
                                ChangeFriendshipDialog.this.vm.setShouldRemoveUserFroShareIdentityList(true);
                            }
                            ChangeFriendshipDialog.this.vm.setShouldAddUserToShareIdentityList(false);
                        }
                    }
                });
                updateShareIdentityCheckboxStatus();
            }
            if (this.removeFriendLayout != null) {
                if (this.vm.getIsFollowing()) {
                    this.removeFriendLayout.setVisibility(0);
                    this.removeFriendLayout.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            UTCChangeRelationship.trackChangeRelationshipRemoveFriend();
                            ChangeFriendshipDialog.this.changeFriendshipSwitchPanel.setState(1);
                            ChangeFriendshipDialog.this.vm.removeFollowingUser();
                        }
                    });
                } else {
                    this.removeFriendLayout.setEnabled(false);
                    this.removeFriendLayout.setVisibility(8);
                }
                this.confirmButton.setText(this.vm.getDialogButtonText());
            }
            updateShareIdentityCheckboxStatus();
            return;
        }
        if (this.vm.getViewModelState() == ListState.LoadingState) {
            setDialogLoadingView();
        }
    }

    private void setDialogValidContentView() {
        XLEUtil.updateVisibilityIfNotNull(this.overlayLoadingIndicator, 8);
        if (this.confirmButton != null) {
            this.confirmButton.setEnabled(true);
        }
        if (this.cancelButton != null) {
            this.cancelButton.setEnabled(true);
        }
    }

    private void setDialogLoadingView() {
        XLEUtil.updateVisibilityIfNotNull(this.overlayLoadingIndicator, 0);
        if (this.confirmButton != null) {
            this.confirmButton.setEnabled(false);
        }
        if (this.cancelButton != null) {
            this.cancelButton.setEnabled(false);
        }
    }

    public void closeDialog() {
        dismissSelf();
        this.previousVM.load(true);
    }

    @Override // android.app.Dialog
    public void onStop() {
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        dismissSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissSelf() {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).dismissChangeFriendshipDialog();
    }

    public void setVm(ChangeFriendshipDialogViewModel vm) {
        this.vm = vm;
    }

    public void updateShareIdentityCheckboxStatus() {
        String callerShareRealNameStatus = this.vm.getCallerShareRealNameStatus();
        if (callerShareRealNameStatus != null) {
            boolean isBlocked = callerShareRealNameStatus.equalsIgnoreCase("Blocked");
            this.shareRealNameCheckbox.setVisibility(isBlocked ? 8 : 0);
            if (!isBlocked) {
                boolean isTargetSharingRealName = !JavaUtil.isNullOrEmpty(this.vm.getRealName());
                if (callerShareRealNameStatus.compareToIgnoreCase("Everyone") == 0) {
                    this.shareRealNameCheckbox.setChecked(true);
                    this.vm.setInitialRealNameSharingState(true);
                    this.shareRealNameCheckbox.setEnabled(false);
                    this.shareRealNameCheckbox.setSubText(XboxTcuiSdk.getResources().getString(R.string.ChangeRelationship_Checkbox_Subtext_ShareRealName_Everyone));
                }
                if (callerShareRealNameStatus.compareToIgnoreCase("PeopleOnMyList") == 0) {
                    this.shareRealNameCheckbox.setChecked(true);
                    this.vm.setInitialRealNameSharingState(true);
                    this.shareRealNameCheckbox.setEnabled(false);
                    this.shareRealNameCheckbox.setSubText(XboxTcuiSdk.getResources().getString(R.string.ChangeRelationship_Checkbox_Subtext_ShareRealName_Friends));
                }
                if (callerShareRealNameStatus.compareToIgnoreCase("FriendCategoryShareIdentity") == 0) {
                    if (this.vm.getIsFollowing()) {
                        if (this.vm.getCallerMarkedTargetAsIdentityShared()) {
                            this.shareRealNameCheckbox.setChecked(true);
                            this.vm.setInitialRealNameSharingState(true);
                        } else {
                            this.shareRealNameCheckbox.setChecked(false);
                            this.vm.setInitialRealNameSharingState(false);
                        }
                    } else if (isTargetSharingRealName) {
                        this.shareRealNameCheckbox.setChecked(true);
                        this.vm.setInitialRealNameSharingState(true);
                        this.vm.setShouldAddUserToShareIdentityList(true);
                    } else {
                        this.shareRealNameCheckbox.setChecked(false);
                        this.vm.setInitialRealNameSharingState(false);
                    }
                    String text = String.format(XboxTcuiSdk.getResources().getString(R.string.ChangeRelationship_Checkbox_Subtext_ShareRealName), this.vm.getGamerTag());
                    this.shareRealNameCheckbox.setSubText(text);
                    this.shareRealNameCheckbox.setEnabled(true);
                }
            }
        }
    }

    public void reportAsyncTaskCompleted() {
        if (!this.vm.isBusy() && this.changeFriendshipSwitchPanel.getState() == 1) {
            closeDialog();
        }
    }

    public void reportAsyncTaskFailed(String errorMessage) {
        if (this.changeFriendshipSwitchPanel.getState() == 1) {
            this.changeFriendshipSwitchPanel.setState(0);
            Toast.makeText(XboxTcuiSdk.getActivity(), errorMessage, 0).show();
        }
        updateView();
    }

    protected String getActivityName() {
        return "ChangeRelationship Info";
    }
}
