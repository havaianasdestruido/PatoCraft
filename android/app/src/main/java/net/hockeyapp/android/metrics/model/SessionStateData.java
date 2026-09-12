package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Writer;
import java.util.Map;
import net.hockeyapp.android.metrics.JsonHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SessionStateData extends TelemetryData {
    private int ver = 2;
    private SessionState state = SessionState.START;

    public SessionStateData() {
        InitializeFields();
        SetupAttributes();
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public String getEnvelopeName() {
        return "Microsoft.ApplicationInsights.SessionState";
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public String getBaseType() {
        return "SessionStateData";
    }

    public int getVer() {
        return this.ver;
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public void setVer(int value) {
        this.ver = value;
    }

    public SessionState getState() {
        return this.state;
    }

    public void setState(SessionState value) {
        this.state = value;
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public Map<String, String> getProperties() {
        return null;
    }

    @Override // net.hockeyapp.android.metrics.ITelemetry
    public void setProperties(Map<String, String> value) {
    }

    @Override // net.hockeyapp.android.metrics.model.Domain
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        writer.write(prefix + "\"ver\":");
        writer.write(JsonHelper.convert(Integer.valueOf(this.ver)));
        writer.write(",\"state\":");
        writer.write(JsonHelper.convert(Integer.valueOf(this.state.getValue())));
        return ",";
    }

    public void SetupAttributes() {
    }

    @Override // net.hockeyapp.android.metrics.model.Domain
    protected void InitializeFields() {
        this.QualifiedName = "com.microsoft.applicationinsights.contracts.SessionStateData";
    }
}
