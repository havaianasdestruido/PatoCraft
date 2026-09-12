package com.microsoft.xbox.idp.telemetry.utc.model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.microsoft.xbox.idp.telemetry.helpers.UTCLog;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCAccessibilityInfoModel extends UTCJsonBase {
    private HashMap<String, Object> info = new HashMap<>();

    public void addValue(String key, Object value) {
        if (key != null && !this.info.containsKey(key)) {
            this.info.put(key, value);
        }
    }

    public HashMap<String, Object> getInfo() {
        return this.info;
    }

    public void setInfo(HashMap<String, Object> info) {
        this.info = info;
    }

    @Override // com.microsoft.xbox.idp.telemetry.utc.model.UTCJsonBase
    public String toJson() {
        HashMap<String, Object> objects = getInfo();
        GsonBuilder gsonb = new GsonBuilder();
        Gson gson = gsonb.serializeNulls().create();
        try {
            String result = gson.toJson(objects);
            return result;
        } catch (JsonIOException e) {
            UTCLog.log("UTCJsonSerializer", "Error in json serialization" + e.toString());
            return "";
        }
    }

    public String toString() {
        return toJson();
    }
}
