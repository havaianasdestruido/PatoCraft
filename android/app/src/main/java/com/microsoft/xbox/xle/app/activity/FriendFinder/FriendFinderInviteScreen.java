package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.app.FriendFinderSettings;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.ui.IconFontSubTextButton;
import com.microsoft.xbox.xle.ui.ImageTitleSubtitleButton;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderInviteScreen extends ActivityBase {
    private FriendFinderType inviteType;

    public FriendFinderInviteScreen() {
        this.inviteType = FriendFinderType.UNKNOWN;
    }

    public FriendFinderInviteScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.inviteType = FriendFinderType.UNKNOWN;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        XLEAssert.assertTrue(FacebookManager.getFacebookManagerReady().getIsReady());
        onCreateContentView();
        ActivityParameters params = NavigationManager.getInstance().getActivityParameters();
        XLEAssert.assertNotNull(params);
        if (params != null) {
            this.inviteType = params.getFriendFinderType();
            XLEAssert.assertFalse("Expected invite type", this.inviteType == FriendFinderType.UNKNOWN);
        }
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friendfinder_invite_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        super.onStart();
        CustomTypefaceTextView titleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_invite_title);
        CustomTypefaceTextView subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_invite_subtitle);
        if (this.inviteType == FriendFinderType.FACEBOOK) {
            titleTextView.setText(R.string.FriendFinder_Invite_Facebook_Title);
            subtitleTextView.setText(R.string.FriendFinder_Facebook_Upsell_Description_Default_LineTwo);
            ImageTitleSubtitleButton facebookButton = (ImageTitleSubtitleButton) findViewById(R.id.friendfinder_invite_facebook);
            if (facebookButton != null) {
                facebookButton.setVisibility(0);
                facebookButton.setImageUri(getFacebookIconUri());
                facebookButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderInviteScreen.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        UTCFriendFinder.trackShareFacebookLinkToFeed(FriendFinderInviteScreen.this.getName());
                        FacebookManager.getInstance().shareToFacebook();
                    }
                });
            }
            UTCFriendFinder.trackFacebookShareView(getActivityName());
        } else if (this.inviteType == FriendFinderType.PHONE) {
            titleTextView.setText(R.string.FriendFinder_PhoneInviteFriends_Dialog_Title);
            String subtitle = XboxTcuiSdk.getResources().getString(R.string.FriendFinder_PhoneInviteFriends_Dialog_Text);
            subtitleTextView.setText(subtitle.replace("-", "\n\n"));
            IconFontSubTextButton phoneButton = (IconFontSubTextButton) findViewById(R.id.friendfinder_invite_phone);
            if (phoneButton != null) {
                phoneButton.setVisibility(0);
                phoneButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderInviteScreen.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        try {
                            UTCFriendFinder.trackPhoneContactsSendInvite(FriendFinderInviteScreen.this.getName());
                            NavigationManager.getInstance().PushScreen(FriendFinderPhoneInviteScreen.class);
                        } catch (XLEException e) {
                        }
                    }
                });
            }
            UTCFriendFinder.trackContactsInviteFriendsView(getActivityName());
        }
        XLEButton nextButton = (XLEButton) findViewById(R.id.friendfinder_invite_next);
        if (nextButton != null) {
            nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderInviteScreen.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    try {
                        switch (AnonymousClass4.$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType[FriendFinderInviteScreen.this.inviteType.ordinal()]) {
                            case 1:
                                UTCFriendFinder.trackSkipFacebookSharing(FriendFinderInviteScreen.this.getName());
                                break;
                            case 2:
                                UTCFriendFinder.trackPhoneContactsNext(FriendFinderInviteScreen.this.getName());
                                break;
                        }
                        ActivityParameters parameters = new ActivityParameters();
                        parameters.putFriendFinderDone(true);
                        NavigationManager.getInstance().PushScreen(FriendFinderHomeScreen.class, parameters);
                    } catch (XLEException e) {
                    }
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderInviteScreen$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType = new int[FriendFinderType.values().length];

        static {
            try {
                $SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType[FriendFinderType.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType[FriendFinderType.PHONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private String getFacebookIconUri() {
        return FriendFinderSettings.getIconBySize(IPeopleHubResult.RecommendationType.FacebookFriend.name(), FriendFinderSettings.IconImageSize.MEDIUM);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return null;
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getName(), this.inviteType);
        return super.onBackButtonPressed();
    }
}
