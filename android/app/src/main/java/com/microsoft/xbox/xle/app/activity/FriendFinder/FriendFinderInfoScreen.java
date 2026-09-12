package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.model.privacy.PrivacySettings;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderInfoScreen extends ActivityBase {
    private FriendFinderType infoType;
    private XLEButton nextButton;
    private CustomTypefaceTextView subtitleTextView;
    private CustomTypefaceTextView titleTextView;

    public FriendFinderInfoScreen() {
        this.infoType = FriendFinderType.UNKNOWN;
    }

    public FriendFinderInfoScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.infoType = FriendFinderType.UNKNOWN;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        ActivityParameters params = NavigationManager.getInstance().getActivityParameters();
        XLEAssert.assertNotNull(params);
        if (params != null) {
            this.infoType = params.getFriendFinderType();
            XLEAssert.assertFalse("Expected info type", this.infoType == FriendFinderType.UNKNOWN);
        }
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friend_finder_info_screen);
        this.titleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_info_title);
        this.subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_info_subtitle);
        this.nextButton = (XLEButton) findViewById(R.id.friendfinder_info_next);
        XLEAssert.assertNotNull(this.titleTextView);
        XLEAssert.assertNotNull(this.subtitleTextView);
        XLEAssert.assertNotNull(this.nextButton);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        super.onStart();
        switch (this.infoType) {
            case FACEBOOK:
                this.titleTextView.setText(R.string.FriendFinder_LinkFacebook_Dialog_Title);
                this.subtitleTextView.setText(getFacebookText());
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderInfoScreen.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        UTCFriendFinder.trackFacebookOptInNext(FriendFinderInfoScreen.this.getName());
                        XLEAssert.assertTrue(FacebookManager.getFacebookManagerReady().getIsReady());
                        FacebookManager.getInstance().login();
                    }
                });
                UTCFriendFinder.trackFacebookOptInView(getName());
                break;
            case PHONE:
                this.titleTextView.setText(R.string.FriendFinder_LinkPhone_Dialog_Title);
                this.subtitleTextView.setText(getPhoneText());
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderInfoScreen.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        UTCFriendFinder.trackPhoneContactsNext(FriendFinderInfoScreen.this.getName());
                        try {
                            NavigationManager.getInstance().PushScreen(FriendFinderAddPhoneScreen.class);
                        } catch (XLEException e) {
                        }
                    }
                });
                UTCFriendFinder.trackContactsOptInView(getName());
                break;
        }
    }

    private String getFacebookText() {
        PrivacySettings.PrivacySettingValue privacySetting = PrivacySettings.PrivacySettingValue.getPrivacySettingValue(ProfileModel.getMeProfileModel().getShareRealNameStatus());
        switch (privacySetting) {
            case NotSet:
                String text = multiLineText(R.string.FriendFinder_LinkFacebook_Dialog_Text_Default, R.string.FriendFinder_LinkFacebook_Dialog_Text_NotSet_LineTwo, R.string.FriendFinder_LinkFacebook_Dialog_Text_NotSet_LineThree);
                return text;
            case Blocked:
                String text2 = multiLineText(R.string.FriendFinder_LinkFacebook_Dialog_Text_Default, R.string.FriendFinder_LinkFacebook_Dialog_Text_Blocked_LineTwo, R.string.FriendFinder_LinkFacebook_Dialog_Text_Blocked_LineThree);
                return text2;
            case FriendCategoryShareIdentity:
                String text3 = multiLineText(R.string.FriendFinder_LinkFacebook_Dialog_Text_Default, R.string.FriendFinder_LinkFacebook_Dialog_Text_PeopleIChoose_LineTwo);
                return text3;
            default:
                String text4 = XboxTcuiSdk.getResources().getString(R.string.FriendFinder_LinkFacebook_Dialog_Text_Default);
                return text4;
        }
    }

    private String getPhoneText() {
        PrivacySettings.PrivacySettingValue privacySetting = PrivacySettings.PrivacySettingValue.getPrivacySettingValue(ProfileModel.getMeProfileModel().getShareRealNameStatus());
        switch (privacySetting) {
            case NotSet:
            case Blocked:
                String text = multiLineText(R.string.FriendFinder_LinkPhone_Dialog_Text_LineOne, R.string.FriendFinder_LinkPhone_Dialog_Text_LineTwo, R.string.FriendFinder_LinkPhone_Dialog_Text_RealNameSharedWithContacts, R.string.FriendFinder_LinkPhone_Dialog_Text_LineThree);
                return text;
            case FriendCategoryShareIdentity:
            case Everyone:
                String text2 = multiLineText(R.string.FriendFinder_LinkPhone_Dialog_Text_LineOne, R.string.FriendFinder_LinkPhone_Dialog_Text_LineTwo, R.string.FriendFinder_LinkPhone_Dialog_Text_LineThree);
                return text2;
            case PeopleOnMyList:
                String text3 = multiLineText(R.string.FriendFinder_LinkPhone_Dialog_Text_LineOne, R.string.FriendFinder_LinkPhone_Dialog_Text_LineTwo, R.string.FriendFinder_LinkPhone_Dialog_Text_RealNameSharedWithContacts, R.string.FriendFinder_LinkPhone_Dialog_Text_ACoupleNotes, R.string.FriendFinder_LinkPhone_Dialog_Text_LineThree);
                return text3;
            default:
                String text4 = multiLineText(R.string.FriendFinder_LinkPhone_Dialog_Text_LineOne, R.string.FriendFinder_LinkPhone_Dialog_Text_LineTwo);
                return text4;
        }
    }

    private String multiLineText(int... textIds) {
        if (textIds.length == 0) {
            return "";
        }
        String text = XboxTcuiSdk.getResources().getString(textIds[0]);
        for (int i = 1; i < textIds.length; i++) {
            text = text + "\n\n" + XboxTcuiSdk.getResources().getString(textIds[i]);
        }
        return text;
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        switch (this.infoType) {
            case FACEBOOK:
                return "Friend finder facebook info";
            case PHONE:
                return "Friend finder phone info";
            default:
                return "Friend finder info";
        }
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getName(), this.infoType);
        return super.onBackButtonPressed();
    }
}
