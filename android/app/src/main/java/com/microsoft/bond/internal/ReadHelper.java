package com.microsoft.bond.internal;

import com.microsoft.bond.BondBlob;
import com.microsoft.bond.BondDataType;
import com.microsoft.bond.ProtocolReader;
import com.microsoft.cll.android.EventEnums;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class ReadHelper {
    private ReadHelper() {
    }

    public static void invalideType(BondDataType typeInPayload, BondDataType expectedType) {
    }

    public static void validateType(BondDataType typeInPayload, BondDataType expectedType) {
        if (typeInPayload != expectedType && typeInPayload != BondDataType.BT_UNAVAILABLE) {
            invalideType(typeInPayload, expectedType);
        }
    }

    public static boolean readBool(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        validateType(typeInPayload, BondDataType.BT_BOOL);
        return reader.readBool();
    }

    public static String readString(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        validateType(typeInPayload, BondDataType.BT_STRING);
        return reader.readString();
    }

    public static String readWString(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        validateType(typeInPayload, BondDataType.BT_WSTRING);
        return reader.readWString();
    }

    public static float readFloat(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        validateType(typeInPayload, BondDataType.BT_FLOAT);
        return reader.readFloat();
    }

    public static double readDouble(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_DOUBLE || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readDouble();
        }
        if (typeInPayload == BondDataType.BT_FLOAT) {
            return reader.readFloat();
        }
        invalideType(typeInPayload, BondDataType.BT_DOUBLE);
        return EventEnums.SampleRate_0_percent;
    }

    public static byte readUInt8(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        validateType(typeInPayload, BondDataType.BT_UINT8);
        return reader.readUInt8();
    }

    public static short readUInt16(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_UINT16 || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readUInt16();
        }
        if (typeInPayload == BondDataType.BT_UINT8) {
            return reader.readUInt8();
        }
        invalideType(typeInPayload, BondDataType.BT_UINT16);
        return (short) 0;
    }

    public static int readUInt32(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_UINT32 || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readUInt32();
        }
        if (typeInPayload == BondDataType.BT_UINT16) {
            return reader.readUInt16();
        }
        if (typeInPayload == BondDataType.BT_UINT8) {
            return reader.readUInt8();
        }
        invalideType(typeInPayload, BondDataType.BT_UINT32);
        return 0;
    }

    public static long readUInt64(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_UINT64 || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readUInt64();
        }
        if (typeInPayload == BondDataType.BT_UINT32) {
            return reader.readUInt32();
        }
        if (typeInPayload == BondDataType.BT_UINT16) {
            return reader.readUInt16();
        }
        if (typeInPayload == BondDataType.BT_UINT8) {
            return reader.readUInt8();
        }
        invalideType(typeInPayload, BondDataType.BT_UINT64);
        return 0L;
    }

    public static byte readInt8(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        validateType(typeInPayload, BondDataType.BT_INT8);
        return reader.readInt8();
    }

    public static short readInt16(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_INT16 || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readInt16();
        }
        if (typeInPayload == BondDataType.BT_INT8) {
            return reader.readInt8();
        }
        invalideType(typeInPayload, BondDataType.BT_INT16);
        return (short) 0;
    }

    public static int readInt32(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_INT32 || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readInt32();
        }
        if (typeInPayload == BondDataType.BT_INT16) {
            return reader.readInt16();
        }
        if (typeInPayload == BondDataType.BT_INT8) {
            return reader.readInt8();
        }
        invalideType(typeInPayload, BondDataType.BT_INT32);
        return 0;
    }

    public static long readInt64(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        if (typeInPayload == BondDataType.BT_INT64 || typeInPayload == BondDataType.BT_UNAVAILABLE) {
            return reader.readInt64();
        }
        if (typeInPayload == BondDataType.BT_INT32) {
            return reader.readInt32();
        }
        if (typeInPayload == BondDataType.BT_INT16) {
            return reader.readInt16();
        }
        if (typeInPayload == BondDataType.BT_INT8) {
            return reader.readInt8();
        }
        invalideType(typeInPayload, BondDataType.BT_INT64);
        return 0L;
    }

    public static BondBlob readBlob(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        BondBlob result;
        validateType(typeInPayload, BondDataType.BT_LIST);
        ProtocolReader.ListTag tag = reader.readContainerBegin();
        validateType(tag.type, BondDataType.BT_LIST);
        if (tag.size == 0) {
            result = new BondBlob();
        } else {
            result = new BondBlob(reader.readBlob(tag.size));
        }
        reader.readContainerEnd();
        return result;
    }

    public static void skipPartialStruct(ProtocolReader reader) throws IOException {
        ProtocolReader.FieldTag tag;
        do {
            reader.readStructBegin(true);
            tag = reader.readFieldBegin();
            while (tag.type != BondDataType.BT_STOP && tag.type != BondDataType.BT_STOP_BASE) {
                reader.skip(tag.type);
                reader.readFieldEnd();
                tag = reader.readFieldBegin();
            }
            reader.readStructEnd();
        } while (BondDataType.BT_STOP != tag.type);
    }
}
