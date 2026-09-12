package org.apache.james.mime4j.io;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class LimitedInputStream extends PositionInputStream {
    private final long limit;

    public LimitedInputStream(InputStream instream, long limit) {
        super(instream);
        if (limit < 0) {
            throw new IllegalArgumentException("Limit may not be negative");
        }
        this.limit = limit;
    }

    private void enforceLimit() throws IOException {
        if (this.position >= this.limit) {
            throw new IOException("Input stream limit exceeded");
        }
    }

    @Override // org.apache.james.mime4j.io.PositionInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        enforceLimit();
        return super.read();
    }

    @Override // org.apache.james.mime4j.io.PositionInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        enforceLimit();
        return super.read(b, off, Math.min(len, getBytesLeft()));
    }

    @Override // org.apache.james.mime4j.io.PositionInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long n) throws IOException {
        enforceLimit();
        return super.skip(Math.min(n, getBytesLeft()));
    }

    private int getBytesLeft() {
        return (int) Math.min(2147483647L, this.limit - this.position);
    }
}
