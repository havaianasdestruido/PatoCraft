package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.GsonUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NeverListRequest {
    public long xuid;

    public NeverListRequest(long xuid) {
        this.xuid = xuid;
    }

    public static String getNeverListRequestBody(NeverListRequest neverListRequest) {
        return GsonUtil.toJsonString(neverListRequest);
    }
}
