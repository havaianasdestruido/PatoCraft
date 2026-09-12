package Ms.Telemetry;

import com.microsoft.cll.android.EventEnums;
import com.microsoft.telemetry.Domain;
import com.microsoft.telemetry.IJsonSerializable;
import com.microsoft.telemetry.JsonHelper;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CllHeartBeat extends Domain implements IJsonSerializable {
    private int avgSettingsLatencyMs;
    private int avgVortexLatencyMs;
    private double cacheUsagePercent;
    private int eventsQueued;
    private String lastHeartBeat;
    private int logFailures;
    private int maxSettingsLatencyMs;
    private int maxVortexLatencyMs;
    private int quotaDropCount;
    private int rejectDropCount;
    private int settingsFailures4xx;
    private int settingsFailures5xx;
    private int settingsFailuresTimeout;
    private int settingsHttpAttempts;
    private int settingsHttpFailures;
    private int vortexFailures4xx;
    private int vortexFailures5xx;
    private int vortexFailuresTimeout;
    private int vortexHttpAttempts;
    private int vortexHttpFailures;

    public CllHeartBeat() {
        InitializeFields();
        SetupAttributes();
    }

    public String getLastHeartBeat() {
        return this.lastHeartBeat;
    }

    public void setLastHeartBeat(String value) {
        this.lastHeartBeat = value;
    }

    public int getEventsQueued() {
        return this.eventsQueued;
    }

    public void setEventsQueued(int value) {
        this.eventsQueued = value;
    }

    public int getLogFailures() {
        return this.logFailures;
    }

    public void setLogFailures(int value) {
        this.logFailures = value;
    }

    public int getQuotaDropCount() {
        return this.quotaDropCount;
    }

    public void setQuotaDropCount(int value) {
        this.quotaDropCount = value;
    }

    public int getRejectDropCount() {
        return this.rejectDropCount;
    }

    public void setRejectDropCount(int value) {
        this.rejectDropCount = value;
    }

    public int getVortexHttpAttempts() {
        return this.vortexHttpAttempts;
    }

    public void setVortexHttpAttempts(int value) {
        this.vortexHttpAttempts = value;
    }

    public int getVortexHttpFailures() {
        return this.vortexHttpFailures;
    }

    public void setVortexHttpFailures(int value) {
        this.vortexHttpFailures = value;
    }

    public double getCacheUsagePercent() {
        return this.cacheUsagePercent;
    }

    public void setCacheUsagePercent(double value) {
        this.cacheUsagePercent = value;
    }

    public int getAvgVortexLatencyMs() {
        return this.avgVortexLatencyMs;
    }

    public void setAvgVortexLatencyMs(int value) {
        this.avgVortexLatencyMs = value;
    }

    public int getMaxVortexLatencyMs() {
        return this.maxVortexLatencyMs;
    }

    public void setMaxVortexLatencyMs(int value) {
        this.maxVortexLatencyMs = value;
    }

    public int getSettingsHttpAttempts() {
        return this.settingsHttpAttempts;
    }

    public void setSettingsHttpAttempts(int value) {
        this.settingsHttpAttempts = value;
    }

    public int getSettingsHttpFailures() {
        return this.settingsHttpFailures;
    }

    public void setSettingsHttpFailures(int value) {
        this.settingsHttpFailures = value;
    }

    public int getAvgSettingsLatencyMs() {
        return this.avgSettingsLatencyMs;
    }

    public void setAvgSettingsLatencyMs(int value) {
        this.avgSettingsLatencyMs = value;
    }

    public int getMaxSettingsLatencyMs() {
        return this.maxSettingsLatencyMs;
    }

    public void setMaxSettingsLatencyMs(int value) {
        this.maxSettingsLatencyMs = value;
    }

    public int getVortexFailures5xx() {
        return this.vortexFailures5xx;
    }

    public void setVortexFailures5xx(int value) {
        this.vortexFailures5xx = value;
    }

    public int getVortexFailures4xx() {
        return this.vortexFailures4xx;
    }

    public void setVortexFailures4xx(int value) {
        this.vortexFailures4xx = value;
    }

    public int getVortexFailuresTimeout() {
        return this.vortexFailuresTimeout;
    }

    public void setVortexFailuresTimeout(int value) {
        this.vortexFailuresTimeout = value;
    }

    public int getSettingsFailures5xx() {
        return this.settingsFailures5xx;
    }

    public void setSettingsFailures5xx(int value) {
        this.settingsFailures5xx = value;
    }

    public int getSettingsFailures4xx() {
        return this.settingsFailures4xx;
    }

    public void setSettingsFailures4xx(int value) {
        this.settingsFailures4xx = value;
    }

    public int getSettingsFailuresTimeout() {
        return this.settingsFailuresTimeout;
    }

    public void setSettingsFailuresTimeout(int value) {
        this.settingsFailuresTimeout = value;
    }

    @Override // com.microsoft.telemetry.Domain
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        if (this.lastHeartBeat != null) {
            writer.write(prefix + "\"lastHeartBeat\":");
            writer.write(JsonHelper.convert(this.lastHeartBeat));
            prefix = ",";
        }
        if (this.eventsQueued != 0) {
            writer.write(prefix + "\"eventsQueued\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.eventsQueued)));
            prefix = ",";
        }
        if (this.logFailures != 0) {
            writer.write(prefix + "\"logFailures\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.logFailures)));
            prefix = ",";
        }
        if (this.quotaDropCount != 0) {
            writer.write(prefix + "\"quotaDropCount\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.quotaDropCount)));
            prefix = ",";
        }
        if (this.rejectDropCount != 0) {
            writer.write(prefix + "\"rejectDropCount\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.rejectDropCount)));
            prefix = ",";
        }
        if (this.vortexHttpAttempts != 0) {
            writer.write(prefix + "\"vortexHttpAttempts\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.vortexHttpAttempts)));
            prefix = ",";
        }
        if (this.vortexHttpFailures != 0) {
            writer.write(prefix + "\"vortexHttpFailures\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.vortexHttpFailures)));
            prefix = ",";
        }
        if (this.cacheUsagePercent > EventEnums.SampleRate_0_percent) {
            writer.write(prefix + "\"cacheUsagePercent\":");
            writer.write(JsonHelper.convert(Double.valueOf(this.cacheUsagePercent)));
            prefix = ",";
        }
        if (this.avgVortexLatencyMs != 0) {
            writer.write(prefix + "\"avgVortexLatencyMs\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.avgVortexLatencyMs)));
            prefix = ",";
        }
        if (this.maxVortexLatencyMs != 0) {
            writer.write(prefix + "\"maxVortexLatencyMs\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.maxVortexLatencyMs)));
            prefix = ",";
        }
        if (this.settingsHttpAttempts != 0) {
            writer.write(prefix + "\"settingsHttpAttempts\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.settingsHttpAttempts)));
            prefix = ",";
        }
        if (this.settingsHttpFailures != 0) {
            writer.write(prefix + "\"settingsHttpFailures\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.settingsHttpFailures)));
            prefix = ",";
        }
        if (this.avgSettingsLatencyMs != 0) {
            writer.write(prefix + "\"avgSettingsLatencyMs\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.avgSettingsLatencyMs)));
            prefix = ",";
        }
        if (this.maxSettingsLatencyMs != 0) {
            writer.write(prefix + "\"maxSettingsLatencyMs\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.maxSettingsLatencyMs)));
            prefix = ",";
        }
        if (this.vortexFailures5xx != 0) {
            writer.write(prefix + "\"vortexFailures5xx\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.vortexFailures5xx)));
            prefix = ",";
        }
        if (this.vortexFailures4xx != 0) {
            writer.write(prefix + "\"vortexFailures4xx\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.vortexFailures4xx)));
            prefix = ",";
        }
        if (this.vortexFailuresTimeout != 0) {
            writer.write(prefix + "\"vortexFailuresTimeout\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.vortexFailuresTimeout)));
            prefix = ",";
        }
        if (this.settingsFailures5xx != 0) {
            writer.write(prefix + "\"settingsFailures5xx\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.settingsFailures5xx)));
            prefix = ",";
        }
        if (this.settingsFailures4xx != 0) {
            writer.write(prefix + "\"settingsFailures4xx\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.settingsFailures4xx)));
            prefix = ",";
        }
        if (this.settingsFailuresTimeout != 0) {
            writer.write(prefix + "\"settingsFailuresTimeout\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.settingsFailuresTimeout)));
            return ",";
        }
        return prefix;
    }

    public void SetupAttributes() {
        this.Attributes.put("Description", "This event is meant to be sent on a regular basis by all persistent in-process and out-of-process Logging Libraries.");
    }

    @Override // com.microsoft.telemetry.Domain
    protected void InitializeFields() {
        this.QualifiedName = "Ms.Telemetry.CllHeartBeat";
    }
}
