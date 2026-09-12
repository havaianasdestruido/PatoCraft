package com.microsoft.xbox.service.network.managers;

import android.text.TextUtils;
import com.google.gson.JsonObject;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.StreamUtil;
import com.microsoft.xbox.toolkit.TimeMonitor;
import com.microsoft.xbox.toolkit.UrlUtil;
import com.microsoft.xbox.toolkit.XLEErrorCode;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.network.AbstractXLEHttpClient;
import com.microsoft.xbox.toolkit.network.HttpClientFactory;
import com.microsoft.xbox.toolkit.network.XLEHttpStatusAndStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import org.apache.http.Header;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ServiceCommon {
    public static final int MaxBIErrorParamLength = 2048;

    public static void AddWebHeaders(HttpUriRequest httpRequest, List<Header> headers) {
        if (headers != null) {
            for (Header header : headers) {
                httpRequest.addHeader(header);
            }
        }
    }

    public static int deleteWithStatus(String url, List<Header> headers) throws XLEException {
        URI uri = UrlUtil.getEncodedUri(url);
        String url2 = uri.toString();
        new TimeMonitor();
        HttpDelete httpDelete = new HttpDelete(uri);
        XLEHttpStatusAndStream statusAndStream = excuteHttpRequest(httpDelete, url2, headers, false, 0);
        statusAndStream.close();
        return statusAndStream.statusCode;
    }

    public static boolean delete(String url, List<Header> headers) throws XLEException {
        int statusCode = deleteWithStatus(url, headers);
        return statusCode == 200 || statusCode == 204;
    }

    public static boolean delete(String url, List<Header> headers, String body) throws XLEException {
        try {
            return JavaUtil.isNullOrEmpty(body) ? delete(url, headers) : delete(url, headers, body.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET));
        } catch (UnsupportedEncodingException e) {
            throw new XLEException(5L, e);
        }
    }

    public static boolean delete(String url, List<Header> headers, byte[] body) throws XLEException {
        URI uri = UrlUtil.getEncodedUri(url);
        String url2 = uri.toString();
        new TimeMonitor();
        HttpDeleteWithRequestBody httpDelete = new HttpDeleteWithRequestBody(uri);
        if (body != null && body.length > 0) {
            try {
                httpDelete.setEntity(new ByteArrayEntity(body));
            } catch (Exception e) {
                throw new XLEException(5L, e);
            }
        }
        XLEHttpStatusAndStream statusAndStream = excuteHttpRequest(httpDelete, url2, headers, false, 0);
        boolean value = statusAndStream.statusCode == 200 || statusAndStream.statusCode == 204;
        statusAndStream.close();
        return value;
    }

    private static void ParseHttpResponseForStatus(String url, int statusCode, String statusLine) throws XLEException {
        ParseHttpResponseForStatus(url, statusCode, statusLine, null);
    }

    private static void ParseHttpResponseForStatus(String url, int statusCode, String statusLine, InputStream stream) throws XLEException {
        boolean success = statusCode >= 200 && statusCode < 400;
        if (!success) {
            if (statusCode == -1) {
                throw new XLEException(3L);
            }
            if (statusCode == 401 || statusCode == 403) {
                throw new XLEException(XLEErrorCode.NOT_AUTHORIZED);
            }
            if (statusCode == 400) {
                if (stream == null) {
                    throw new XLEException(15L);
                }
                throw new XLEException(15L, null, null, StreamUtil.ReadAsString(stream));
            }
            if (statusCode == 500) {
                throw new XLEException(13L);
            }
            if (statusCode == 503) {
                throw new XLEException(18L);
            }
            if (statusCode == 404) {
                throw new XLEException(21L);
            }
            throw new XLEException(4L);
        }
    }

    public static XLEHttpStatusAndStream getStreamAndStatus(String url, List<Header> headers) throws XLEException {
        XLEHttpStatusAndStream statusAndStream = getStreamAndStatus(url, headers, true, 0);
        if (statusAndStream != null && !JavaUtil.isNullOrEmpty(statusAndStream.redirectUrl)) {
            return getStreamAndStatus(statusAndStream.redirectUrl, headers);
        }
        return statusAndStream;
    }

    private static XLEHttpStatusAndStream getStreamAndStatus(String url, List<Header> headers, boolean urlEncode, int timeoutOverride) throws XLEException {
        return getStreamAndStatus(url, headers, urlEncode, timeoutOverride, false);
    }

    private static XLEHttpStatusAndStream getStreamAndStatus(String url, List<Header> headers, boolean urlEncode, int timeoutOverride, boolean addUserObjectFromBadRequestResponse) throws XLEException {
        URI uri = null;
        if (urlEncode) {
            uri = UrlUtil.getEncodedUri(url);
        } else {
            try {
                URI uri2 = new URI(url);
                uri = uri2;
            } catch (URISyntaxException e) {
            }
        }
        String url2 = uri.toString();
        HttpUriRequest httpGet = new HttpGet(uri);
        return excuteHttpRequest(httpGet, url2, headers, true, timeoutOverride, addUserObjectFromBadRequestResponse);
    }

    public static XLEHttpStatusAndStream postStringWithStatus(String url, List<Header> headers, String body) throws XLEException {
        try {
            return postStreamWithStatus(url, headers, body.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET));
        } catch (UnsupportedEncodingException e) {
            throw new XLEException(5L, e);
        }
    }

    public static XLEHttpStatusAndStream postStreamWithStatus(String url, List<Header> headers, byte[] body) throws XLEException {
        URI uri = UrlUtil.getEncodedUri(url);
        String url2 = uri.toString();
        HttpPost post = new HttpPost(uri);
        if (body != null && body.length > 0) {
            try {
                post.setEntity(new ByteArrayEntity(body));
            } catch (Exception e) {
                throw new XLEException(5L, e);
            }
        }
        return excuteHttpRequest(post, url2, headers, false, 0);
    }

    public static XLEHttpStatusAndStream putStringWithStatus(String url, List<Header> headers, String body) throws XLEException {
        try {
            return putStreamWithStatus(url, headers, body.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET));
        } catch (UnsupportedEncodingException e) {
            throw new XLEException(5L, e);
        }
    }

    public static XLEHttpStatusAndStream putStreamWithStatus(String url, List<Header> headers, byte[] body) throws XLEException {
        URI uri = UrlUtil.getEncodedUri(url);
        String url2 = uri.toString();
        HttpPut put = new HttpPut(uri);
        if (body != null && body.length > 0) {
            try {
                put.setEntity(new ByteArrayEntity(body));
            } catch (Exception e) {
                throw new XLEException(5L, e);
            }
        }
        return excuteHttpRequest(put, url2, headers, false, 0);
    }

    private static XLEHttpStatusAndStream excuteHttpRequest(HttpUriRequest request, String url, List<Header> headers, boolean expectResponseEntity, int timeoutOverride) throws XLEException {
        return excuteHttpRequest(request, url, headers, expectResponseEntity, timeoutOverride, false);
    }

    private static XLEHttpStatusAndStream excuteHttpRequest(HttpUriRequest request, String url, List<Header> headers, boolean expectResponseEntity, int timeoutOverride, boolean addUserObjectFromResponse) throws XLEException {
        AddWebHeaders(request, headers);
        new XLEHttpStatusAndStream();
        AbstractXLEHttpClient client = HttpClientFactory.networkOperationsFactory.getHttpClient(timeoutOverride);
        XLEHttpStatusAndStream rv = client.getHttpStatusAndStreamInternal(request, true);
        try {
            if (!addUserObjectFromResponse) {
                ParseHttpResponseForStatus(url, rv.statusCode, rv.statusLine);
            } else {
                ParseHttpResponseForStatus(url, rv.statusCode, rv.statusLine, rv.stream);
            }
            if (rv.stream == null && expectResponseEntity) {
                throw new XLEException(7L);
            }
            return rv;
        } catch (XLEException e) {
            JsonObject callStackJson = new JsonObject();
            JsonObject responseJson = new JsonObject();
            String responseDescription = "";
            int responseStatusCode = rv == null ? 0 : rv.statusCode;
            String requestUrl = "";
            if (request != null) {
                request.getMethod();
            }
            if (rv != null && !TextUtils.isEmpty(rv.statusLine)) {
                responseDescription = rv.statusLine.length() > 2048 ? rv.statusLine.substring(0, 2048) : rv.statusLine;
            }
            if (request != null && request.getURI() != null) {
                requestUrl = request.getURI().toString();
            }
            if (requestUrl.length() > 2048) {
                requestUrl = requestUrl.substring(0, 2048);
            }
            callStackJson.addProperty("Request", requestUrl);
            responseJson.addProperty("code", Integer.valueOf(responseStatusCode));
            responseJson.addProperty("description", responseDescription);
            callStackJson.add("Response", responseJson);
            throw e;
        }
    }
}
