package com.microsoft.xbox.idp.telemetry.utc.model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.microsoft.xbox.idp.telemetry.helpers.UTCError;
import com.microsoft.xbox.idp.telemetry.helpers.UTCLog;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCAdditionalInfoModel extends UTCJsonBase {
    private HashMap<String, Object> additionalInfo = new HashMap<>();

    public void addValue(String key, Object value) {
        if (key != null && !this.additionalInfo.containsKey(key)) {
            this.additionalInfo.put(key, value);
        }
    }

    public HashMap<String, Object> getAdditionalInfo() {
        return this.additionalInfo;
    }

    public void setAdditionalInfo(HashMap<String, Object> additionalInfo) {
        this.additionalInfo = additionalInfo;
    }

    @Override // com.microsoft.xbox.idp.telemetry.utc.model.UTCJsonBase
    public String toJson() {
        HashMap<String, Object> objects = this.additionalInfo;
        GsonBuilder gsonb = new GsonBuilder();
        Gson gson = gsonb.serializeNulls().create();
        try {
            String result = gson.toJson(objects);
            return result;
        } catch (Exception e) {
            UTCError.trackException(e, "UTCAdditionalInfoModel.toJson");
            UTCLog.log("UTCJsonSerializer", "Error in json serialization" + e.toString());
            return "";
        }
    }

    public String toString() {
        return toJson();
    }
}
