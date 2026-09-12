package com.microsoft.xbox.service.model;

import com.microsoft.xbox.toolkit.JavaUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum UserStatus {
    Offline,
    Online;

    public static UserStatus getStatusFromString(String status) {
        return JavaUtil.stringsEqualCaseInsensitive(status, Online.toString()) ? Online : Offline;
    }
}
