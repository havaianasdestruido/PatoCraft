package com.microsoft.telemetry.extensions;

import com.microsoft.telemetry.Extension;
import com.microsoft.telemetry.IJsonSerializable;
import com.microsoft.telemetry.JsonHelper;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class app extends Extension implements IJsonSerializable {
    private String expId;
    private String userId;

    public app() {
        InitializeFields();
    }

    public String getExpId() {
        return this.expId;
    }

    public void setExpId(String value) {
        this.expId = value;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String value) {
        this.userId = value;
    }

    @Override // com.microsoft.telemetry.Extension
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        if (this.expId != null) {
            writer.write(prefix + "\"expId\":");
            writer.write(JsonHelper.convert(this.expId));
            prefix = ",";
        }
        if (this.userId != null) {
            writer.write(prefix + "\"userId\":");
            writer.write(JsonHelper.convert(this.userId));
            return ",";
        }
        return prefix;
    }

    @Override // com.microsoft.telemetry.Extension
    protected void InitializeFields() {
    }
}
