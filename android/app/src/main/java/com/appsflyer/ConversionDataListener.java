package com.appsflyer;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ConversionDataListener {
    void onConversionDataLoaded(Map<String, String> map);

    void onConversionFailure(String str);
}
