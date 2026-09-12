package com.microsoft.bond.internal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class StringHelper {
    public static final Charset UTF8 = Charset.forName("utf-8");
    public static final Charset UTF16 = Charset.forName("utf-16le");

    private StringHelper() {
    }

    public static String decodeFromUtf8(byte[] buffer, int offset, int length) {
        return new String(buffer, offset, length, UTF8);
    }

    public static byte[] encodeToUtf8(String src) {
        return src.getBytes(UTF8);
    }

    public static String decodeFromUtf16(byte[] buffer, int offset, int length) {
        return new String(buffer, offset, length, UTF16);
    }

    public static byte[] encodeToUtf16(String src) {
        return src.getBytes(UTF16);
    }
}
