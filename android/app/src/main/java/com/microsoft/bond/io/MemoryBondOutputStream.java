package com.microsoft.bond.io;

import com.microsoft.bond.BondBlob;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MemoryBondOutputStream extends BondOutputStream {
    private static final int DEFAULT_CAPACITY_BYTES = 1024;
    private byte[] buffer;
    private int position;

    public MemoryBondOutputStream() {
        this(1024);
    }

    public MemoryBondOutputStream(int capacityBytes) {
        this.buffer = new byte[capacityBytes];
        this.position = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.buffer = null;
        this.position = -1;
    }

    @Override // com.microsoft.bond.io.BondOutputStream
    public void write(byte value) {
        ensureBufferSizeForExtraBytes(1);
        this.buffer[this.position] = value;
        this.position++;
    }

    @Override // com.microsoft.bond.io.BondOutputStream
    public void write(byte[] buffer, int offset, int length) {
        ensureBufferSizeForExtraBytes(length);
        System.arraycopy(buffer, offset, this.buffer, this.position, length);
        this.position += length;
    }

    private void ensureBufferSizeForExtraBytes(int extraBytes) {
        if (this.buffer.length < this.position + extraBytes) {
            int newSize = this.buffer.length + (this.buffer.length >> 1);
            if (newSize < this.position + extraBytes) {
                newSize = this.position + extraBytes;
            }
            byte[] newBuffer = new byte[newSize];
            System.arraycopy(this.buffer, 0, newBuffer, 0, this.position);
            this.buffer = newBuffer;
        }
    }

    @Override // com.microsoft.bond.io.BondOutputStream
    public void write(byte[] buffer) {
        write(buffer, 0, buffer.length);
    }

    public byte[] toByteArray() {
        byte[] bufferToReturn = new byte[this.position];
        System.arraycopy(this.buffer, 0, bufferToReturn, 0, bufferToReturn.length);
        return bufferToReturn;
    }

    public BondBlob toBondBlod() {
        return new BondBlob(this.buffer, 0, this.position);
    }

    @Override // com.microsoft.bond.io.Seekable
    public boolean isSeekable() {
        return true;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int getPosition() throws IOException {
        return this.position;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPosition(int position) throws IOException {
        if (position < 0 || position >= this.buffer.length) {
            throw new IllegalArgumentException(String.format("Cannot jump to position [%d]. Valid positions are from [%d] to [%d] inclusive.", Integer.valueOf(position), 0, Integer.valueOf(this.buffer.length - 1)));
        }
        this.position = position;
        return this.position;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPositionRelative(int offset) throws IOException {
        return setPosition(this.position + offset);
    }
}
