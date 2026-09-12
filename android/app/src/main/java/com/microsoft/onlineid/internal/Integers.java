package com.microsoft.onlineid.internal;

import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Integers {
    public static int parseIntHex(String hexInt) {
        Strings.verifyArgumentNotNullOrEmpty(hexInt, "hexHr");
        long l = Long.decode(hexInt).longValue();
        if (l < 0 || l > 4294967295L) {
            throw new IllegalArgumentException(String.format(Locale.US, "Hex string does not fit in integer: %s", hexInt));
        }
        return (int) l;
    }
}
