package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Writer;
import net.hockeyapp.android.metrics.JsonHelper;
import net.hockeyapp.android.metrics.model.Domain;

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

    @Override // net.hockeyapp.android.metrics.model.Base
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        writer.write(prefix + "\"baseData\":");
        JsonHelper.writeJsonSerializable(writer, this.baseData);
        return ",";
    }

    public void SetupAttributes() {
        this.Attributes.put("Description", "Data struct to contain both B and C sections.");
    }

    @Override // net.hockeyapp.android.metrics.model.Base
    protected void InitializeFields() {
        this.QualifiedName = "com.microsoft.telemetry.Data";
    }
}
