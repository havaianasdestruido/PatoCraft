package com.microsoft.onlineid.sts.exception;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CorruptedUserDATokenException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public CorruptedUserDATokenException() {
    }

    public CorruptedUserDATokenException(String message) {
        super(message);
    }

    public CorruptedUserDATokenException(Throwable cause) {
        super(cause);
    }

    public CorruptedUserDATokenException(String message, Throwable cause) {
        super(message, cause);
    }
}
