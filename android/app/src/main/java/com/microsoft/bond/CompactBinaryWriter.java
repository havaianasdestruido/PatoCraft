package com.microsoft.bond;

import com.microsoft.bond.internal.CompactBinaryV2Writer;
import com.microsoft.bond.internal.DecimalHelper;
import com.microsoft.bond.internal.IntegerHelper;
import com.microsoft.bond.internal.StringHelper;
import com.microsoft.bond.io.BondOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CompactBinaryWriter extends ProtocolWriter {
    public static final short MAGIC = (short) ProtocolType.COMPACT_PROTOCOL.getValue();
    private final BondOutputStream stream;
    private final ProtocolVersion version;
    private final byte[] writeBuffer = new byte[10];

    public static CompactBinaryWriter createV1(BondOutputStream stream) {
        return new CompactBinaryWriter(ProtocolVersion.ONE, stream);
    }

    public static CompactBinaryWriter createV2(BondOutputStream stream) {
        return new CompactBinaryV2Writer(stream);
    }

    protected CompactBinaryWriter(ProtocolVersion version, BondOutputStream stream) {
        this.version = version;
        this.stream = stream;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeVersion() throws IOException {
        writeUInt16(MAGIC);
        writeUInt16(this.version.getValue());
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeStructEnd(boolean isBase) throws IOException {
        writeUInt8((byte) (isBase ? BondDataType.BT_STOP_BASE.getValue() : BondDataType.BT_STOP.getValue()));
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldBegin(BondDataType type, int id, BondSerializable metadata) throws IOException {
        byte fieldType = (byte) type.getValue();
        if (id <= 5) {
            this.stream.write((byte) ((id << 5) | fieldType));
            return;
        }
        if (id <= 255) {
            this.stream.write((byte) (fieldType | 192));
            this.stream.write((byte) id);
        } else {
            this.stream.write((byte) (fieldType | 224));
            this.stream.write((byte) id);
            this.stream.write((byte) (id >>> 8));
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int size, BondDataType elementType) throws IOException {
        writeUInt8((byte) elementType.getValue());
        writeUInt32(size);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int size, BondDataType keyType, BondDataType valueType) throws IOException {
        writeUInt8((byte) keyType.getValue());
        writeUInt8((byte) valueType.getValue());
        writeUInt32(size);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerEnd() {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBool(boolean value) throws IOException {
        writeUInt8((byte) (value ? 1 : 0));
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeString(String value) throws IOException {
        if (value.isEmpty()) {
            writeUInt32(0);
            return;
        }
        byte[] buffer = StringHelper.encodeToUtf8(value);
        int size = buffer.length;
        writeUInt32(size);
        this.stream.write(buffer);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeWString(String value) throws IOException {
        if (value.isEmpty()) {
            writeUInt32(0);
            return;
        }
        writeUInt32(value.length());
        byte[] buffer = StringHelper.encodeToUtf16(value);
        this.stream.write(buffer, 0, buffer.length);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFloat(float value) throws IOException {
        DecimalHelper.encodeFloat(value, this.writeBuffer);
        this.stream.write(this.writeBuffer, 0, 4);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeDouble(double value) throws IOException {
        DecimalHelper.encodeDouble(value, this.writeBuffer);
        this.stream.write(this.writeBuffer, 0, 8);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBlob(BondBlob value) throws IOException {
        this.stream.write(value.getBuffer(), value.getOffset(), value.size());
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt8(byte value) throws IOException {
        this.stream.write(value);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt16(short value) throws IOException {
        int bytesWritten = IntegerHelper.encodeVarUInt16(value, this.writeBuffer, 0);
        this.stream.write(this.writeBuffer, 0, bytesWritten);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt32(int value) throws IOException {
        int bytesWritten = IntegerHelper.encodeVarUInt32(value, this.writeBuffer, 0);
        this.stream.write(this.writeBuffer, 0, bytesWritten);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt64(long value) throws IOException {
        int bytesWritten = IntegerHelper.encodeVarUInt64(value, this.writeBuffer, 0);
        this.stream.write(this.writeBuffer, 0, bytesWritten);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt8(byte value) throws IOException {
        this.stream.write(value);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt16(short value) throws IOException {
        short zigZagged = IntegerHelper.encodeZigzag16(value);
        int bytesWritten = IntegerHelper.encodeVarUInt16(zigZagged, this.writeBuffer, 0);
        this.stream.write(this.writeBuffer, 0, bytesWritten);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt32(int value) throws IOException {
        int zigZagged = IntegerHelper.encodeZigzag32(value);
        int bytesWritten = IntegerHelper.encodeVarUInt32(zigZagged, this.writeBuffer, 0);
        this.stream.write(this.writeBuffer, 0, bytesWritten);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt64(long value) throws IOException {
        long zigZagged = IntegerHelper.encodeZigzag64(value);
        int bytesWritten = IntegerHelper.encodeVarUInt64(zigZagged, this.writeBuffer, 0);
        this.stream.write(this.writeBuffer, 0, bytesWritten);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public boolean hasCapability(ProtocolCapability capability) {
        switch (capability) {
            case CAN_OMIT_FIELDS:
            case TAGGED:
                return true;
            default:
                return super.hasCapability(capability);
        }
    }

    public String toString() {
        return String.format("[%s version=%d]", getClass().getName(), Short.valueOf(this.version.getValue()));
    }

    public ProtocolVersion getVersion() {
        return this.version;
    }
}
