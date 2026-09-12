package com.facebook.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookSdk;
import com.facebook.internal.CustomTab;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    private static final String CHROME_PACKAGE = "com.android.chrome";
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.CustomTabLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler createFromParcel(Parcel source) {
            return new CustomTabLoginMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler[] newArray(int size) {
            return new CustomTabLoginMethodHandler[size];
        }
    };
    private static final String CUSTOM_TABS_SERVICE_ACTION = "android.support.customtabs.action.CustomTabsService";
    private static final String OAUTH_DIALOG = "oauth";
    private CustomTab customTab;

    CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    AccessTokenSource getTokenSource() {
        return AccessTokenSource.CUSTOM_TAB;
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean tryAuthorize(LoginClient.Request request) {
        if (!isCustomTabsAllowed()) {
            return false;
        }
        Bundle parameters = getParameters(request);
        Bundle parameters2 = addExtraParameters(parameters, request);
        Activity activity = this.loginClient.getActivity();
        this.customTab = new CustomTab(OAUTH_DIALOG, parameters2);
        this.customTab.openCustomTab(activity);
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    protected void putChallengeParam(JSONObject param) throws JSONException {
        if (this.loginClient.getFragment() instanceof LoginFragment) {
            param.put("7_challenge", ((LoginFragment) this.loginClient.getFragment()).getChallengeParam());
        }
    }

    private boolean isCustomTabsAllowed() {
        return isCustomTabsEnabled() && isChromeCustomTabsSupported(this.loginClient.getActivity()) && Validate.hasCustomTabRedirectActivity(FacebookSdk.getApplicationContext());
    }

    private boolean isChromeCustomTabsSupported(Context context) {
        Intent serviceIntent = new Intent("android.support.customtabs.action.CustomTabsService");
        serviceIntent.setPackage(CHROME_PACKAGE);
        List<ResolveInfo> resolveInfos = context.getPackageManager().queryIntentServices(serviceIntent, 0);
        return (resolveInfos == null || resolveInfos.isEmpty()) ? false : true;
    }

    private boolean isCustomTabsEnabled() {
        String appId = Utility.getMetadataApplicationId(this.loginClient.getActivity());
        Utility.FetchedAppSettings settings = Utility.getAppSettingsWithoutQuery(appId);
        return settings != null && settings.getCustomTabsEnabled();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    CustomTabLoginMethodHandler(Parcel source) {
        super(source);
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }
}
