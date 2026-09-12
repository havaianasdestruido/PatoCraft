package com.microsoft.bond.internal;

import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.CompactBinaryWriter;
import com.microsoft.bond.ProtocolVersion;
import com.microsoft.bond.ProtocolWriter;
import com.microsoft.bond.io.BondOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CompactBinaryV2Writer extends CompactBinaryWriter {
    private final CompactBinaryByteCounterWriter byteCounterWriter;
    private int currentIndex;

    public CompactBinaryV2Writer(BondOutputStream stream) {
        super(ProtocolVersion.TWO, stream);
        this.byteCounterWriter = new CompactBinaryByteCounterWriter();
        this.currentIndex = 0;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public ProtocolWriter getFirstPassWriter() {
        if (this.currentIndex == 0) {
            return this.byteCounterWriter;
        }
        return null;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeStructBegin(BondSerializable metadata, boolean isBase) throws IOException {
        if (!isBase) {
            writeUInt32(this.byteCounterWriter.getByteLength(this.currentIndex));
            this.currentIndex++;
        }
    }

    @Override // com.microsoft.bond.CompactBinaryWriter, com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int size, BondDataType elementType) throws IOException {
        if (size < 7) {
            writeUInt8((byte) (elementType.getValue() | ((size + 1) << 5)));
        } else {
            super.writeContainerBegin(size, elementType);
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeEnd() {
        this.currentIndex = 0;
        this.byteCounterWriter.reset();
    }
}
