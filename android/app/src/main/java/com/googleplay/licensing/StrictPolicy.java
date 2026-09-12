package com.googleplay.licensing;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StrictPolicy implements Policy {
    private int mLastResponse = Policy.RETRY;

    @Override // com.googleplay.licensing.Policy
    public void processServerResponse(int response, ResponseData rawData) {
        this.mLastResponse = response;
    }

    @Override // com.googleplay.licensing.Policy
    public boolean allowAccess() {
        return this.mLastResponse == 256;
    }
}
