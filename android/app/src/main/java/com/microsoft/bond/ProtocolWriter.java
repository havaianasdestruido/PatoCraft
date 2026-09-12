package com.microsoft.bond;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ProtocolWriter implements Closeable {
    public abstract void writeBlob(BondBlob bondBlob) throws IOException;

    public abstract void writeBool(boolean z) throws IOException;

    public abstract void writeContainerBegin(int i, BondDataType bondDataType) throws IOException;

    public abstract void writeContainerBegin(int i, BondDataType bondDataType, BondDataType bondDataType2) throws IOException;

    public abstract void writeContainerEnd() throws IOException;

    public abstract void writeDouble(double d) throws IOException;

    public abstract void writeFloat(float f) throws IOException;

    public abstract void writeInt16(short s) throws IOException;

    public abstract void writeInt32(int i) throws IOException;

    public abstract void writeInt64(long j) throws IOException;

    public abstract void writeInt8(byte b) throws IOException;

    public abstract void writeString(String str) throws IOException;

    public abstract void writeUInt16(short s) throws IOException;

    public abstract void writeUInt32(int i) throws IOException;

    public abstract void writeUInt64(long j) throws IOException;

    public abstract void writeUInt8(byte b) throws IOException;

    public abstract void writeVersion() throws IOException;

    public abstract void writeWString(String str) throws IOException;

    public ProtocolWriter getFirstPassWriter() {
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public void writeBegin() {
    }

    public void writeEnd() {
    }

    public void writeStructBegin(BondSerializable metadata, boolean isBase) throws IOException {
    }

    public void writeStructEnd(boolean isBase) throws IOException {
    }

    public void writeFieldBegin(BondDataType type, int id, BondSerializable metadata) throws IOException {
    }

    public void writeFieldEnd() throws IOException {
    }

    public void writeFieldOmitted(BondDataType type, int id, BondSerializable metadata) throws IOException {
    }

    public boolean hasCapability(ProtocolCapability capability) {
        return false;
    }
}
