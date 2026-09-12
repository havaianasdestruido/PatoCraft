package com.microsoft.telemetry;

import java.io.IOException;
import java.io.Writer;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Domain implements IJsonSerializable {
    public LinkedHashMap<String, String> Attributes = new LinkedHashMap<>();
    public String QualifiedName;

    public Domain() {
        InitializeFields();
    }

    @Override // com.microsoft.telemetry.IJsonSerializable
    public void serialize(Writer writer) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("writer");
        }
        writer.write(123);
        serializeContent(writer);
        writer.write(125);
    }

    protected String serializeContent(Writer writer) throws IOException {
        return "";
    }

    protected void InitializeFields() {
    }
}
