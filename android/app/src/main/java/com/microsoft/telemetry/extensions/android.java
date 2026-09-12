package com.microsoft.telemetry.extensions;

import com.microsoft.telemetry.Extension;
import com.microsoft.telemetry.IJsonSerializable;
import com.microsoft.telemetry.JsonHelper;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class android extends Extension implements IJsonSerializable {
    private String libVer;
    private List<String> tickets;

    public android() {
        InitializeFields();
    }

    public String getLibVer() {
        return this.libVer;
    }

    public void setLibVer(String value) {
        this.libVer = value;
    }

    public List<String> getTickets() {
        if (this.tickets == null) {
            this.tickets = new ArrayList();
        }
        return this.tickets;
    }

    public void setTickets(List<String> value) {
        this.tickets = value;
    }

    @Override // com.microsoft.telemetry.Extension
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        if (this.libVer != null) {
            writer.write(prefix + "\"libVer\":");
            writer.write(JsonHelper.convert(this.libVer));
            prefix = ",";
        }
        if (this.tickets != null) {
            writer.write(prefix + "\"tickets\":");
            JsonHelper.writeListString(writer, this.tickets);
            return ",";
        }
        return prefix;
    }

    @Override // com.microsoft.telemetry.Extension
    protected void InitializeFields() {
    }
}
