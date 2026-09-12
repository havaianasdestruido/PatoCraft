package com.microsoft.xbox.xle.app.activity.FriendFinder;

import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderAddPhoneScreen extends ActivityBase {
    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        this.viewModel = new FriendFinderAddPhoneScreenViewModel(this);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        super.onStart();
        UTCFriendFinder.trackContactsAddPhoneView(getName());
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friendfinder_add_phone_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "Friend Finder Add Phone";
    }
}
