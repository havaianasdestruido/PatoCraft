package com.appsflyer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AFUninstallToken {
    private static final String SEPARATOR = ",";
    private static final int TOKEN_AGING_TIME = 2000;
    private final Object lock;
    private String token;
    private long tokenTimestamp;

    AFUninstallToken(long tokenTimestamp, String token) {
        this.lock = new Object();
        this.tokenTimestamp = 0L;
        this.token = "";
        this.tokenTimestamp = tokenTimestamp;
        this.token = token;
    }

    AFUninstallToken(String token) {
        this(System.currentTimeMillis(), token);
    }

    static AFUninstallToken parse(String fromString) {
        if (fromString == null) {
            return getEmptyUninstallToken();
        }
        String[] values = fromString.split(SEPARATOR);
        if (values.length < 2) {
            return getEmptyUninstallToken();
        }
        return new AFUninstallToken(Long.parseLong(values[0]), values[1]);
    }

    private static AFUninstallToken getEmptyUninstallToken() {
        return new AFUninstallToken(0L, "");
    }

    boolean testAndUpdate(AFUninstallToken token) {
        if (token != null) {
            return testAndUpdate(token.getTokenTimestamp(), token.getToken());
        }
        AFUninstallToken emptyToken = getEmptyUninstallToken();
        return testAndUpdate(emptyToken.tokenTimestamp, emptyToken.getToken());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001a  */
    private boolean testAndUpdate(long newTokenTimestamp, String newToken) {
        boolean z;
        synchronized (this.lock) {
            if (newToken == null) {
                z = false;
            } else if (newToken.equals(this.token) || !didExistingTokenAge(newTokenTimestamp)) {
                z = false;
            } else {
                this.tokenTimestamp = newTokenTimestamp;
                this.token = newToken;
                z = true;
            }
            throw th;
        }
        return z;
    }

    private boolean didExistingTokenAge(long newTokenTimestamp) {
        return newTokenTimestamp - this.tokenTimestamp > 2000;
    }

    public String toString() {
        return this.tokenTimestamp + SEPARATOR + this.token;
    }

    private long getTokenTimestamp() {
        return this.tokenTimestamp;
    }

    String getToken() {
        return this.token;
    }
}
