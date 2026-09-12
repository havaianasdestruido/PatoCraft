package com.microsoft.onlineid.sts;

import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Strings;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DAToken implements Serializable {
    public static final ISecurityScope Scope = new ISecurityScope() { // from class: com.microsoft.onlineid.sts.DAToken.1
        @Override // com.microsoft.onlineid.ISecurityScope
        public String getTarget() {
            return "http://Passport.NET/tb";
        }

        @Override // com.microsoft.onlineid.ISecurityScope
        public String getPolicy() {
            return null;
        }
    };
    private static final long serialVersionUID = 1;
    private final byte[] _sessionKey;
    private final String _token;

    public DAToken(String token, byte[] sessionKey) {
        Strings.verifyArgumentNotNullOrEmpty(token, "token");
        Objects.verifyArgumentNotNull(sessionKey, "sessionKey");
        this._token = token;
        this._sessionKey = sessionKey;
    }

    public String getOneTimeSignedCredential(Date currentServerTime, String appId) {
        OneTimeCredentialSigner signer = new OneTimeCredentialSigner(currentServerTime, this);
        return signer.generateOneTimeSignedCredential(appId);
    }

    public String getToken() {
        return this._token;
    }

    public byte[] getSessionKey() {
        return this._sessionKey;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !(o instanceof DAToken)) {
            return false;
        }
        DAToken token = (DAToken) o;
        return Objects.equals(this._token, token._token) && Arrays.equals(this._sessionKey, token._sessionKey);
    }

    public int hashCode() {
        return this._token.hashCode() + Arrays.hashCode(this._sessionKey);
    }
}
