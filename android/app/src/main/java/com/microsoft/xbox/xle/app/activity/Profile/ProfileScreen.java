package com.microsoft.xbox.xle.app.activity.Profile;

import android.content.Context;
import android.util.AttributeSet;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProfileScreen extends ActivityBase {
    public ProfileScreen() {
    }

    public ProfileScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        ProfileScreenViewModel psVM = new ProfileScreenViewModel(this);
        this.viewModel = psVM;
        UTCPeopleHub.trackPeopleHubView(getActivityName(), psVM.getXuid(), psVM.isMeProfile());
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.profile_screen);
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "PeopleHub Info";
    }
}
