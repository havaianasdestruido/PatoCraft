package com.microsoft.onlineid.internal.sso;

import android.util.SparseArray;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum SsoServiceError {
    Unknown(1),
    ClientNotAuthorized(2),
    UnsupportedClientVersion(3),
    StorageException(4),
    IllegalArgumentException(5),
    AccountNotFound(6),
    NetworkException(7),
    StsException(8),
    InvalidResponseException(9),
    MasterRedirectException(10),
    ClientConfigUpdateNeededException(11);

    private static final SparseArray<SsoServiceError> _lookup = new SparseArray<>();
    private int _code;

    static {
        for (SsoServiceError error : values()) {
            _lookup.put(error.getCode(), error);
        }
    }

    SsoServiceError(int code) {
        this._code = code;
    }

    public int getCode() {
        return this._code;
    }

    public static SsoServiceError get(int code) {
        return _lookup.get(code);
    }
}
