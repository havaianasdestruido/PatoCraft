package com.microsoft.xboxtcui;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.ShareDialog;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.xle.app.ImageUtil;
import java.net.URI;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FbShareShimActivity extends FbShimActivity {
    private final String SHARE_TO_FACEBOOK_LINK = "http://go.microsoft.com/fwlink/?LinkId=698852";
    private ShareDialog shareDialog;

    @Override // com.microsoft.xboxtcui.FbShimActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null) {
            this.shareDialog = new ShareDialog(this);
            FacebookManager.getInstance().registerShareCallback(this.shareDialog);
            URI imageUrl = ImageUtil.getMedium(ProfileModel.getMeProfileModel().getGamerPicImageUrl());
            if (ShareDialog.canShow((Class<? extends ShareContent>) ShareLinkContent.class)) {
                ShareLinkContent content = new ShareLinkContent.Builder().setImageUrl(Uri.parse(imageUrl.toString())).setContentTitle(XboxTcuiSdk.getResources().getString(R.string.FriendFinder_Facebook_Share_Title)).setContentDescription(XboxTcuiSdk.getResources().getString(R.string.FriendFinder_Facebook_Share_Description)).setContentUrl(Uri.parse("http://go.microsoft.com/fwlink/?LinkId=698852")).build();
                this.shareDialog.show(content);
            }
        }
    }
}
