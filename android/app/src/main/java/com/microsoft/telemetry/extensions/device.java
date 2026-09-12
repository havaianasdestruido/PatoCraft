package com.microsoft.telemetry.extensions;

import com.microsoft.telemetry.Extension;
import com.microsoft.telemetry.IJsonSerializable;
import com.microsoft.telemetry.JsonHelper;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class device extends Extension implements IJsonSerializable {
    private String authId;
    private String authSecId;
    private String deviceClass;
    private String id;
    private String localId;

    public device() {
        InitializeFields();
    }

    public String getId() {
        return this.id;
    }

    public void setId(String value) {
        this.id = value;
    }

    public String getLocalId() {
        return this.localId;
    }

    public void setLocalId(String value) {
        this.localId = value;
    }

    public String getAuthId() {
        return this.authId;
    }

    public void setAuthId(String value) {
        this.authId = value;
    }

    public String getAuthSecId() {
        return this.authSecId;
    }

    public void setAuthSecId(String value) {
        this.authSecId = value;
    }

    public String getDeviceClass() {
        return this.deviceClass;
    }

    public void setDeviceClass(String value) {
        this.deviceClass = value;
    }

    @Override // com.microsoft.telemetry.Extension
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        if (this.id != null) {
            writer.write(prefix + "\"id\":");
            writer.write(JsonHelper.convert(this.id));
            prefix = ",";
        }
        if (this.localId != null) {
            writer.write(prefix + "\"localId\":");
            writer.write(JsonHelper.convert(this.localId));
            prefix = ",";
        }
        if (this.authId != null) {
            writer.write(prefix + "\"authId\":");
            writer.write(JsonHelper.convert(this.authId));
            prefix = ",";
        }
        if (this.authSecId != null) {
            writer.write(prefix + "\"authSecId\":");
            writer.write(JsonHelper.convert(this.authSecId));
            prefix = ",";
        }
        if (this.deviceClass != null) {
            writer.write(prefix + "\"deviceClass\":");
            writer.write(JsonHelper.convert(this.deviceClass));
            return ",";
        }
        return prefix;
    }

    @Override // com.microsoft.telemetry.Extension
    protected void InitializeFields() {
    }
}
