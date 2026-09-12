package com.microsoft.xbox.toolkit;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UrlUtil {
    public static URI getEncodedUri(String oldUrl) {
        if (oldUrl == null || oldUrl.length() == 0) {
            return null;
        }
        return getEncodedUriNonNull(oldUrl);
    }

    public static URI getEncodedUriNonNull(String oldUrl) {
        try {
            URL url = new URL(oldUrl);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (MalformedURLException e) {
            return null;
        } catch (URISyntaxException e2) {
            return null;
        }
    }

    public static URI getUri(String encodedUrl) {
        if (JavaUtil.isNullOrEmpty(encodedUrl)) {
            return null;
        }
        try {
            return new URI(encodedUrl);
        } catch (Exception e) {
            return null;
        }
    }

    public static String encodeUrl(String oldUrl) {
        URI uri;
        if (oldUrl == null || oldUrl.length() == 0 || (uri = getEncodedUri(oldUrl)) == null) {
            return null;
        }
        return uri.toString();
    }

    public static boolean UrisEqualCaseInsensitive(URI lhs, URI rhs) {
        if (lhs == rhs) {
            return true;
        }
        if (lhs == null || rhs == null) {
            return false;
        }
        return JavaUtil.stringsEqualCaseInsensitive(lhs.toString(), rhs.toString());
    }
}
