package com.microsoft.bond;

import android.support.v4.internal.view.SupportMenu;
import java.io.IOException;
import java.util.Random;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RandomProtocolReader extends ProtocolReader {
    private static final int DEFAULT_MAX_CONTAINER_SIZE = 10;
    private static final int DEFAULT_MAX_STRING_LENGTH = 20;
    private final int maxContainerSize;
    private final int maxStringLength;
    private final Random random;

    public RandomProtocolReader() {
        this.maxStringLength = 20;
        this.maxContainerSize = 10;
        this.random = new Random();
    }

    public RandomProtocolReader(long seed) {
        this(seed, 20, 10);
    }

    public RandomProtocolReader(long seed, int maxStringLength, int maxContainerSize) {
        this.maxStringLength = maxStringLength;
        this.maxContainerSize = maxContainerSize;
        this.random = new Random(seed);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public boolean hasCapability(ProtocolCapability capability) {
        return false;
    }

    @Override // com.microsoft.bond.ProtocolReader
    public boolean isProtocolSame(ProtocolWriter writer) {
        return false;
    }

    @Override // com.microsoft.bond.ProtocolReader
    public ProtocolReader.ListTag readContainerBegin() {
        return new ProtocolReader.ListTag(this.random.nextInt(this.maxContainerSize) + 1, BondDataType.BT_UNAVAILABLE);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public ProtocolReader.MapTag readMapContainerBegin() {
        return new ProtocolReader.MapTag(this.random.nextInt(this.maxContainerSize) + 1, BondDataType.BT_UNAVAILABLE, BondDataType.BT_UNAVAILABLE);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void readContainerEnd() {
    }

    @Override // com.microsoft.bond.ProtocolReader
    public BondBlob readBlob(int size) {
        return null;
    }

    @Override // com.microsoft.bond.ProtocolReader
    public boolean readBool() {
        return this.random.nextBoolean();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public float readFloat() {
        return this.random.nextLong() * this.random.nextFloat();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public double readDouble() {
        return this.random.nextLong() * this.random.nextDouble();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public byte readUInt8() {
        return (byte) this.random.nextInt(255);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public short readUInt16() {
        return (short) (65535 & this.random.nextInt());
    }

    @Override // com.microsoft.bond.ProtocolReader
    public int readUInt32() {
        return this.random.nextInt();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public long readUInt64() {
        return this.random.nextLong();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public byte readInt8() {
        return (byte) (this.random.nextInt(255) - 127);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public short readInt16() {
        return (short) (this.random.nextInt(SupportMenu.USER_MASK) - 32767);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public int readInt32() {
        return this.random.nextInt();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public long readInt64() {
        return this.random.nextLong();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public String readString() {
        int length = this.random.nextInt(this.maxStringLength) + 1;
        StringBuilder builder = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            builder.append((char) (this.random.nextInt(94) + 32));
        }
        return builder.toString();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public String readWString() {
        return readString();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void skip(BondDataType type) {
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ProtocolReader m16clone() {
        return null;
    }

    @Override // com.microsoft.bond.ProtocolReader
    public int getPosition() throws IOException {
        throw new IOException();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void setPosition(int position) throws IOException {
        throw new IOException();
    }
}
