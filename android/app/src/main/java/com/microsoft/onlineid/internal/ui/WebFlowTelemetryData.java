package com.microsoft.onlineid.internal.ui;

import android.os.Bundle;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class WebFlowTelemetryData {
    protected final Bundle _values;

    public WebFlowTelemetryData() {
        this(null);
    }

    public WebFlowTelemetryData(Bundle bundle) {
        this._values = bundle == null ? new Bundle() : bundle;
    }

    public Bundle asBundle() {
        return this._values;
    }

    public WebFlowTelemetryData setIsWebTelemetryRequested(boolean requested) {
        this._values.putBoolean(BundleMarshaller.WebFlowTelemetryRequestedKey, requested);
        return this;
    }

    public boolean getIsWebTelemetryRequested() {
        return this._values.getBoolean(BundleMarshaller.WebFlowTelemetryRequestedKey, false);
    }

    public WebFlowTelemetryData setCallingAppPackageName(String packageName) {
        this._values.putString(BundleMarshaller.ClientPackageNameKey, packageName);
        return this;
    }

    public String getCallingAppPackageName() {
        return this._values.getString(BundleMarshaller.ClientPackageNameKey);
    }

    public WebFlowTelemetryData setCallingAppVersionName(String versionName) {
        this._values.putString(BundleMarshaller.ClientAppVersionNameKey, versionName);
        return this;
    }

    public String getCallingAppVersionName() {
        return this._values.getString(BundleMarshaller.ClientAppVersionNameKey);
    }

    public WebFlowTelemetryData setWasPrecachingEnabled(boolean enabled) {
        this._values.putBoolean(BundleMarshaller.WebFlowTelemetryPrecachingEnabledKey, enabled);
        return this;
    }

    public boolean getWasPrecachingEnabled() {
        return this._values.getBoolean(BundleMarshaller.WebFlowTelemetryPrecachingEnabledKey);
    }
}
