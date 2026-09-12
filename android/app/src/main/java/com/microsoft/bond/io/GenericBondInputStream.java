package com.microsoft.bond.io;

import com.microsoft.bond.BondBlob;
import com.microsoft.bond.BondException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GenericBondInputStream extends BondInputStream {
    private final InputStream stream;

    public GenericBondInputStream(InputStream stream) {
        this.stream = stream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.stream.close();
    }

    @Override // com.microsoft.bond.io.Seekable
    public boolean isSeekable() {
        return false;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int getPosition() {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPosition(int position) {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPositionRelative(int offset) {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public byte read() {
        try {
            return (byte) this.stream.read();
        } catch (IOException e) {
            throw new BondException(e);
        }
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public int read(byte[] buffer, int offset, int length) {
        try {
            return this.stream.read(buffer, offset, length);
        } catch (IOException e) {
            throw new BondException(e);
        }
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public BondBlob readBlob(int size) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public BondInputStream clone(boolean asReadonlyStream) {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public boolean isCloneable() {
        return false;
    }
}
