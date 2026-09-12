package com.microsoft.telemetry.extensions;

import com.microsoft.telemetry.Extension;
import com.microsoft.telemetry.IJsonSerializable;
import com.microsoft.telemetry.JsonHelper;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class os extends Extension implements IJsonSerializable {
    private String expId;
    private String locale;

    public os() {
        InitializeFields();
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String value) {
        this.locale = value;
    }

    public String getExpId() {
        return this.expId;
    }

    public void setExpId(String value) {
        this.expId = value;
    }

    @Override // com.microsoft.telemetry.Extension
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        if (this.locale != null) {
            writer.write(prefix + "\"locale\":");
            writer.write(JsonHelper.convert(this.locale));
            prefix = ",";
        }
        if (this.expId != null) {
            writer.write(prefix + "\"expId\":");
            writer.write(JsonHelper.convert(this.expId));
            return ",";
        }
        return prefix;
    }

    @Override // com.microsoft.telemetry.Extension
    protected void InitializeFields() {
    }
}
