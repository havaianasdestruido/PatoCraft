package com.microsoft.xbox.service.network.managers;

import java.net.URI;
import org.apache.http.client.methods.HttpPost;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class HttpDeleteWithRequestBody extends HttpPost {
    public HttpDeleteWithRequestBody(URI url) {
        super(url);
    }

    @Override // org.apache.http.client.methods.HttpPost, org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "DELETE";
    }
}
