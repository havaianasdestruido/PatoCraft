package org.apache.james.mime4j.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class LineNumberInputStream extends FilterInputStream implements LineNumberSource {
    private int lineNumber;

    public LineNumberInputStream(InputStream is) {
        super(is);
        this.lineNumber = 1;
    }

    @Override // org.apache.james.mime4j.io.LineNumberSource
    public int getLineNumber() {
        return this.lineNumber;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int b = this.in.read();
        if (b == 10) {
            this.lineNumber++;
        }
        return b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        int n = this.in.read(b, off, len);
        for (int i = off; i < off + n; i++) {
            if (b[i] == 10) {
                this.lineNumber++;
            }
        }
        return n;
    }
}
