package com.microsoft.bond.io;

import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FileBondOutputStream extends BondOutputStream {
    private final FileOutputStream stream;

    public FileBondOutputStream(FileOutputStream stream) {
        this.stream = stream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.stream.close();
    }

    @Override // com.microsoft.bond.io.BondOutputStream
    public void write(byte value) throws IOException {
        this.stream.write(value);
    }

    @Override // com.microsoft.bond.io.BondOutputStream
    public void write(byte[] buffer, int offset, int length) throws IOException {
        this.stream.write(buffer, offset, length);
    }

    @Override // com.microsoft.bond.io.BondOutputStream
    public void write(byte[] buffer) throws IOException {
        write(buffer, 0, buffer.length);
    }

    @Override // com.microsoft.bond.io.Seekable
    public boolean isSeekable() {
        return false;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int getPosition() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPosition(int position) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPositionRelative(int offset) throws IOException {
        throw new UnsupportedOperationException();
    }
}
