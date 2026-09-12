package com.microsoft.xbox.idp.services;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EndpointsFactory {
    public static Endpoints get() {
        switch (Config.endpointType) {
            case PROD:
                return new EndpointsProd();
            case DNET:
                return new EndpointsDnet();
            default:
                return null;
        }
    }
}
