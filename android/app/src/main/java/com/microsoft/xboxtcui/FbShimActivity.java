package com.microsoft.xboxtcui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FbShimActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        XLEAssert.assertTrue(FacebookManager.getFacebookManagerReady().getIsReady());
        XLEAssert.assertTrue(FacebookSdk.isInitialized());
        XLEAssert.assertNotNull(ProfileModel.getMeProfileModel());
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        FacebookManager.getInstance().onShimActivityResult(requestCode, resultCode, data);
        finish();
    }
}
