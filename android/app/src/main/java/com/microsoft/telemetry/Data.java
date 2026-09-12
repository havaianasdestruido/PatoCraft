package com.microsoft.telemetry;

import com.microsoft.telemetry.Domain;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Data<TDomain extends Domain> extends Base implements ITelemetryData {
    private TDomain baseData;

    public Data() {
        InitializeFields();
        SetupAttributes();
    }

    public TDomain getBaseData() {
        return this.baseData;
    }

    public void setBaseData(TDomain value) {
        this.baseData = value;
    }

    @Override // com.microsoft.telemetry.Base
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        writer.write(prefix + "\"baseData\":");
        JsonHelper.writeJsonSerializable(writer, this.baseData);
        return ",";
    }

    public void SetupAttributes() {
        this.Attributes.put("Description", "Data struct to contain both B and C sections.");
    }

    @Override // com.microsoft.telemetry.Base
    protected void InitializeFields() {
        this.QualifiedName = "com.microsoft.telemetry.Data";
    }
}
