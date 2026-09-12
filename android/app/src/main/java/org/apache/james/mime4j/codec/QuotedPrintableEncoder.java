package org.apache.james.mime4j.codec;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
final class QuotedPrintableEncoder {
    private static final byte CR = 13;
    private static final byte EQUALS = 61;
    private static final byte[] HEX_DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
    private static final byte LF = 10;
    private static final byte QUOTED_PRINTABLE_LAST_PLAIN = 126;
    private static final int QUOTED_PRINTABLE_MAX_LINE_LENGTH = 76;
    private static final int QUOTED_PRINTABLE_OCTETS_PER_ESCAPE = 3;
    private static final byte SPACE = 32;
    private static final byte TAB = 9;
    private final boolean binary;
    private final byte[] inBuffer;
    private final byte[] outBuffer;
    private int outputIndex = 0;
    private int nextSoftBreak = 77;
    private OutputStream out = null;
    private boolean pendingSpace = false;
    private boolean pendingTab = false;
    private boolean pendingCR = false;

    public QuotedPrintableEncoder(int bufferSize, boolean binary) {
        this.inBuffer = new byte[bufferSize];
        this.outBuffer = new byte[bufferSize * 3];
        this.binary = binary;
    }

    void initEncoding(OutputStream out) {
        this.out = out;
        this.pendingSpace = false;
        this.pendingTab = false;
        this.pendingCR = false;
        this.nextSoftBreak = 77;
    }

    void encodeChunk(byte[] buffer, int off, int len) throws IOException {
        for (int inputIndex = off; inputIndex < len + off; inputIndex++) {
            encode(buffer[inputIndex]);
        }
    }

    void completeEncoding() throws IOException {
        writePending();
        flushOutput();
    }

    public void encode(InputStream in, OutputStream out) throws IOException {
        initEncoding(out);
        while (true) {
            int inputLength = in.read(this.inBuffer);
            if (inputLength > -1) {
                encodeChunk(this.inBuffer, 0, inputLength);
            } else {
                completeEncoding();
                return;
            }
        }
    }

    private void writePending() throws IOException {
        if (this.pendingSpace) {
            plain(SPACE);
        } else if (this.pendingTab) {
            plain(TAB);
        } else if (this.pendingCR) {
            plain(CR);
        }
        clearPending();
    }

    private void clearPending() throws IOException {
        this.pendingSpace = false;
        this.pendingTab = false;
        this.pendingCR = false;
    }

    private void encode(byte next) throws IOException {
        if (next == 10) {
            if (this.binary) {
                writePending();
                escape(next);
                return;
            } else {
                if (this.pendingCR) {
                    if (this.pendingSpace) {
                        escape(SPACE);
                    } else if (this.pendingTab) {
                        escape(TAB);
                    }
                    lineBreak();
                    clearPending();
                    return;
                }
                writePending();
                plain(next);
                return;
            }
        }
        if (next == 13) {
            if (this.binary) {
                escape(next);
                return;
            } else {
                this.pendingCR = true;
                return;
            }
        }
        writePending();
        if (next == 32) {
            if (this.binary) {
                escape(next);
                return;
            } else {
                this.pendingSpace = true;
                return;
            }
        }
        if (next == 9) {
            if (this.binary) {
                escape(next);
                return;
            } else {
                this.pendingTab = true;
                return;
            }
        }
        if (next < 32) {
            escape(next);
            return;
        }
        if (next > 126) {
            escape(next);
        } else if (next == 61) {
            escape(next);
        } else {
            plain(next);
        }
    }

    private void plain(byte next) throws IOException {
        int i = this.nextSoftBreak - 1;
        this.nextSoftBreak = i;
        if (i <= 1) {
            softBreak();
        }
        write(next);
    }

    private void escape(byte next) throws IOException {
        int i = this.nextSoftBreak - 1;
        this.nextSoftBreak = i;
        if (i <= 3) {
            softBreak();
        }
        int nextUnsigned = next & 255;
        write(EQUALS);
        this.nextSoftBreak--;
        write(HEX_DIGITS[nextUnsigned >> 4]);
        this.nextSoftBreak--;
        write(HEX_DIGITS[nextUnsigned % 16]);
    }

    private void write(byte next) throws IOException {
        byte[] bArr = this.outBuffer;
        int i = this.outputIndex;
        this.outputIndex = i + 1;
        bArr[i] = next;
        if (this.outputIndex >= this.outBuffer.length) {
            flushOutput();
        }
    }

    private void softBreak() throws IOException {
        write(EQUALS);
        lineBreak();
    }

    private void lineBreak() throws IOException {
        write(CR);
        write(LF);
        this.nextSoftBreak = QUOTED_PRINTABLE_MAX_LINE_LENGTH;
    }

    void flushOutput() throws IOException {
        if (this.outputIndex < this.outBuffer.length) {
            this.out.write(this.outBuffer, 0, this.outputIndex);
        } else {
            this.out.write(this.outBuffer);
        }
        this.outputIndex = 0;
    }
}
