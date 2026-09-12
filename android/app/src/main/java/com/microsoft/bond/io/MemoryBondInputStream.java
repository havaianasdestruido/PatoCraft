package com.microsoft.bond.io;

import com.microsoft.bond.BondBlob;
import com.microsoft.bond.BondException;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MemoryBondInputStream extends BondInputStream {
    private final byte[] buffer;
    private final int bufferLength;
    private final int bufferOffset;
    private int readPosition;

    public MemoryBondInputStream(byte[] buffer) {
        this(buffer, 0, buffer.length);
    }

    public MemoryBondInputStream(byte[] buffer, int offset, int length) {
        this.buffer = buffer;
        this.bufferOffset = offset;
        this.bufferLength = length;
        this.readPosition = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.microsoft.bond.io.Seekable
    public boolean isSeekable() {
        return true;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int getPosition() {
        return this.readPosition;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPosition(int position) {
        validateNewPosition(position);
        this.readPosition = position;
        return this.readPosition;
    }

    private void validateNewPosition(int newPosition) {
        if (newPosition < 0) {
            throw new BondException(String.format("Invalid stream position [%s].", Integer.valueOf(newPosition)));
        }
        if (newPosition > this.bufferLength) {
            throw new BondException(String.format("Position [%s] is past the end of the buffer.", Integer.valueOf(newPosition)));
        }
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPositionRelative(int offset) {
        int newPosition = this.readPosition + offset;
        validateNewPosition(newPosition);
        this.readPosition = newPosition;
        return this.readPosition;
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public byte read() throws EOFException {
        validateRead(1);
        this.readPosition++;
        return this.buffer[(this.bufferOffset + this.readPosition) - 1];
    }

    private void validateRead(int bytesToBeRead) throws EOFException {
        int newPosition = this.readPosition + bytesToBeRead;
        if (newPosition > this.bufferLength) {
            throw new EOFException(String.format("EOF reached. Trying to read [%d] bytes", Integer.valueOf(bytesToBeRead)));
        }
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public int read(byte[] buffer, int offset, int length) throws EOFException {
        validateRead(length);
        System.arraycopy(this.buffer, this.bufferOffset + this.readPosition, buffer, offset, length);
        this.readPosition += length;
        return length;
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public BondBlob readBlob(int size) throws IOException {
        return new BondBlob(this, size);
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public BondInputStream clone(boolean asReadonlyStream) {
        MemoryBondInputStream newStream = new MemoryBondInputStream(this.buffer, this.bufferOffset, this.bufferLength);
        newStream.readPosition = this.readPosition;
        return newStream;
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public boolean isCloneable() {
        return true;
    }
}
