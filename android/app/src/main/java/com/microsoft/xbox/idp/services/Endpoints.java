package com.microsoft.xbox.idp.services;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface Endpoints {

    public enum Type {
        PROD,
        DNET
    }

    String accounts();

    String privacy();

    String profile();

    String userAccount();

    String userManagement();
}
