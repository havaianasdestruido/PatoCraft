package com.appsflyer;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface AppsFlyerConversionListener {
    void onAppOpenAttribution(Map<String, String> map);

    void onAttributionFailure(String str);

    void onInstallConversionDataLoaded(Map<String, String> map);

    void onInstallConversionFailure(String str);
}
