package org.apache.james.mime4j.io;

import java.io.IOException;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MimeBoundaryInputStream extends LineReaderInputStream {
    private boolean atBoundary;
    private final byte[] boundary;
    private int boundaryLen;
    private BufferedLineReaderInputStream buffer;
    private boolean completed;
    private boolean eof;
    private boolean lastPart;
    private int limit;

    public MimeBoundaryInputStream(BufferedLineReaderInputStream inbuffer, String boundary) throws IOException {
        super(inbuffer);
        if (inbuffer.capacity() <= boundary.length()) {
            throw new IllegalArgumentException("Boundary is too long");
        }
        this.buffer = inbuffer;
        this.eof = false;
        this.limit = -1;
        this.atBoundary = false;
        this.boundaryLen = 0;
        this.lastPart = false;
        this.completed = false;
        this.boundary = new byte[boundary.length() + 2];
        this.boundary[0] = 45;
        this.boundary[1] = 45;
        for (int i = 0; i < boundary.length(); i++) {
            byte ch = (byte) boundary.charAt(i);
            if (ch == 13 || ch == 10) {
                throw new IllegalArgumentException("Boundary may not contain CR or LF");
            }
            this.boundary[i + 2] = ch;
        }
        fillBuffer();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.completed) {
            return -1;
        }
        if (endOfStream() && !hasData()) {
            skipBoundary();
            return -1;
        }
        while (!hasData()) {
            if (endOfStream()) {
                skipBoundary();
                return -1;
            }
            fillBuffer();
        }
        return this.buffer.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        if (this.completed) {
            return -1;
        }
        if (endOfStream() && !hasData()) {
            skipBoundary();
            return -1;
        }
        fillBuffer();
        if (!hasData()) {
            return read(b, off, len);
        }
        int chunk = Math.min(len, this.limit - this.buffer.pos());
        return this.buffer.read(b, off, chunk);
    }

    @Override // org.apache.james.mime4j.io.LineReaderInputStream
    public int readLine(ByteArrayBuffer dst) throws IOException {
        int chunk;
        if (dst == null) {
            throw new IllegalArgumentException("Destination buffer may not be null");
        }
        if (this.completed) {
            return -1;
        }
        if (endOfStream() && !hasData()) {
            skipBoundary();
            return -1;
        }
        int total = 0;
        boolean found = false;
        int bytesRead = 0;
        while (!found) {
            if (!hasData()) {
                bytesRead = fillBuffer();
                if (!hasData() && endOfStream()) {
                    skipBoundary();
                    bytesRead = -1;
                    break;
                }
            }
            int len = this.limit - this.buffer.pos();
            int i = this.buffer.indexOf((byte) 10, this.buffer.pos(), len);
            if (i != -1) {
                found = true;
                chunk = (i + 1) - this.buffer.pos();
            } else {
                chunk = len;
            }
            if (chunk > 0) {
                dst.append(this.buffer.buf(), this.buffer.pos(), chunk);
                this.buffer.skip(chunk);
                total += chunk;
            }
        }
        if (total == 0 && bytesRead == -1) {
            return -1;
        }
        return total;
    }

    private boolean endOfStream() {
        return this.eof || this.atBoundary;
    }

    private boolean hasData() {
        return this.limit > this.buffer.pos() && this.limit <= this.buffer.limit();
    }

    private int fillBuffer() throws IOException {
        int bytesRead;
        if (this.eof) {
            return -1;
        }
        if (!hasData()) {
            bytesRead = this.buffer.fillBuffer();
        } else {
            bytesRead = 0;
        }
        this.eof = bytesRead == -1;
        int i = this.buffer.indexOf(this.boundary);
        while (i > 0 && this.buffer.charAt(i - 1) != 10) {
            int i2 = i + this.boundary.length;
            i = this.buffer.indexOf(this.boundary, i2, this.buffer.limit() - i2);
        }
        if (i != -1) {
            this.limit = i;
            this.atBoundary = true;
            calculateBoundaryLen();
            return bytesRead;
        }
        if (this.eof) {
            this.limit = this.buffer.limit();
            return bytesRead;
        }
        this.limit = this.buffer.limit() - (this.boundary.length + 1);
        return bytesRead;
    }

    private void calculateBoundaryLen() throws IOException {
        this.boundaryLen = this.boundary.length;
        int len = this.limit - this.buffer.pos();
        if (len > 0 && this.buffer.charAt(this.limit - 1) == 10) {
            this.boundaryLen++;
            this.limit--;
        }
        if (len > 1 && this.buffer.charAt(this.limit - 1) == 13) {
            this.boundaryLen++;
            this.limit--;
        }
    }

    private void skipBoundary() throws IOException {
        if (!this.completed) {
            this.completed = true;
            this.buffer.skip(this.boundaryLen);
            boolean checkForLastPart = true;
            while (true) {
                if (this.buffer.length() > 1) {
                    int ch1 = this.buffer.charAt(this.buffer.pos());
                    int ch2 = this.buffer.charAt(this.buffer.pos() + 1);
                    if (checkForLastPart && ch1 == 45 && ch2 == 45) {
                        this.lastPart = true;
                        this.buffer.skip(2);
                        checkForLastPart = false;
                    } else if (ch1 == 13 && ch2 == 10) {
                        this.buffer.skip(2);
                        return;
                    } else {
                        if (ch1 == 10) {
                            this.buffer.skip(1);
                            return;
                        }
                        this.buffer.skip(1);
                    }
                } else if (!this.eof) {
                    fillBuffer();
                } else {
                    return;
                }
            }
        }
    }

    public boolean isLastPart() {
        return this.lastPart;
    }

    public boolean eof() {
        return this.eof && !this.buffer.hasBufferedData();
    }

    public String toString() {
        StringBuilder buffer = new StringBuilder("MimeBoundaryInputStream, boundary ");
        byte[] arr$ = this.boundary;
        for (byte b : arr$) {
            buffer.append((char) b);
        }
        return buffer.toString();
    }
}
