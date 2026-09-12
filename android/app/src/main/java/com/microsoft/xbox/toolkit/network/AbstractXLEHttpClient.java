package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.XLEException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractXLEHttpClient {
    protected abstract HttpResponse execute(HttpUriRequest httpUriRequest) throws IOException;

    public XLEHttpStatusAndStream getHttpStatusAndStreamInternal(HttpUriRequest httpGet, boolean printStreamDebug) throws XLEException {
        XLEHttpStatusAndStream rv = new XLEHttpStatusAndStream();
        try {
            HttpResponse response = execute(httpGet);
            if (response != null && response.getStatusLine() != null) {
                rv.statusLine = response.getStatusLine().toString();
                rv.statusCode = response.getStatusLine().getStatusCode();
            }
            if (response != null && response.getLastHeader("Location") != null) {
                rv.redirectUrl = response.getLastHeader("Location").getValue();
            }
            if (response != null) {
                rv.headers = response.getAllHeaders();
            }
            HttpEntity entity = response == null ? null : response.getEntity();
            if (entity != null) {
                byte[] buffer = EntityUtils.toByteArray(entity);
                rv.stream = new ByteArrayInputStream(buffer);
                entity.consumeContent();
                Header contentEncodingHeader = response.getFirstHeader("Content-Encoding");
                if (contentEncodingHeader != null && contentEncodingHeader.getValue().equalsIgnoreCase("gzip")) {
                    rv.stream = new GZIPInputStream(rv.stream);
                }
            }
            return rv;
        } catch (Exception e) {
            httpGet.abort();
            if (rv != null && rv.stream != null) {
                rv.close();
            }
            throw new XLEException(4L, e);
        }
    }
}
