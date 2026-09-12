package com.microsoft.bond.internal;

import android.support.v4.media.TransportMediator;
import com.microsoft.bond.io.BondInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class IntegerHelper {
    public static final int MAX_BYTES_VARINT16 = 3;
    public static final int MAX_BYTES_VARINT32 = 5;
    public static final int MAX_BYTES_VARINT64 = 10;
    public static final int MAX_VARINT_SIZE_BYTES = 10;
    public static final int SIZEOF_BYTE = 1;
    public static final int SIZEOF_INT = 4;
    public static final int SIZEOF_LONG = 8;
    public static final int SIZEOF_SHORT = 2;

    private IntegerHelper() {
    }

    public static int encodeVarUInt16(byte[] dst, short src) {
        return encodeVarUInt16(src, dst, 0);
    }

    public static int encodeVarUInt16(short src, byte[] dst, int offset) {
        if ((65408 & src) != 0) {
            int offset2 = offset + 1;
            dst[offset] = (byte) ((src & 127) | 128);
            src = (short) (src >>> 7);
            if ((65408 & src) != 0) {
                offset = offset2 + 1;
                dst[offset2] = (byte) ((src & 127) | 128);
                src = (short) (src >>> 7);
            } else {
                offset = offset2;
            }
        }
        int offset3 = offset + 1;
        dst[offset] = (byte) (src & 127);
        return offset3;
    }

    public static int encodeVarUInt32(int src, byte[] dst) {
        return encodeVarUInt32(src, dst, 0);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0044 A[PHI: r0 r2
  0x0044: PHI (r0v2 'offset' int) = (r0v1 'offset' int), (r0v3 'offset' int) binds: [B:5:0x0011, B:9:0x002f] A[DONT_GENERATE, DONT_INLINE]
  0x0044: PHI (r2v3 'src' int) = (r2v2 'src' int), (r2v5 'src' int) binds: [B:5:0x0011, B:9:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    public static int encodeVarUInt32(int src, byte[] dst, int offset) {
        if ((src & (-128)) != 0) {
            int offset2 = offset + 1;
            dst[offset] = (byte) ((src & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            src >>>= 7;
            if ((src & (-128)) != 0) {
                offset = offset2 + 1;
                dst[offset2] = (byte) ((src & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
                src >>>= 7;
                if ((src & (-128)) != 0) {
                    offset2 = offset + 1;
                    dst[offset] = (byte) ((src & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
                    src >>>= 7;
                    if ((src & (-128)) != 0) {
                        offset = offset2 + 1;
                        dst[offset2] = (byte) ((src & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
                        src >>>= 7;
                    } else {
                        offset = offset2;
                    }
                }
            } else {
                offset = offset2;
            }
        }
        int offset3 = offset + 1;
        dst[offset] = (byte) (src & TransportMediator.KEYCODE_MEDIA_PAUSE);
        return offset3;
    }

    public static int encodeVarUInt64(long src, byte[] dst) {
        return encodeVarUInt64(src, dst, 0);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00da A[PHI: r0 r6
  0x00da: PHI (r0v2 'offset' int) = (r0v1 'offset' int), (r0v3 'offset' int), (r0v4 'offset' int), (r0v5 'offset' int) binds: [B:5:0x001e, B:9:0x004c, B:13:0x007a, B:17:0x00a8] A[DONT_GENERATE, DONT_INLINE]
  0x00da: PHI (r6v3 'src' long) = (r6v2 'src' long), (r6v5 'src' long), (r6v7 'src' long), (r6v9 'src' long) binds: [B:5:0x001e, B:9:0x004c, B:13:0x007a, B:17:0x00a8] A[DONT_GENERATE, DONT_INLINE]] */
    public static int encodeVarUInt64(long src, byte[] dst, int offset) {
        if (((-128) & src) != 0) {
            int offset2 = offset + 1;
            dst[offset] = (byte) ((127 & src) | 128);
            src >>>= 7;
            if (((-128) & src) != 0) {
                offset = offset2 + 1;
                dst[offset2] = (byte) ((127 & src) | 128);
                src >>>= 7;
                if (((-128) & src) != 0) {
                    offset2 = offset + 1;
                    dst[offset] = (byte) ((127 & src) | 128);
                    src >>>= 7;
                    if (((-128) & src) != 0) {
                        offset = offset2 + 1;
                        dst[offset2] = (byte) ((127 & src) | 128);
                        src >>>= 7;
                        if (((-128) & src) != 0) {
                            offset2 = offset + 1;
                            dst[offset] = (byte) ((127 & src) | 128);
                            src >>>= 7;
                            if (((-128) & src) != 0) {
                                offset = offset2 + 1;
                                dst[offset2] = (byte) ((127 & src) | 128);
                                src >>>= 7;
                                if (((-128) & src) != 0) {
                                    offset2 = offset + 1;
                                    dst[offset] = (byte) ((127 & src) | 128);
                                    src >>>= 7;
                                    if (((-128) & src) != 0) {
                                        offset = offset2 + 1;
                                        dst[offset2] = (byte) ((127 & src) | 128);
                                        src >>>= 7;
                                        if (((-128) & src) != 0) {
                                            dst[offset] = (byte) ((127 & src) | 128);
                                            src >>>= 7;
                                            offset++;
                                        }
                                    } else {
                                        offset = offset2;
                                    }
                                }
                            } else {
                                offset = offset2;
                            }
                        }
                    } else {
                        offset = offset2;
                    }
                }
            } else {
                offset = offset2;
            }
        }
        int offset3 = offset + 1;
        dst[offset] = (byte) (127 & src);
        return offset3;
    }

    public static short decodeVarInt16(BondInputStream stream) throws IOException {
        return (short) decodeVarInt64(stream);
    }

    public static int decodeVarInt32(BondInputStream stream) throws IOException {
        return (int) decodeVarInt64(stream);
    }

    public static long decodeVarInt64(BondInputStream stream) throws IOException {
        long result = 0;
        for (int shift = 0; shift < 64; shift += 7) {
            byte raw = stream.read();
            result |= ((long) (raw & 127)) << shift;
            if ((raw & 128) == 0) {
                break;
            }
        }
        return result;
    }

    public static short encodeZigzag16(short value) {
        return (short) ((value << 1) ^ (value >> 15));
    }

    public static int encodeZigzag32(int value) {
        return (value << 1) ^ (value >> 31);
    }

    public static long encodeZigzag64(long value) {
        return (value << 1) ^ (value >> 63);
    }

    public static short decodeZigzag16(short value) {
        return (short) (((65535 & value) >>> 1) ^ (-(value & 1)));
    }

    public static int decodeZigzag32(int value) {
        return (value >>> 1) ^ (-(value & 1));
    }

    public static long decodeZigzag64(long value) {
        return (value >>> 1) ^ (-(1 & value));
    }

    public static int getVarUInt16Size(short value) {
        if ((65408 & value) != 0) {
            if ((49152 & value) != 0) {
                return 3;
            }
            return 2;
        }
        return 1;
    }

    public static int getVarUInt32Size(int value) {
        if (((-2097152) & value) != 0) {
            if (((-268435456) & value) != 0) {
                return 5;
            }
            return 4;
        }
        if ((value & (-128)) != 0) {
            if ((value & (-16384)) != 0) {
                return 3;
            }
            return 2;
        }
        return 1;
    }

    public static int getVarUInt64Size(long value) {
        if (0 != ((-34359738368L) & value)) {
            if (0 == ((-562949953421312L) & value)) {
                if (0 != ((-4398046511104L) & value)) {
                    return 7;
                }
                return 6;
            }
            if (0 == ((-72057594037927936L) & value)) {
                return 8;
            }
            if (0 != (Long.MIN_VALUE & value)) {
                return 10;
            }
            return 9;
        }
        if (0 != ((-2097152) & value)) {
            if (0 != ((-268435456) & value)) {
                return 5;
            }
            return 4;
        }
        if (0 == ((-128) & value)) {
            return 1;
        }
        if (0 != ((-16384) & value)) {
            return 3;
        }
        return 2;
    }

    public static void writeBigEndianInt32(int value, byte[] writeBuffer) {
        writeBuffer[3] = (byte) value;
        writeBuffer[2] = (byte) (value >> 8);
        writeBuffer[1] = (byte) (value >> 16);
        writeBuffer[0] = (byte) (value >> 24);
    }

    public static int readBigEndianInt32(byte[] buffer) {
        int value = (buffer[3] & 255) | ((buffer[2] & 255) << 8) | ((buffer[1] & 255) << 16) | ((buffer[0] & 255) << 24);
        return value;
    }
}
