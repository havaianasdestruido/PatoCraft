package com.googleplay.licensing;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NullDeviceLimiter implements DeviceLimiter {
    @Override // com.googleplay.licensing.DeviceLimiter
    public int isDeviceAllowed(String userId) {
        return 256;
    }
}
