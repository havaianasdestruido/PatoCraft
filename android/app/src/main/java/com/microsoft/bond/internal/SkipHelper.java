package com.microsoft.bond.internal;

import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondException;
import com.microsoft.bond.ProtocolReader;
import com.microsoft.bond.Void;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SkipHelper {
    public static void skip(ProtocolReader reader, BondDataType type) throws IOException {
        switch (type) {
            case BT_BOOL:
                reader.readBool();
                return;
            case BT_UINT8:
                reader.readUInt8();
                return;
            case BT_UINT16:
                reader.readUInt16();
                return;
            case BT_UINT32:
                reader.readUInt32();
                return;
            case BT_UINT64:
                reader.readUInt64();
                return;
            case BT_FLOAT:
                reader.readFloat();
                return;
            case BT_DOUBLE:
                reader.readDouble();
                return;
            case BT_STRING:
                reader.readString();
                return;
            case BT_STRUCT:
                Void dummy = new Void();
                dummy.readNested(reader);
                return;
            case BT_LIST:
            case BT_SET:
                ProtocolReader.ListTag tag = reader.readContainerBegin();
                for (int i = 0; i < tag.size; i++) {
                    reader.skip(tag.type);
                }
                reader.readContainerEnd();
                return;
            case BT_MAP:
                ProtocolReader.MapTag tag2 = reader.readMapContainerBegin();
                for (int i2 = 0; i2 < tag2.size; i2++) {
                    reader.skip(tag2.keyType);
                    reader.skip(tag2.valueType);
                }
                reader.readContainerEnd();
                return;
            case BT_INT8:
                reader.readInt8();
                return;
            case BT_INT16:
                reader.readInt16();
                return;
            case BT_INT32:
                reader.readInt32();
                return;
            case BT_INT64:
                reader.readInt64();
                return;
            case BT_WSTRING:
                reader.readWString();
                return;
            default:
                throw new BondException("Unknown type to skip: " + type.toString());
        }
    }
}
