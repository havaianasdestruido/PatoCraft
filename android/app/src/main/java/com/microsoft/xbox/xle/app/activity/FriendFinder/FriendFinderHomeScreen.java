package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.content.Context;
import android.util.AttributeSet;
import com.microsoft.xbox.toolkit.ProjectSpecificDataProvider;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderHomeScreen extends ActivityBase {
    public FriendFinderHomeScreen() {
    }

    public FriendFinderHomeScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        this.viewModel = new FriendFinderHomeScreenViewModel(this);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        super.onStart();
        UTCFriendFinder.trackFriendFinderView(getActivityName(), ProjectSpecificDataProvider.getInstance().getXuidString());
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friend_finder_home_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "FriendFinderHome";
    }
}
