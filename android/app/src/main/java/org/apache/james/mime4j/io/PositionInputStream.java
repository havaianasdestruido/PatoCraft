package org.apache.james.mime4j.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PositionInputStream extends FilterInputStream {
    private long markedPosition;
    protected long position;

    public PositionInputStream(InputStream inputStream) {
        super(inputStream);
        this.position = 0L;
        this.markedPosition = 0L;
    }

    public long getPosition() {
        return this.position;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int b = this.in.read();
        if (b != -1) {
            this.position++;
        }
        return b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        this.in.reset();
        this.position = this.markedPosition;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int readlimit) {
        this.in.mark(readlimit);
        this.markedPosition = this.position;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long n) throws IOException {
        long c = this.in.skip(n);
        if (c > 0) {
            this.position += c;
        }
        return c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        int c = this.in.read(b, off, len);
        if (c > 0) {
            this.position += (long) c;
        }
        return c;
    }
}
