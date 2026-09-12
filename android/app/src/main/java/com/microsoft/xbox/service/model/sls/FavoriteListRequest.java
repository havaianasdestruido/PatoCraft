package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.GsonUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FavoriteListRequest {
    public ArrayList<String> xuids;

    public FavoriteListRequest(ArrayList<String> userIds) {
        this.xuids = userIds;
    }

    public static String getFavoriteListRequestBody(FavoriteListRequest favoriteListRequest) {
        return GsonUtil.toJsonString(favoriteListRequest);
    }
}
