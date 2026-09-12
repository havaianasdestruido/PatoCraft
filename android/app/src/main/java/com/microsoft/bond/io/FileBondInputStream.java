package com.microsoft.bond.io;

import com.microsoft.bond.BondBlob;
import com.microsoft.bond.BondException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FileBondInputStream extends BondInputStream {
    private final File file;
    private int fileLength;
    private int position;
    private FileInputStream stream;

    public FileBondInputStream(File file) throws FileNotFoundException {
        this.file = file;
        resetStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.stream.close();
    }

    @Override // com.microsoft.bond.io.Seekable
    public boolean isSeekable() {
        return true;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int getPosition() {
        return this.position;
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPosition(int newPosition) throws IOException {
        int skipBytes;
        if (newPosition < 0 || newPosition > this.fileLength) {
            throw new BondException("Invalid position: " + newPosition);
        }
        if (newPosition >= this.position) {
            skipBytes = newPosition - this.position;
        } else {
            skipBytes = newPosition;
            resetStream();
        }
        this.position = newPosition;
        this.stream.skip(skipBytes);
        return this.position;
    }

    private void resetStream() throws FileNotFoundException {
        this.fileLength = (int) this.file.length();
        this.position = 0;
        this.stream = new FileInputStream(this.file);
    }

    @Override // com.microsoft.bond.io.Seekable
    public int setPositionRelative(int offset) throws IOException {
        setPosition(this.position + offset);
        return this.position;
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public byte read() throws IOException {
        this.position++;
        return (byte) this.stream.read();
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public int read(byte[] buffer, int offset, int length) throws IOException {
        int readBytes = 0;
        while (readBytes < length) {
            try {
                readBytes += this.stream.read(buffer, offset + readBytes, length - readBytes);
            } catch (Throwable th) {
                this.position += readBytes;
                throw th;
            }
        }
        this.position += readBytes;
        return readBytes;
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public BondBlob readBlob(int size) throws IOException {
        return new BondBlob(this, size);
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public BondInputStream clone(boolean asReadonlyStream) throws IOException {
        FileBondInputStream newStream = new FileBondInputStream(this.file);
        newStream.setPosition(this.position);
        return newStream;
    }

    @Override // com.microsoft.bond.io.BondInputStream
    public boolean isCloneable() {
        return true;
    }
}
