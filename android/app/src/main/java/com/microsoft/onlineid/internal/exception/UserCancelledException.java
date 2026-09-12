package com.microsoft.onlineid.internal.exception;

import com.microsoft.onlineid.exception.InternalException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UserCancelledException extends InternalException {
    private static final long serialVersionUID = 1;

    public UserCancelledException() {
    }

    public UserCancelledException(String message) {
        super(message);
    }

    public UserCancelledException(Throwable cause) {
        super(cause);
    }

    public UserCancelledException(String message, Throwable cause) {
        super(message, cause);
    }
}
