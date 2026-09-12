package org.simpleframework.xml.stream;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OutputBuffer {
    private StringBuilder text = new StringBuilder();

    public void append(char ch) {
        this.text.append(ch);
    }

    public void append(String value) {
        this.text.append(value);
    }

    public void append(char[] value) {
        this.text.append(value, 0, value.length);
    }

    public void append(char[] value, int off, int len) {
        this.text.append(value, off, len);
    }

    public void append(String value, int off, int len) {
        this.text.append((CharSequence) value, off, len);
    }

    public void write(Writer out) throws IOException {
        out.append((CharSequence) this.text);
    }

    public void clear() {
        this.text.setLength(0);
    }
}
