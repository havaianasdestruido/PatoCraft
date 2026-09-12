package com.microsoft.telemetry.cs2;

import com.microsoft.cll.android.EventEnums;
import com.microsoft.telemetry.Base;
import com.microsoft.telemetry.IJsonSerializable;
import com.microsoft.telemetry.JsonHelper;
import java.io.IOException;
import java.io.Writer;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Envelope implements IJsonSerializable {
    private String appId;
    private String appVer;
    private Base data;
    private String deviceId;
    private long flags;
    private String iKey;
    private String name;
    private String os;
    private String osVer;
    private String seq;
    private Map<String, String> tags;
    private String time;
    private String userId;
    private int ver = 1;
    private double sampleRate = 100.0d;

    public Envelope() {
        InitializeFields();
    }

    public int getVer() {
        return this.ver;
    }

    public void setVer(int value) {
        this.ver = value;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String value) {
        this.name = value;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String value) {
        this.time = value;
    }

    public double getSampleRate() {
        return this.sampleRate;
    }

    public void setSampleRate(double value) {
        this.sampleRate = value;
    }

    public String getSeq() {
        return this.seq;
    }

    public void setSeq(String value) {
        this.seq = value;
    }

    public String getIKey() {
        return this.iKey;
    }

    public void setIKey(String value) {
        this.iKey = value;
    }

    public long getFlags() {
        return this.flags;
    }

    public void setFlags(long value) {
        this.flags = value;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String value) {
        this.deviceId = value;
    }

    public String getOs() {
        return this.os;
    }

    public void setOs(String value) {
        this.os = value;
    }

    public String getOsVer() {
        return this.osVer;
    }

    public void setOsVer(String value) {
        this.osVer = value;
    }

    public String getAppId() {
        return this.appId;
    }

    public void setAppId(String value) {
        this.appId = value;
    }

    public String getAppVer() {
        return this.appVer;
    }

    public void setAppVer(String value) {
        this.appVer = value;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String value) {
        this.userId = value;
    }

    public Map<String, String> getTags() {
        if (this.tags == null) {
            this.tags = new LinkedHashMap();
        }
        return this.tags;
    }

    public void setTags(Map<String, String> value) {
        this.tags = value;
    }

    public Base getData() {
        return this.data;
    }

    public void setData(Base value) {
        this.data = value;
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
        String prefix = "";
        if (this.ver != 0) {
            writer.write("\"ver\":");
            writer.write(JsonHelper.convert(Integer.valueOf(this.ver)));
            prefix = ",";
        }
        writer.write(prefix + "\"name\":");
        writer.write(JsonHelper.convert(this.name));
        writer.write(",\"time\":");
        writer.write(JsonHelper.convert(this.time));
        String prefix2 = ",";
        if (this.sampleRate > EventEnums.SampleRate_0_percent) {
            writer.write(",\"sampleRate\":");
            writer.write(JsonHelper.convert(Double.valueOf(this.sampleRate)));
            prefix2 = ",";
        }
        if (this.seq != null) {
            writer.write(prefix2 + "\"seq\":");
            writer.write(JsonHelper.convert(this.seq));
            prefix2 = ",";
        }
        if (this.iKey != null) {
            writer.write(prefix2 + "\"iKey\":");
            writer.write(JsonHelper.convert(this.iKey));
            prefix2 = ",";
        }
        if (this.flags != 0) {
            writer.write(prefix2 + "\"flags\":");
            writer.write(JsonHelper.convert(Long.valueOf(this.flags)));
            prefix2 = ",";
        }
        if (this.deviceId != null) {
            writer.write(prefix2 + "\"deviceId\":");
            writer.write(JsonHelper.convert(this.deviceId));
            prefix2 = ",";
        }
        if (this.os != null) {
            writer.write(prefix2 + "\"os\":");
            writer.write(JsonHelper.convert(this.os));
            prefix2 = ",";
        }
        if (this.osVer != null) {
            writer.write(prefix2 + "\"osVer\":");
            writer.write(JsonHelper.convert(this.osVer));
            prefix2 = ",";
        }
        if (this.appId != null) {
            writer.write(prefix2 + "\"appId\":");
            writer.write(JsonHelper.convert(this.appId));
            prefix2 = ",";
        }
        if (this.appVer != null) {
            writer.write(prefix2 + "\"appVer\":");
            writer.write(JsonHelper.convert(this.appVer));
            prefix2 = ",";
        }
        if (this.userId != null) {
            writer.write(prefix2 + "\"userId\":");
            writer.write(JsonHelper.convert(this.userId));
            prefix2 = ",";
        }
        if (this.tags != null) {
            writer.write(prefix2 + "\"tags\":");
            JsonHelper.writeDictionary(writer, this.tags);
            prefix2 = ",";
        }
        if (this.data != null) {
            writer.write(prefix2 + "\"data\":");
            JsonHelper.writeJsonSerializable(writer, this.data);
            return ",";
        }
        return prefix2;
    }

    protected void InitializeFields() {
    }
}
