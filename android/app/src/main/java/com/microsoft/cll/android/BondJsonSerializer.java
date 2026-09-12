package com.microsoft.cll.android;

import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.ProtocolWriter;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BondJsonSerializer {
    private final ILogger logger;
    private final String TAG = "AndroidCll-EventSerializer";
    private final StringBuilder resultString = new StringBuilder();
    private final ProtocolWriter writer = new JsonProtocol(this.resultString);

    public BondJsonSerializer(ILogger logger) {
        this.logger = logger;
    }

    public synchronized String serialize(BondSerializable event) {
        String serialized;
        try {
            event.write(this.writer);
        } catch (IOException e) {
            this.logger.error("AndroidCll-EventSerializer", "IOException when serializing");
        }
        serialized = this.writer.toString();
        this.resultString.setLength(0);
        return serialized;
    }
}
