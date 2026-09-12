package com.microsoft.xbox.toolkit.network;

import java.io.InputStream;
import org.apache.http.Header;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEHttpStatusAndStream {
    public InputStream stream = null;
    public int statusCode = -1;
    public String statusLine = null;
    public String redirectUrl = null;
    public Header[] headers = new Header[0];

    public void close() {
        if (this.stream != null) {
            try {
                this.stream.close();
                this.stream = null;
            } catch (Exception e) {
            }
        }
    }
}
