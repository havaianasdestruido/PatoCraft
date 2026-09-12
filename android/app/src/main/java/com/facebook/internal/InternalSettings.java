package com.facebook.internal;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class InternalSettings {
    private static volatile String mCustomUserAgent;

    public static void setCustomUserAgent(String customUserAgent) {
        mCustomUserAgent = customUserAgent;
    }

    public static String getCustomUserAgent() {
        return mCustomUserAgent;
    }
}
