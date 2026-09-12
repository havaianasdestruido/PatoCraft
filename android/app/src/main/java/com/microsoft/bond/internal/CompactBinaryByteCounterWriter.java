package com.microsoft.bond.internal;

import com.microsoft.bond.BondBlob;
import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.ProtocolCapability;
import com.microsoft.bond.ProtocolWriter;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CompactBinaryByteCounterWriter extends ProtocolWriter {
    private int positionBytes;
    private IntArrayStack byteLengthsIndexes = new IntArrayStack(8);
    private IntArrayStack byteLengths = new IntArrayStack(32);

    public int getByteLength(int index) {
        return this.byteLengths.get(index);
    }

    public void reset() {
        this.positionBytes = 0;
        this.byteLengths.clear();
        this.byteLengthsIndexes.clear();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public boolean hasCapability(ProtocolCapability capability) {
        switch (capability) {
            case TAGGED:
            case PASS_THROUGH:
            case CAN_OMIT_FIELDS:
                return true;
            default:
                return super.hasCapability(capability);
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeVersion() throws IOException {
        this.positionBytes += 4;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeStructBegin(BondSerializable metadata, boolean isBase) throws IOException {
        if (!isBase) {
            this.byteLengthsIndexes.push(this.byteLengths.getSize());
            this.byteLengths.push(this.positionBytes);
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeStructEnd(boolean isBase) throws IOException {
        this.positionBytes++;
        if (!isBase) {
            int lengthIndex = this.byteLengthsIndexes.pop();
            int byteSize = this.positionBytes - this.byteLengths.get(lengthIndex);
            this.byteLengths.set(lengthIndex, byteSize);
            this.positionBytes += IntegerHelper.getVarUInt32Size(byteSize);
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldBegin(BondDataType type, int id, BondSerializable metadata) throws IOException {
        if (id <= 5) {
            this.positionBytes++;
        } else if (id <= 255) {
            this.positionBytes += 2;
        } else {
            this.positionBytes += 3;
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldEnd() throws IOException {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldOmitted(BondDataType type, int id, BondSerializable metadata) throws IOException {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int size, BondDataType elementType) throws IOException {
        this.positionBytes = (size < 7 ? 0 : IntegerHelper.getVarUInt32Size(size)) + 1 + this.positionBytes;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int size, BondDataType keyType, BondDataType valueType) throws IOException {
        this.positionBytes += IntegerHelper.getVarUInt32Size(size) + 2;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerEnd() throws IOException {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBool(boolean value) throws IOException {
        this.positionBytes++;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeString(String value) throws IOException {
        if (value == null || value.isEmpty()) {
            this.positionBytes++;
            return;
        }
        byte[] encodedString = StringHelper.encodeToUtf8(value);
        int encodedStringByteSize = encodedString.length;
        this.positionBytes += IntegerHelper.getVarUInt32Size(encodedStringByteSize) + encodedStringByteSize;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeWString(String value) throws IOException {
        if (value.isEmpty()) {
            this.positionBytes++;
            return;
        }
        byte[] encodedString = StringHelper.encodeToUtf16(value);
        int encodedStringByteSize = encodedString.length;
        this.positionBytes += IntegerHelper.getVarUInt32Size(value.length()) + encodedStringByteSize;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFloat(float value) throws IOException {
        this.positionBytes += 4;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeDouble(double value) throws IOException {
        this.positionBytes += 8;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBlob(BondBlob value) throws IOException {
        this.positionBytes += value.size();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt8(byte value) throws IOException {
        this.positionBytes++;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt16(short value) throws IOException {
        this.positionBytes += IntegerHelper.getVarUInt16Size(value);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt32(int value) throws IOException {
        this.positionBytes += IntegerHelper.getVarUInt32Size(value);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt64(long value) throws IOException {
        this.positionBytes += IntegerHelper.getVarUInt64Size(value);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt8(byte value) throws IOException {
        this.positionBytes++;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt16(short value) throws IOException {
        writeUInt16(IntegerHelper.encodeZigzag16(value));
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt32(int value) throws IOException {
        writeUInt32(IntegerHelper.encodeZigzag32(value));
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt64(long value) throws IOException {
        writeUInt64(IntegerHelper.encodeZigzag64(value));
    }
}
