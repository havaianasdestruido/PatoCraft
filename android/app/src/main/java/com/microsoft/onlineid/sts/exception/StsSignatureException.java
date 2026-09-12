package com.microsoft.onlineid.sts.exception;

import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StsSignatureException extends StsParseException {
    private static final long serialVersionUID = 1;

    public StsSignatureException() {
    }

    public StsSignatureException(String message, Object... args) {
        super(String.format(Locale.US, message, args), new Object[0]);
    }

    public StsSignatureException(Throwable cause) {
        super(cause);
    }

    public StsSignatureException(String message, Throwable cause, Object... args) {
        super(String.format(Locale.US, message, args), cause, new Object[0]);
    }
}
