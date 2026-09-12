package com.microsoft.xbox.toolkit.network;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEHttpClient extends AbstractXLEHttpClient {
    DefaultHttpClient client;

    public XLEHttpClient(ClientConnectionManager connectionManager, HttpParams params) {
        this.client = new DefaultHttpClient(connectionManager, params);
    }

    @Override // com.microsoft.xbox.toolkit.network.AbstractXLEHttpClient
    protected HttpResponse execute(HttpUriRequest get) throws IOException {
        HttpResponse rv = this.client.execute(get, new BasicHttpContext());
        return rv;
    }
}
