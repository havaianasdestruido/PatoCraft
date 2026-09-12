package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.content.Context;
import android.util.AttributeSet;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderLinkScreen extends ActivityBase {
    private FriendFinderType linkType;

    public FriendFinderLinkScreen() {
        this.linkType = FriendFinderType.UNKNOWN;
    }

    public FriendFinderLinkScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.linkType = FriendFinderType.UNKNOWN;
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        ActivityParameters params = NavigationManager.getInstance().getActivityParameters();
        XLEAssert.assertNotNull(params);
        if (params != null) {
            this.linkType = params.getFriendFinderType();
            XLEAssert.assertFalse("Expected link type", this.linkType == FriendFinderType.UNKNOWN);
        }
        if (this.linkType == FriendFinderType.UNKNOWN) {
            try {
                NavigationManager.getInstance().PopScreen();
            } catch (XLEException e) {
            }
        } else if (this.linkType == FriendFinderType.FACEBOOK) {
            this.viewModel = new LinkFacebookAccountViewModel(this);
        }
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.friendfinder_link_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "Friend Finder Facebook Link";
    }
}
