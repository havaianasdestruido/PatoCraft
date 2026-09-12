package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Writer;
import java.util.LinkedHashMap;
import java.util.Map;
import net.hockeyapp.android.metrics.JsonHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventData extends TelemetryData {
    private Map<String, Double> measurements;
    private String name;
    private Map<String, String> properties;
    private int ver = 2;

    public EventData() {
        InitializeFields();
        SetupAttributes();
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public String getEnvelopeName() {
        return "Microsoft.ApplicationInsights.Event";
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public String getBaseType() {
        return "EventData";
    }

    public int getVer() {
        return this.ver;
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public void setVer(int value) {
        this.ver = value;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String value) {
        this.name = value;
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public Map<String, String> getProperties() {
        if (this.properties == null) {
            this.properties = new LinkedHashMap();
        }
        return this.properties;
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public void setProperties(Map<String, String> value) {
        this.properties = value;
    }

    public Map<String, Double> getMeasurements() {
        if (this.measurements == null) {
            this.measurements = new LinkedHashMap();
        }
        return this.measurements;
    }

    public void setMeasurements(Map<String, Double> value) {
        this.measurements = value;
    }

    @Override // net.hockeyapp.android.metrics.model.Domain
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        writer.write(prefix + "\"ver\":");
        writer.write(JsonHelper.convert(Integer.valueOf(this.ver)));
        writer.write(",\"name\":");
        writer.write(JsonHelper.convert(this.name));
        String prefix2 = ",";
        if (this.properties != null) {
            writer.write(",\"properties\":");
            JsonHelper.writeDictionary(writer, this.properties);
            prefix2 = ",";
        }
        if (this.measurements != null) {
            writer.write(prefix2 + "\"measurements\":");
            JsonHelper.writeDictionary(writer, this.measurements);
            return ",";
        }
        return prefix2;
    }

    public void SetupAttributes() {
    }

    @Override // net.hockeyapp.android.metrics.model.Domain
    protected void InitializeFields() {
        this.QualifiedName = "com.microsoft.applicationinsights.contracts.EventData";
    }
}
