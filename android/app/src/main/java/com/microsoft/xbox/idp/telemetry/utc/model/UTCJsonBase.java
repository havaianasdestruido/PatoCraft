package com.microsoft.xbox.idp.telemetry.utc.model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.microsoft.xbox.idp.telemetry.helpers.UTCLog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class UTCJsonBase {
    public String toJson() {
        GsonBuilder gsonb = new GsonBuilder();
        Gson gson = gsonb.serializeNulls().create();
        try {
            String jsonData = gson.toJson(this);
            return jsonData;
        } catch (JsonIOException e) {
            UTCLog.log("UTCJsonSerializer", "Error in json serialization" + e.toString());
            return "";
        }
    }
}
