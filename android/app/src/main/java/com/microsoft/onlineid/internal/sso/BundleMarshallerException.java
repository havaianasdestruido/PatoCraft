package com.microsoft.onlineid.internal.sso;

import com.microsoft.onlineid.exception.InternalException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BundleMarshallerException extends InternalException {
    private static final long serialVersionUID = 1;

    public BundleMarshallerException() {
    }

    public BundleMarshallerException(String message) {
        super(message);
    }

    public BundleMarshallerException(Throwable cause) {
        super(cause);
    }

    public BundleMarshallerException(String message, Throwable cause) {
        super(message, cause);
    }
}
