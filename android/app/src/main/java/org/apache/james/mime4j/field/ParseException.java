package org.apache.james.mime4j.field;

import org.apache.james.mime4j.MimeException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ParseException extends MimeException {
    private static final long serialVersionUID = 1;

    protected ParseException(String message) {
        super(message);
    }

    protected ParseException(Throwable cause) {
        super(cause);
    }

    protected ParseException(String message, Throwable cause) {
        super(message, cause);
    }
}
