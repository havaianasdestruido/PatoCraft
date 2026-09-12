package com.microsoft.onlineid.exception;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NetworkException extends AuthenticationException {
    private static final long serialVersionUID = 1;

    public NetworkException() {
        this("No internet connection");
    }

    public NetworkException(String message) {
        super(message);
    }

    public NetworkException(Throwable cause) {
        super(cause);
    }

    public NetworkException(String message, Throwable cause) {
        super(message, cause);
    }
}
