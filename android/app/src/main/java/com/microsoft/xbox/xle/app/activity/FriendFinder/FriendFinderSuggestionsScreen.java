package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.content.Context;
import android.util.AttributeSet;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderSuggestionsScreen extends ActivityBase {
    public FriendFinderSuggestionsScreen() {
    }

    public FriendFinderSuggestionsScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        this.viewModel = new FriendFinderSuggestionsScreenViewModel(this);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        super.onStart();
        ActivityParameters params = NavigationManager.getInstance().getActivityParameters();
        FriendFinderType friendFinderType = params.getFriendFinderType();
        switch (friendFinderType) {
            case FACEBOOK:
                UTCFriendFinder.trackFacebookAddFriendView(getActivityName());
                break;
            case PHONE:
                UTCFriendFinder.trackContactsFindFriendsView(getActivityName());
                break;
        }
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friendfinder_suggestions_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "Friend Finder Suggestions";
    }
}
