package com.microsoft.onlineid.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.userdata.TelephonyManagerReader;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Uris {
    static final String EmailDelimiter = ",";
    static final String EmailParam = "email";
    static final String MktParam = "mkt";
    static final String PhoneParam = "phone";

    public static String mapToSortedQueryString(Map<String, String> map) {
        Uri.Builder builder = new Uri.Builder();
        SortedMap<String, String> sortedMap = new TreeMap<>(map);
        for (Map.Entry<String, String> pair : sortedMap.entrySet()) {
            builder.appendQueryParameter(pair.getKey(), pair.getValue());
        }
        return builder.build().getEncodedQuery();
    }

    public static Map<String, String> queryStringToMap(String queryString) {
        Map<String, String> result = new HashMap<>();
        if (!TextUtils.isEmpty(queryString)) {
            Uri uri = Uri.parse("?" + queryString);
            for (String parameterName : uri.getQueryParameterNames()) {
                result.put(parameterName, uri.getQueryParameter(parameterName));
            }
        }
        return result;
    }

    public static Uri appendMarketQueryString(Context applicationContext, Uri original) {
        if (!TextUtils.isEmpty(original.getQueryParameter(MktParam))) {
            Logger.warning("Given URL already has mkt parameter set.");
            return original;
        }
        String mkt = Resources.getString(applicationContext, "app_market");
        Uri.Builder builderBuildUpon = original.buildUpon();
        if (TextUtils.isEmpty(mkt)) {
            mkt = "en";
        }
        return builderBuildUpon.appendQueryParameter(MktParam, mkt).build();
    }

    public static Uri appendPhoneDigits(TelephonyManagerReader telephonyManagerReader, Uri original) {
        if (!TextUtils.isEmpty(original.getQueryParameter(PhoneParam))) {
            Logger.warning("Given URL already has phone parameter set.");
            return original;
        }
        String phoneNumber = telephonyManagerReader.getPhoneNumber();
        return original.buildUpon().appendQueryParameter(PhoneParam, TextUtils.isEmpty(phoneNumber) ? "" : phoneNumber.replaceAll("[^\\d]+", "")).build();
    }
}
