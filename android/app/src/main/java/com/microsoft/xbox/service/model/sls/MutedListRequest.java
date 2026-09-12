package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.GsonUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MutedListRequest {
    public long xuid;

    public MutedListRequest(long xuid) {
        this.xuid = xuid;
    }

    public static String getNeverListRequestBody(MutedListRequest mutedListRequest) {
        return GsonUtil.toJsonString(mutedListRequest);
    }
}
