package com.microsoft.cll.android;

import Microsoft.Telemetry.Base;
import com.microsoft.telemetry.Data;
import com.microsoft.telemetry.Domain;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PreSerializedEvent extends Data {
    private static final String TAG = "AndroidCll-PreSerializedEvent";
    public String serializedData;

    public PreSerializedEvent(String eventName, String eventData, String partBName, Map<String, String> attributes) {
        this.serializedData = eventData;
        PreSerializedEvent baseData = this;
        baseData.setBaseData(new Domain());
        baseData.getBaseData().QualifiedName = partBName;
        this.QualifiedName = eventName;
        if (attributes != null) {
            this.Attributes.putAll(attributes);
        }
    }

    @Override // com.microsoft.telemetry.Base, com.microsoft.telemetry.IJsonSerializable
    public void serialize(Writer writer) throws IOException {
        writer.write(this.serializedData);
    }

    public static PreSerializedEvent createFromDynamicEvent(String eventName, String eventData) {
        return new PreSerializedEvent(eventName, eventData, "", null);
    }

    public static PreSerializedEvent createFromStaticEvent(ILogger logger, Base event) {
        String eventName = getPartCName(event);
        String partBName = getPartBName(logger, event);
        Map<String, String> attributes = getAttributes(event);
        if (!partBName.isEmpty()) {
            event.setBaseType(partBName);
        }
        String eventData = serializeEvent(logger, event);
        return new PreSerializedEvent(eventName, eventData, partBName, attributes);
    }

    private static String getPartCName(Base event) {
        String partCName = event.getSchema().getStructs().get(0).getMetadata().getQualified_name();
        return partCName;
    }

    private static String getPartBName(ILogger logger, Base event) {
        try {
            String partBName = ((Microsoft.Telemetry.Domain) ((Microsoft.Telemetry.Data) event).getBaseData()).getSchema().getStructs().get(0).getMetadata().getQualified_name();
            return partBName;
        } catch (ClassCastException e) {
            logger.info(TAG, "This event doesn't extend data");
            return "";
        }
    }

    private static Map<String, String> getAttributes(Base event) {
        Map<String, String> attributes = new HashMap<>();
        attributes.putAll(event.getSchema().getStructs().get(0).getMetadata().getAttributes());
        return attributes;
    }

    private static String serializeEvent(ILogger logger, Base event) {
        BondJsonSerializer bondJsonSerializer = new BondJsonSerializer(logger);
        return bondJsonSerializer.serialize(event);
    }
}
