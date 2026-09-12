package com.microsoft.bond.internal;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class DecimalHelper {
    public static final int SIZEOF_DOUBLE = 8;
    public static final int SIZEOF_FLOAT = 4;

    private DecimalHelper() {
    }

    public static float decodeFloat(byte[] buffer) {
        int bits = (buffer[0] & 255) | ((buffer[1] & 255) << 8) | ((buffer[2] & 255) << 16) | ((buffer[3] & 255) << 24);
        return Float.intBitsToFloat(bits);
    }

    public static double decodeDouble(byte[] buffer) {
        long bits = (((long) buffer[0]) & 255) | ((((long) buffer[1]) & 255) << 8) | ((((long) buffer[2]) & 255) << 16) | ((((long) buffer[3]) & 255) << 24) | ((((long) buffer[4]) & 255) << 32) | ((((long) buffer[5]) & 255) << 40) | ((((long) buffer[6]) & 255) << 48) | ((((long) buffer[7]) & 255) << 56);
        return Double.longBitsToDouble(bits);
    }

    public static void encodeFloat(float value, byte[] writeBuffer) {
        int valueBits = Float.floatToRawIntBits(value);
        writeBuffer[0] = (byte) valueBits;
        writeBuffer[1] = (byte) (valueBits >> 8);
        writeBuffer[2] = (byte) (valueBits >> 16);
        writeBuffer[3] = (byte) (valueBits >> 24);
    }

    public static void encodeDouble(double value, byte[] writeBuffer) {
        long valueBits = Double.doubleToRawLongBits(value);
        writeBuffer[0] = (byte) valueBits;
        writeBuffer[1] = (byte) (valueBits >> 8);
        writeBuffer[2] = (byte) (valueBits >> 16);
        writeBuffer[3] = (byte) (valueBits >> 24);
        writeBuffer[4] = (byte) (valueBits >> 32);
        writeBuffer[5] = (byte) (valueBits >> 40);
        writeBuffer[6] = (byte) (valueBits >> 48);
        writeBuffer[7] = (byte) (valueBits >> 56);
    }
}
