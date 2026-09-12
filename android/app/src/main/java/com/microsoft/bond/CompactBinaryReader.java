package com.microsoft.bond;

import com.microsoft.bond.internal.CompactBinaryV2Reader;
import com.microsoft.bond.internal.DecimalHelper;
import com.microsoft.bond.internal.IntegerHelper;
import com.microsoft.bond.internal.SkipHelper;
import com.microsoft.bond.internal.StringHelper;
import com.microsoft.bond.io.BondInputStream;
import com.microsoft.bond.io.MemoryBondInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CompactBinaryReader extends ProtocolReader {
    private byte[] readBuffer = new byte[64];
    protected final BondInputStream stream;
    private final ProtocolVersion version;

    public static CompactBinaryReader createV1(BondInputStream stream) {
        return new CompactBinaryReader(ProtocolVersion.ONE, stream);
    }

    public static CompactBinaryReader createV1(byte[] buffer, int offset, int length) {
        return createV1(new MemoryBondInputStream(buffer, offset, length));
    }

    public static CompactBinaryReader createV1(byte[] buffer) {
        return createV1(buffer, 0, buffer.length);
    }

    public static CompactBinaryReader createV2(BondInputStream stream) {
        return new CompactBinaryV2Reader(stream);
    }

    public static CompactBinaryReader createV2(byte[] buffer, int offset, int length) {
        return createV2(new MemoryBondInputStream(buffer, offset, length));
    }

    public static CompactBinaryReader createV2(byte[] buffer) {
        return createV2(buffer, 0, buffer.length);
    }

    protected CompactBinaryReader(ProtocolVersion version, BondInputStream stream) {
        this.version = version;
        this.stream = stream;
    }

    private void ensureReadBufferCapacity(int size) {
        if (this.readBuffer.length < size) {
            this.readBuffer = new byte[size];
        }
    }

    @Override // com.microsoft.bond.ProtocolReader
    public ProtocolReader.FieldTag readFieldBegin() throws IOException {
        int id;
        BondDataType bondDataType = BondDataType.BT_STOP;
        byte raw = this.stream.read();
        BondDataType type = BondDataType.fromValue(raw & 31);
        int id2 = raw & 224;
        if (id2 == 224) {
            id = (this.stream.read() & 255) | ((this.stream.read() & 255) << 8);
        } else if (id2 == 192) {
            id = this.stream.read();
        } else {
            id = id2 >> 5;
        }
        return new ProtocolReader.FieldTag(type, id);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public ProtocolReader.ListTag readContainerBegin() throws IOException {
        BondDataType elementType = BondDataType.fromValue(readUInt8());
        int size = readUInt32();
        return new ProtocolReader.ListTag(size, elementType);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public ProtocolReader.MapTag readMapContainerBegin() throws IOException {
        BondDataType keyType = BondDataType.fromValue(readUInt8());
        BondDataType valueType = BondDataType.fromValue(readUInt8());
        int size = readUInt32();
        return new ProtocolReader.MapTag(size, keyType, valueType);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void readContainerEnd() {
    }

    @Override // com.microsoft.bond.ProtocolReader
    public boolean readBool() throws IOException {
        return readUInt8() != 0;
    }

    @Override // com.microsoft.bond.ProtocolReader
    public String readString() throws IOException {
        int size = IntegerHelper.decodeVarInt32(this.stream);
        if (size == 0) {
            return "";
        }
        ensureReadBufferCapacity(size);
        this.stream.read(this.readBuffer, 0, size);
        return StringHelper.decodeFromUtf8(this.readBuffer, 0, size);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public String readWString() throws IOException {
        int size = IntegerHelper.decodeVarInt32(this.stream) << 1;
        if (size == 0) {
            return "";
        }
        ensureReadBufferCapacity(size);
        this.stream.read(this.readBuffer, 0, size);
        return StringHelper.decodeFromUtf16(this.readBuffer, 0, size);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public float readFloat() throws IOException {
        ensureReadBufferCapacity(4);
        this.stream.read(this.readBuffer, 0, 4);
        return DecimalHelper.decodeFloat(this.readBuffer);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public double readDouble() throws IOException {
        ensureReadBufferCapacity(8);
        this.stream.read(this.readBuffer, 0, 8);
        return DecimalHelper.decodeDouble(this.readBuffer);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public BondBlob readBlob(int size) throws IOException {
        return this.stream.readBlob(size);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public byte readUInt8() throws IOException {
        return this.stream.read();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public short readUInt16() throws IOException {
        return IntegerHelper.decodeVarInt16(this.stream);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public int readUInt32() throws IOException {
        return IntegerHelper.decodeVarInt32(this.stream);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public long readUInt64() throws IOException {
        return IntegerHelper.decodeVarInt64(this.stream);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public byte readInt8() throws IOException {
        return this.stream.read();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public short readInt16() throws IOException {
        return IntegerHelper.decodeZigzag16(IntegerHelper.decodeVarInt16(this.stream));
    }

    @Override // com.microsoft.bond.ProtocolReader
    public int readInt32() throws IOException {
        return IntegerHelper.decodeZigzag32(IntegerHelper.decodeVarInt32(this.stream));
    }

    @Override // com.microsoft.bond.ProtocolReader
    public long readInt64() throws IOException {
        return IntegerHelper.decodeZigzag64(IntegerHelper.decodeVarInt64(this.stream));
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void skip(BondDataType type) throws IOException {
        ProtocolReader.FieldTag tag;
        switch (type) {
            case BT_STRING:
                int size = readUInt32();
                this.stream.setPositionRelative(size);
                return;
            case BT_WSTRING:
                int size2 = readUInt32() << 1;
                this.stream.setPositionRelative(size2);
                return;
            case BT_LIST:
            case BT_SET:
                SkipContainer();
                return;
            case BT_STRUCT:
                break;
            default:
                SkipHelper.skip(this, type);
                return;
        }
        do {
            tag = readFieldBegin();
            while (tag.type != BondDataType.BT_STOP && tag.type != BondDataType.BT_STOP_BASE) {
                skip(tag.type);
                readFieldEnd();
                tag = readFieldBegin();
            }
        } while (tag.type != BondDataType.BT_STOP);
    }

    private void SkipContainer() throws IOException {
        ProtocolReader.ListTag tag = readContainerBegin();
        if (tag.type == BondDataType.BT_UINT8 || tag.type == BondDataType.BT_INT8) {
            this.stream.setPositionRelative(tag.size);
        } else {
            for (int i = 0; i < tag.size; i++) {
                skip(tag.type);
            }
        }
        readContainerEnd();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public boolean isProtocolSame(ProtocolWriter writer) {
        if (!(writer instanceof CompactBinaryWriter)) {
            return false;
        }
        CompactBinaryWriter cbWriter = (CompactBinaryWriter) writer;
        return this.version == cbWriter.getVersion();
    }

    @Override // com.microsoft.bond.ProtocolReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.stream.close();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public ProtocolReader cloneReader() throws IOException {
        BondInputStream clonedStream = this.stream.clone(true);
        if (this.version == ProtocolVersion.ONE) {
            return createV1(clonedStream);
        }
        if (this.version == ProtocolVersion.TWO) {
            return createV2(clonedStream);
        }
        return null;
    }

    @Override // com.microsoft.bond.ProtocolReader
    public boolean hasCapability(ProtocolCapability capability) {
        switch (capability) {
            case CLONEABLE:
                return this.stream.isCloneable();
            case CAN_OMIT_FIELDS:
            case TAGGED:
                return true;
            case CAN_SEEK:
                return this.stream.isSeekable();
            default:
                return super.hasCapability(capability);
        }
    }

    public String toString() {
        return String.format("[%s version=%d]", getClass().getName(), Short.valueOf(this.version.getValue()));
    }

    @Override // com.microsoft.bond.ProtocolReader
    public int getPosition() throws IOException {
        return this.stream.getPosition();
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void setPosition(int position) throws IOException {
        this.stream.setPosition(position);
    }
}
