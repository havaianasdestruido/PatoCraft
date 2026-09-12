package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CustomTab {
    private static final String CHROME_PACKAGE = "com.android.chrome";
    private Uri uri;

    public CustomTab(String action, Bundle parameters) {
        this.uri = Utility.buildUri(ServerProtocol.getDialogAuthority(), ServerProtocol.getAPIVersion() + "/" + ServerProtocol.DIALOG_PATH + action, parameters == null ? new Bundle() : parameters);
    }

    public void openCustomTab(Activity activity) {
        CustomTabsIntent customTabsIntent = new CustomTabsIntent.Builder().build();
        customTabsIntent.intent.setPackage(CHROME_PACKAGE);
        customTabsIntent.launchUrl(activity, this.uri);
    }
}
