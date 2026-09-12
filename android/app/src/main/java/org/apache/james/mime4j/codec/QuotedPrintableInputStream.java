package org.apache.james.mime4j.codec;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class QuotedPrintableInputStream extends InputStream {
    private static Log log = LogFactory.getLog(QuotedPrintableInputStream.class);
    private InputStream stream;
    ByteQueue byteq = new ByteQueue();
    ByteQueue pushbackq = new ByteQueue();
    private byte state = 0;
    private boolean closed = false;

    public QuotedPrintableInputStream(InputStream stream) {
        this.stream = stream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.closed) {
            throw new IOException("QuotedPrintableInputStream has been closed");
        }
        fillBuffer();
        if (this.byteq.count() == 0) {
            return -1;
        }
        byte val = this.byteq.dequeue();
        return val < 0 ? val & 255 : val;
    }

    private void populatePushbackQueue() throws IOException {
        if (this.pushbackq.count() != 0) {
            return;
        }
        while (true) {
            int i = this.stream.read();
            switch (i) {
                case -1:
                    this.pushbackq.clear();
                    return;
                case 9:
                case 32:
                    this.pushbackq.enqueue((byte) i);
                    break;
                case 10:
                case 13:
                    this.pushbackq.clear();
                    this.pushbackq.enqueue((byte) i);
                    return;
                default:
                    this.pushbackq.enqueue((byte) i);
                    return;
            }
        }
    }

    private void fillBuffer() throws IOException {
        byte msdChar = 0;
        while (this.byteq.count() == 0) {
            if (this.pushbackq.count() == 0) {
                populatePushbackQueue();
                if (this.pushbackq.count() == 0) {
                    return;
                }
            }
            byte b = this.pushbackq.dequeue();
            switch (this.state) {
                case 0:
                    if (b != 61) {
                        this.byteq.enqueue(b);
                    } else {
                        this.state = (byte) 1;
                    }
                    break;
                case 1:
                    if (b == 13) {
                        this.state = (byte) 2;
                    } else if ((b >= 48 && b <= 57) || ((b >= 65 && b <= 70) || (b >= 97 && b <= 102))) {
                        this.state = (byte) 3;
                        msdChar = b;
                    } else if (b == 61) {
                        if (log.isWarnEnabled()) {
                            log.warn("Malformed MIME; got ==");
                        }
                        this.byteq.enqueue((byte) 61);
                    } else {
                        if (log.isWarnEnabled()) {
                            log.warn("Malformed MIME; expected \\r or [0-9A-Z], got " + ((int) b));
                        }
                        this.state = (byte) 0;
                        this.byteq.enqueue((byte) 61);
                        this.byteq.enqueue(b);
                    }
                    break;
                case 2:
                    if (b == 10) {
                        this.state = (byte) 0;
                    } else {
                        if (log.isWarnEnabled()) {
                            log.warn("Malformed MIME; expected 10, got " + ((int) b));
                        }
                        this.state = (byte) 0;
                        this.byteq.enqueue((byte) 61);
                        this.byteq.enqueue((byte) 13);
                        this.byteq.enqueue(b);
                    }
                    break;
                case 3:
                    if ((b >= 48 && b <= 57) || ((b >= 65 && b <= 70) || (b >= 97 && b <= 102))) {
                        byte msd = asciiCharToNumericValue(msdChar);
                        byte low = asciiCharToNumericValue(b);
                        this.state = (byte) 0;
                        this.byteq.enqueue((byte) ((msd << 4) | low));
                    } else {
                        if (log.isWarnEnabled()) {
                            log.warn("Malformed MIME; expected [0-9A-Z], got " + ((int) b));
                        }
                        this.state = (byte) 0;
                        this.byteq.enqueue((byte) 61);
                        this.byteq.enqueue(msdChar);
                        this.byteq.enqueue(b);
                    }
                    break;
                default:
                    log.error("Illegal state: " + ((int) this.state));
                    this.state = (byte) 0;
                    this.byteq.enqueue(b);
                    break;
            }
        }
    }

    private byte asciiCharToNumericValue(byte c) {
        if (c >= 48 && c <= 57) {
            return (byte) (c - 48);
        }
        if (c >= 65 && c <= 90) {
            return (byte) ((c - 65) + 10);
        }
        if (c >= 97 && c <= 122) {
            return (byte) ((c - 97) + 10);
        }
        throw new IllegalArgumentException(((char) c) + " is not a hexadecimal digit");
    }
}
