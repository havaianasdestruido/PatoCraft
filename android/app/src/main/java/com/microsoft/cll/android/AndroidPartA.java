package com.microsoft.cll.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.appsflyer.ServerParameters;
import com.microsoft.onlineid.sts.request.AbstractStsRequest;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AndroidPartA extends PartA {
    private final String DeviceTypePC;
    private final String DeviceTypePhone;
    protected final String TAG;
    protected Context appContext;

    public AndroidPartA(ILogger logger, String iKey, Context context, CorrelationVector correlationVector) {
        super(logger, iKey, correlationVector);
        this.TAG = "AndroidCll-AndroidPartA";
        this.DeviceTypePhone = "Android.Phone";
        this.DeviceTypePC = "Android.PC";
        this.appContext = context;
        PopulateConstantValues();
    }

    @Override // com.microsoft.cll.android.PartA
    @SuppressLint({"MissingPermission"})
    protected void setUserId() {
        if (this.appContext != null) {
            try {
                AccountManager manager = AccountManager.get(this.appContext);
                Account[] accounts = manager.getAccountsByType("com.google");
                if (accounts.length > 0) {
                    String hashedEmail = HashStringSha256(accounts[0].name);
                    this.userExt.setLocalId("g:" + hashedEmail);
                    return;
                }
            } catch (SecurityException e) {
                this.logger.info("AndroidCll-AndroidPartA", "Get_Accounts permission was not provided. UserID will be blank");
            }
        }
        this.userExt.setLocalId("");
    }

    @Override // com.microsoft.cll.android.PartA
    protected void setOs() {
        this.osName = AbstractStsRequest.DeviceType;
    }

    @Override // com.microsoft.cll.android.PartA
    @SuppressLint({"MissingPermission"})
    protected void setDeviceInfo() {
        this.deviceExt.setLocalId("");
        try {
            if (this.appContext != null && this.uniqueId == null) {
                this.uniqueId = Settings.Secure.getString(this.appContext.getContentResolver(), ServerParameters.ANDROID_ID);
                if (this.uniqueId == null) {
                    WifiManager manager = (WifiManager) this.appContext.getSystemService("wifi");
                    WifiInfo info = manager.getConnectionInfo();
                    this.uniqueId = info.getMacAddress().replace(":", "");
                    this.deviceExt.setLocalId("m:" + this.uniqueId);
                } else {
                    this.deviceExt.setLocalId("a:" + this.uniqueId);
                }
            }
        } catch (SecurityException e) {
            this.logger.info("AndroidCll-AndroidPartA", "Access Wifi State permission was not Provided. DeviceID will be blank");
        }
        if (testRadioVersion()) {
            this.deviceExt.setDeviceClass("Android.Phone");
        } else {
            DisplayMetrics dm = new DisplayMetrics();
            ((WindowManager) this.appContext.getSystemService("window")).getDefaultDisplay().getMetrics(dm);
            int width = dm.widthPixels;
            int height = dm.heightPixels;
            int density = dm.densityDpi;
            double screenInches = getDeviceScreenSize(height, width, density);
            if (screenInches >= 8.0d) {
                this.deviceExt.setDeviceClass("Android.PC");
            } else {
                this.deviceExt.setDeviceClass("Android.Phone");
            }
        }
        this.osVer = String.format("%s", Build.VERSION.RELEASE);
        this.osExt.setLocale(Locale.getDefault().toString().replaceAll("_", "-"));
    }

    @TargetApi(14)
    private boolean testRadioVersion() {
        return Build.VERSION.SDK_INT >= 14 && Build.getRadioVersion() != null;
    }

    @Override // com.microsoft.cll.android.PartA
    protected void setAppInfo() {
        PackageManager manager = this.appContext.getPackageManager();
        try {
            PackageInfo info = manager.getPackageInfo(this.appContext.getPackageName(), 0);
            this.appVer = info.versionName;
            this.appId = "A:" + info.packageName;
        } catch (PackageManager.NameNotFoundException e) {
            this.logger.error("AndroidCll-AndroidPartA", "Could not get package name");
        }
    }

    double getDeviceScreenSize(int height, int width, int density) {
        double wi = ((double) width) / ((double) density);
        double hi = ((double) height) / ((double) density);
        double x = Math.pow(wi, 2.0d);
        double y = Math.pow(hi, 2.0d);
        double screenInches = Math.sqrt(x + y);
        return screenInches;
    }

    @Override // com.microsoft.cll.android.PartA
    protected void PopulateConstantValues() {
        setDeviceInfo();
        setUserId();
        setAppInfo();
        setOs();
    }
}
