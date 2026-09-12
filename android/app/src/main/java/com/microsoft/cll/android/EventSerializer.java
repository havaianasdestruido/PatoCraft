package com.microsoft.cll.android;

import com.microsoft.telemetry.IJsonSerializable;
import java.io.IOException;
import java.io.StringWriter;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventSerializer {
    private final String TAG = "EventSerializer";
    private final ILogger logger;

    public EventSerializer(ILogger logger) {
        this.logger = logger;
    }

    public String serialize(IJsonSerializable event) {
        StringWriter writer = new StringWriter();
        try {
            event.serialize(writer);
        } catch (IOException e) {
            this.logger.error("EventSerializer", "IOException when serializing");
        }
        String serialized = writer.toString() + CharsetUtil.CRLF;
        this.logger.info("EventSerializer", serialized);
        return serialized;
    }
}
