package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class TextBody extends SingleBody {
    public abstract String getMimeCharset();

    public abstract Reader getReader() throws IOException;

    protected TextBody() {
    }
}
