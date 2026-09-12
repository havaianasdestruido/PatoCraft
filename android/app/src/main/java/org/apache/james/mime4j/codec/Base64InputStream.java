package org.apache.james.mime4j.codec;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Base64InputStream extends InputStream {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int[] BASE64_DECODE;
    private static final byte BASE64_PAD = 61;
    private static final int ENCODED_BUFFER_SIZE = 1536;
    private static final int EOF = -1;
    private static Log log;
    private boolean closed;
    private final byte[] encoded;
    private boolean eof;
    private final InputStream in;
    private int position;
    private final ByteQueue q;
    private final byte[] singleByte;
    private int size;
    private boolean strict;

    static {
        $assertionsDisabled = !Base64InputStream.class.desiredAssertionStatus();
        log = LogFactory.getLog(Base64InputStream.class);
        BASE64_DECODE = new int[256];
        for (int i = 0; i < 256; i++) {
            BASE64_DECODE[i] = -1;
        }
        for (int i2 = 0; i2 < Base64OutputStream.BASE64_TABLE.length; i2++) {
            BASE64_DECODE[Base64OutputStream.BASE64_TABLE[i2] & 255] = i2;
        }
    }

    public Base64InputStream(InputStream in) {
        this(in, false);
    }

    public Base64InputStream(InputStream in, boolean strict) {
        this.singleByte = new byte[1];
        this.closed = false;
        this.encoded = new byte[ENCODED_BUFFER_SIZE];
        this.position = 0;
        this.size = 0;
        this.q = new ByteQueue();
        if (in == null) {
            throw new IllegalArgumentException();
        }
        this.in = in;
        this.strict = strict;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int bytes;
        if (this.closed) {
            throw new IOException("Base64InputStream has been closed");
        }
        do {
            bytes = read0(this.singleByte, 0, 1);
            if (bytes == -1) {
                return -1;
            }
        } while (bytes != 1);
        return this.singleByte[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer) throws IOException {
        if (this.closed) {
            throw new IOException("Base64InputStream has been closed");
        }
        if (buffer == null) {
            throw new NullPointerException();
        }
        if (buffer.length == 0) {
            return 0;
        }
        return read0(buffer, 0, buffer.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer, int offset, int length) throws IOException {
        if (this.closed) {
            throw new IOException("Base64InputStream has been closed");
        }
        if (buffer == null) {
            throw new NullPointerException();
        }
        if (offset < 0 || length < 0 || offset + length > buffer.length) {
            throw new IndexOutOfBoundsException();
        }
        if (length == 0) {
            return 0;
        }
        return read0(buffer, offset, offset + length);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
        }
    }

    private int read0(byte[] buffer, int from, int to) throws IOException {
        int index;
        int index2 = from;
        int qCount = this.q.count();
        while (true) {
            int qCount2 = qCount;
            index = index2;
            qCount = qCount2 - 1;
            if (qCount2 <= 0 || index >= to) {
                break;
            }
            index2 = index + 1;
            buffer[index] = this.q.dequeue();
        }
        if (this.eof) {
            return index == from ? -1 : index - from;
        }
        int data = 0;
        int sextets = 0;
        int index3 = index;
        while (index3 < to) {
            while (this.position == this.size) {
                int n = this.in.read(this.encoded, 0, this.encoded.length);
                if (n == -1) {
                    this.eof = true;
                    if (sextets != 0) {
                        handleUnexpectedEof(sextets);
                    }
                    if (index3 == from) {
                        return -1;
                    }
                    return index3 - from;
                }
                if (n > 0) {
                    this.position = 0;
                    this.size = n;
                } else if (!$assertionsDisabled && n != 0) {
                    throw new AssertionError();
                }
            }
            while (this.position < this.size && index3 < to) {
                byte[] bArr = this.encoded;
                int i = this.position;
                this.position = i + 1;
                int value = bArr[i] & 255;
                if (value == 61) {
                    return decodePad(data, sextets, buffer, index3, to) - from;
                }
                int decoded = BASE64_DECODE[value];
                if (decoded >= 0) {
                    data = (data << 6) | decoded;
                    sextets++;
                    if (sextets == 4) {
                        sextets = 0;
                        byte b1 = (byte) (data >>> 16);
                        byte b2 = (byte) (data >>> 8);
                        byte b3 = (byte) data;
                        if (index3 < to - 2) {
                            int index4 = index3 + 1;
                            buffer[index3] = b1;
                            int index5 = index4 + 1;
                            buffer[index4] = b2;
                            buffer[index5] = b3;
                            index3 = index5 + 1;
                        } else {
                            if (index3 < to - 1) {
                                int index6 = index3 + 1;
                                buffer[index3] = b1;
                                index3 = index6 + 1;
                                buffer[index6] = b2;
                                this.q.enqueue(b3);
                            } else if (index3 < to) {
                                buffer[index3] = b1;
                                this.q.enqueue(b2);
                                this.q.enqueue(b3);
                                index3++;
                            } else {
                                this.q.enqueue(b1);
                                this.q.enqueue(b2);
                                this.q.enqueue(b3);
                            }
                            if ($assertionsDisabled || index3 == to) {
                                return to - from;
                            }
                            throw new AssertionError();
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        if (!$assertionsDisabled && sextets != 0) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || index3 == to) {
            return to - from;
        }
        throw new AssertionError();
    }

    private int decodePad(int data, int sextets, byte[] buffer, int index, int end) throws IOException {
        this.eof = true;
        if (sextets == 2) {
            byte b = (byte) (data >>> 4);
            if (index < end) {
                int index2 = index + 1;
                buffer[index] = b;
                return index2;
            }
            this.q.enqueue(b);
            return index;
        }
        if (sextets == 3) {
            byte b1 = (byte) (data >>> 10);
            byte b2 = (byte) ((data >>> 2) & 255);
            if (index < end - 1) {
                int index3 = index + 1;
                buffer[index] = b1;
                int index4 = index3 + 1;
                buffer[index3] = b2;
                return index4;
            }
            if (index < end) {
                int index5 = index + 1;
                buffer[index] = b1;
                this.q.enqueue(b2);
                return index5;
            }
            this.q.enqueue(b1);
            this.q.enqueue(b2);
            return index;
        }
        handleUnexpecedPad(sextets);
        return index;
    }

    private void handleUnexpectedEof(int sextets) throws IOException {
        if (this.strict) {
            throw new IOException("unexpected end of file");
        }
        log.warn("unexpected end of file; dropping " + sextets + " sextet(s)");
    }

    private void handleUnexpecedPad(int sextets) throws IOException {
        if (this.strict) {
            throw new IOException("unexpected padding character");
        }
        log.warn("unexpected padding character; dropping " + sextets + " sextet(s)");
    }
}
