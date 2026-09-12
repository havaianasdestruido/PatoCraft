package com.microsoft.xbox.idp.util;

import android.net.Uri;
import android.text.TextUtils;
import com.microsoft.xbox.xle.app.ImageUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class HttpUtil {

    public enum ImageSize {
        SMALL(64, 64),
        MEDIUM(208, 208),
        LARGE(ImageUtil.MEDIUM_TABLET, ImageUtil.MEDIUM_TABLET);

        private final int h;
        private final int w;

        ImageSize(int w, int h) {
            this.w = w;
            this.h = h;
        }
    }

    public static Uri.Builder getImageSizeUrlParams(Uri.Builder b, ImageSize sz) {
        return b.appendQueryParameter("w", Integer.toString(sz.w)).appendQueryParameter("h", Integer.toString(sz.h));
    }

    public static String getEndpoint(Uri uri) {
        return uri.getScheme() + "://" + uri.getEncodedAuthority();
    }

    public static String getPathAndQuery(Uri uri) {
        String path = uri.getEncodedPath();
        String query = uri.getEncodedQuery();
        String fragment = uri.getEncodedFragment();
        StringBuffer sb = new StringBuffer();
        sb.append(path);
        if (!TextUtils.isEmpty(query)) {
            sb.append("?").append(query);
        }
        if (!TextUtils.isEmpty(fragment)) {
            sb.append("#").append(fragment);
        }
        return sb.toString();
    }

    public static HttpCall appendCommonParameters(HttpCall httpCall, String version) {
        httpCall.setXboxContractVersionHeaderValue(version);
        httpCall.setContentTypeHeaderValue("application/json");
        httpCall.setRetryAllowed(true);
        return httpCall;
    }
}
