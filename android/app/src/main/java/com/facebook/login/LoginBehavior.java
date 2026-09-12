package com.facebook.login;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum LoginBehavior {
    NATIVE_WITH_FALLBACK(true, true, false),
    NATIVE_ONLY(true, false, false),
    WEB_ONLY(false, true, false),
    DEVICE_AUTH(false, false, true);

    private final boolean allowsDeviceAuth;
    private final boolean allowsKatanaAuth;
    private final boolean allowsWebViewAuth;

    LoginBehavior(boolean allowsKatanaAuth, boolean allowsWebViewAuth, boolean allowsDeviceAuth) {
        this.allowsKatanaAuth = allowsKatanaAuth;
        this.allowsWebViewAuth = allowsWebViewAuth;
        this.allowsDeviceAuth = allowsDeviceAuth;
    }

    boolean allowsKatanaAuth() {
        return this.allowsKatanaAuth;
    }

    boolean allowsWebViewAuth() {
        return this.allowsWebViewAuth;
    }

    boolean allowsDeviceAuth() {
        return this.allowsDeviceAuth;
    }
}
