package org.apache.james.mime4j.codec;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class QuotedPrintableOutputStream extends FilterOutputStream {
    private boolean closed;
    private QuotedPrintableEncoder encoder;

    public QuotedPrintableOutputStream(OutputStream out, boolean binary) {
        super(out);
        this.closed = false;
        this.encoder = new QuotedPrintableEncoder(1024, binary);
        this.encoder.initEncoding(out);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            try {
                this.encoder.completeEncoding();
            } finally {
                this.closed = true;
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.encoder.flushOutput();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int b) throws IOException {
        write(new byte[]{(byte) b}, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] b, int off, int len) throws IOException {
        if (this.closed) {
            throw new IOException("QuotedPrintableOutputStream has been closed");
        }
        this.encoder.encodeChunk(b, off, len);
    }
}
