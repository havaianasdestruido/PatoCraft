package org.apache.james.mime4j;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MimeIOException extends IOException {
    private static final long serialVersionUID = 5393613459533735409L;

    public MimeIOException(String message) {
        this(new MimeException(message));
    }

    public MimeIOException(MimeException cause) {
        super(cause.getMessage());
        initCause(cause);
    }
}
