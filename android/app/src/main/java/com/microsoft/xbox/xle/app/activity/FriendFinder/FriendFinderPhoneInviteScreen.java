package com.microsoft.xbox.xle.app.activity.FriendFinder;

import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderPhoneInviteScreen extends ActivityBase {
    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        XLEAssert.fail("This isn't supported yet.");
        onCreateContentView();
        this.viewModel = new FriendFinderPhoneInviteScreenViewModel(this);
        UTCFriendFinder.trackContactsInviteFriendsView(getName());
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friendfinder_suggestions_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "Friend Finder Phone Invite";
    }
}
