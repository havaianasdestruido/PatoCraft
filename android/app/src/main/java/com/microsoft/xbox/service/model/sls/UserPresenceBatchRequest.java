package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.GsonUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UserPresenceBatchRequest {
    public String level = "all";
    public ArrayList<String> users;

    public UserPresenceBatchRequest(ArrayList<String> userIds) {
        this.users = userIds;
    }

    public static String getUserPresenceBatchRequestBody(UserPresenceBatchRequest userPresenceBatchRequest) {
        return GsonUtil.toJsonString(userPresenceBatchRequest);
    }
}
