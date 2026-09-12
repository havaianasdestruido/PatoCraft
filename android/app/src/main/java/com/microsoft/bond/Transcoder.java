package com.microsoft.bond;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Transcoder {
    public static void transcode(ProtocolWriter dst, ProtocolReader src) throws IOException {
        if (src.hasCapability(ProtocolCapability.CAN_SEEK) && src.isProtocolSame(dst)) {
            int start = src.getPosition();
            src.skip(BondDataType.BT_STRUCT);
            int length = src.getPosition() - start;
            src.setPosition(start);
            dst.writeBlob(src.readBlob(length));
        }
    }
}
