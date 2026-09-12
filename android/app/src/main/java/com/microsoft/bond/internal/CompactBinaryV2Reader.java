package com.microsoft.bond.internal;

import com.microsoft.bond.BondDataType;
import com.microsoft.bond.CompactBinaryReader;
import com.microsoft.bond.ProtocolReader;
import com.microsoft.bond.ProtocolVersion;
import com.microsoft.bond.io.BondInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CompactBinaryV2Reader extends CompactBinaryReader {
    public CompactBinaryV2Reader(BondInputStream stream) {
        super(ProtocolVersion.TWO, stream);
    }

    @Override // com.microsoft.bond.ProtocolReader
    public void readStructBegin(boolean isBase) throws IOException {
        if (!isBase) {
            readUInt32();
        }
    }

    @Override // com.microsoft.bond.CompactBinaryReader, com.microsoft.bond.ProtocolReader
    public ProtocolReader.ListTag readContainerBegin() throws IOException {
        byte rawValue = readUInt8();
        BondDataType elementType = BondDataType.fromValue(rawValue & 31);
        if ((rawValue & 224) != 0) {
            return new ProtocolReader.ListTag((((byte) (rawValue >> 5)) & 7) - 1, elementType);
        }
        int size = readUInt32();
        return new ProtocolReader.ListTag(size, elementType);
    }

    @Override // com.microsoft.bond.CompactBinaryReader, com.microsoft.bond.ProtocolReader
    public void skip(BondDataType type) throws IOException {
        switch (type) {
            case BT_STRUCT:
                int length = readUInt32();
                this.stream.setPositionRelative(length);
                break;
            default:
                super.skip(type);
                break;
        }
    }
}
