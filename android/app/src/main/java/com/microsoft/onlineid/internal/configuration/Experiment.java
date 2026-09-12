package com.microsoft.onlineid.internal.configuration;

import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum Experiment {
    QRCodeExperiment("MSAClient_Experiment1");

    private final String _experimentName;

    Experiment(String experimentName) {
        this._experimentName = experimentName;
    }

    public String getName() {
        return this._experimentName;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this._experimentName;
    }

    public static String getExperimentList() {
        return TextUtils.join(",", values());
    }
}
