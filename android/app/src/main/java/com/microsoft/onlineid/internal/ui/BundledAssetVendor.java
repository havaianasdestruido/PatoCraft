package com.microsoft.onlineid.internal.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.internal.log.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BundledAssetVendor implements IWebPropertyProvider {
    private static final String HttpsScheme = "https://";
    private static BundledAssetVendor Instance = null;
    public static final String ManifestAssetPath = "com.microsoft.onlineid.serverAssetBundle.path";
    public static final String ManifestAssetVersion = "com.microsoft.onlineid.serverAssetBundle.version";
    private final Context _applicationContext;
    private AssetManager _assetManager;
    private volatile int _hitCount;
    private volatile int _missCount;
    private String _version;
    private static final String AccessControlAllowOriginKey = "Access-Control-Allow-Origin";
    private static final String AccessControlAllowOriginAllValue = "*";
    private static final Map<String, String> AccessControlAllowOriginMap = Collections.singletonMap(AccessControlAllowOriginKey, AccessControlAllowOriginAllValue);
    private String _pathToAssetBundle = null;
    private Object _countLock = new Object();

    private BundledAssetVendor(Context context) {
        this._applicationContext = getApplicationContextFromContext(context);
    }

    public static BundledAssetVendor getInstance(Context context) throws IllegalArgumentException {
        if (Instance == null) {
            synchronized (BundledAssetVendor.class) {
                if (Instance == null) {
                    Instance = new BundledAssetVendor(context);
                    Instance.initialize();
                }
            }
        } else if (Instance.getApplicationContext() != getApplicationContextFromContext(context)) {
            Assertion.check(false, "Replacing previous instance with new instance for provided different context.");
            synchronized (BundledAssetVendor.class) {
                Instance = new BundledAssetVendor(context);
                Instance.initialize();
            }
        }
        return Instance;
    }

    private static Context getApplicationContextFromContext(Context context) {
        if (context.getApplicationContext() == null) {
            return context;
        }
        return context.getApplicationContext();
    }

    private Context getApplicationContext() {
        return this._applicationContext;
    }

    private void initialize() {
        this._assetManager = this._applicationContext.getAssets();
        PackageManager packageManager = this._applicationContext.getPackageManager();
        this._missCount = 0;
        this._hitCount = 0;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this._applicationContext.getPackageName(), 128);
            Bundle metaDataBundle = applicationInfo.metaData;
            if (metaDataBundle == null) {
                this._pathToAssetBundle = null;
                this._version = null;
            } else {
                this._pathToAssetBundle = metaDataBundle.getString(ManifestAssetPath);
                this._version = metaDataBundle.getString(ManifestAssetVersion);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Logger.error("Package name not found", e);
        }
    }

    protected String buildLocalAssetPath(String url) {
        return this._pathToAssetBundle + '/' + url.substring(HttpsScheme.length());
    }

    @TargetApi(17)
    public WebResourceResponse getAsset(String url) {
        Mimetype mimetype;
        if (TextUtils.isEmpty(this._pathToAssetBundle)) {
            return null;
        }
        String localAssetPath = buildLocalAssetPath(url);
        if (!TextUtils.isEmpty(localAssetPath) && (mimetype = Mimetype.findFromFilename(localAssetPath)) != null) {
            try {
                InputStream inputStream = this._assetManager.open(localAssetPath);
                WebResourceResponse response = new WebResourceResponse(mimetype.toString(), HttpURLConnectionBuilder.DEFAULT_CHARSET, inputStream);
                if (Build.VERSION.SDK_INT >= 21 && mimetype == Mimetype.FONT) {
                    response.setResponseHeaders(AccessControlAllowOriginMap);
                }
                if (Settings.isDebugBuild()) {
                    Logger.info("BundledAssetVendor: Proxied " + url + " with " + localAssetPath);
                }
                incrementHitCount();
                return response;
            } catch (IOException e) {
                if (Settings.isDebugBuild()) {
                    Logger.info("BundledAssetVendor: MISS: No proxied asset found for " + url);
                }
                incrementMissCount();
                return null;
            }
        }
        return null;
    }

    protected void incrementHitCount() {
        synchronized (this._countLock) {
            this._hitCount++;
        }
    }

    protected void incrementMissCount() {
        synchronized (this._countLock) {
            this._missCount++;
        }
    }

    protected void setHitCount(int count) {
        synchronized (this._countLock) {
            this._hitCount = count;
        }
    }

    protected void setMissCount(int count) {
        synchronized (this._countLock) {
            this._missCount = count;
        }
    }

    @Override // com.microsoft.onlineid.internal.ui.IWebPropertyProvider
    public boolean handlesProperty(PropertyBag.Key key) {
        switch (key) {
            case TelemetryResourceBundleVersion:
            case TelemetryResourceBundleHits:
            case TelemetryResourceBundleMisses:
                return true;
            default:
                return false;
        }
    }

    @Override // com.microsoft.onlineid.internal.ui.IWebPropertyProvider
    public String getProperty(PropertyBag.Key key) {
        switch (key) {
            case TelemetryResourceBundleVersion:
                return this._version;
            case TelemetryResourceBundleHits:
                return Integer.toString(this._hitCount);
            case TelemetryResourceBundleMisses:
                return Integer.toString(this._missCount);
            default:
                return null;
        }
    }

    @Override // com.microsoft.onlineid.internal.ui.IWebPropertyProvider
    public void setProperty(PropertyBag.Key key, String value) {
        try {
            switch (key) {
                case TelemetryResourceBundleHits:
                    setHitCount(Integer.parseInt(value));
                    break;
                case TelemetryResourceBundleMisses:
                    setMissCount(Integer.parseInt(value));
                    break;
            }
        } catch (NumberFormatException e) {
            Logger.error("Could not convert string to integer: '" + value + "'");
        }
    }
}
