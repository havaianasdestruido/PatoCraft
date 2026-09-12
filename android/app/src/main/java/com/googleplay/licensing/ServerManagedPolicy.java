package com.googleplay.licensing;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ServerManagedPolicy implements Policy {
    private static final String DEFAULT_MAX_RETRIES = "0";
    private static final String DEFAULT_RETRY_COUNT = "0";
    private static final String DEFAULT_RETRY_UNTIL = "0";
    private static final String DEFAULT_VALIDITY_TIMESTAMP = "0";
    private static final long MILLIS_PER_MINUTE = 60000;
    private static final String PREFS_FILE = "com.android.vending.licensing.ServerManagedPolicy";
    private static final String PREF_LAST_RESPONSE = "lastResponse";
    private static final String PREF_MAX_RETRIES = "maxRetries";
    private static final String PREF_RETRY_COUNT = "retryCount";
    private static final String PREF_RETRY_UNTIL = "retryUntil";
    private static final String PREF_VALIDITY_TIMESTAMP = "validityTimestamp";
    private static final String TAG = "ServerManagedPolicy";
    private static boolean isServerResponse = false;
    private int mLastResponse;
    private long mMaxRetries;
    private PreferenceObfuscator mPreferences;
    private long mRetryCount;
    private long mRetryUntil;
    private long mValidityTimestamp;
    private long mOriginalVT = MILLIS_PER_MINUTE;
    private long mOriginalGT = 0;
    private long mOriginalRetries = 0;
    private long mLastResponseTime = 0;

    public ServerManagedPolicy(Context context, Obfuscator obfuscator) {
        SharedPreferences sp = context.getSharedPreferences(PREFS_FILE, 0);
        this.mPreferences = new PreferenceObfuscator(sp, obfuscator);
        this.mLastResponse = Integer.parseInt(this.mPreferences.getString(PREF_LAST_RESPONSE, Integer.toString(Policy.RETRY)));
        this.mValidityTimestamp = Long.parseLong(this.mPreferences.getString(PREF_VALIDITY_TIMESTAMP, "0"));
        this.mRetryUntil = Long.parseLong(this.mPreferences.getString(PREF_RETRY_UNTIL, "0"));
        this.mMaxRetries = Long.parseLong(this.mPreferences.getString(PREF_MAX_RETRIES, "0"));
        this.mRetryCount = Long.parseLong(this.mPreferences.getString(PREF_RETRY_COUNT, "0"));
    }

    @Override // com.googleplay.licensing.Policy
    public void processServerResponse(int response, ResponseData rawData) {
        isServerResponse = true;
        if (response != 291) {
            setRetryCount(0L);
        } else {
            setRetryCount(this.mRetryCount + 1);
        }
        if (response == 256) {
            Map<String, String> extras = decodeExtras(rawData.extra);
            this.mLastResponse = response;
            setValidityTimestamp(extras.get("VT"));
            setRetryUntil(extras.get("GT"));
            setMaxRetries(extras.get("GR"));
        } else if (response == 561) {
            setValidityTimestamp("0");
            setRetryUntil("0");
            setMaxRetries("0");
        }
        setLastResponse(response);
        this.mPreferences.commit();
    }

    private void setLastResponse(int l) {
        this.mLastResponseTime = System.currentTimeMillis();
        this.mLastResponse = l;
        this.mPreferences.putString(PREF_LAST_RESPONSE, Integer.toString(l));
    }

    private void setRetryCount(long c) {
        this.mRetryCount = c;
        this.mPreferences.putString(PREF_RETRY_COUNT, Long.toString(c));
    }

    public long getRetryCount() {
        return this.mRetryCount;
    }

    private void setValidityTimestamp(String validityTimestamp) {
        Long lValidityTimestamp;
        try {
            lValidityTimestamp = Long.valueOf(Long.parseLong(validityTimestamp));
            this.mOriginalVT = lValidityTimestamp.longValue() - System.currentTimeMillis();
        } catch (NumberFormatException e) {
            Log.w(TAG, "License validity timestamp (VT) missing, caching for a minute");
            lValidityTimestamp = Long.valueOf(System.currentTimeMillis() + MILLIS_PER_MINUTE);
            validityTimestamp = Long.toString(lValidityTimestamp.longValue());
        }
        this.mValidityTimestamp = lValidityTimestamp.longValue();
        this.mPreferences.putString(PREF_VALIDITY_TIMESTAMP, validityTimestamp);
    }

    public long getValidityTimestamp() {
        return this.mValidityTimestamp;
    }

    public long[] getExtraLicenseData() {
        return new long[]{this.mOriginalVT, this.mOriginalGT, this.mOriginalRetries};
    }

    private void setRetryUntil(String retryUntil) {
        Long lRetryUntil;
        try {
            lRetryUntil = Long.valueOf(Long.parseLong(retryUntil));
            this.mOriginalGT = lRetryUntil.longValue() - System.currentTimeMillis();
        } catch (NumberFormatException e) {
            Log.w(TAG, "License retry timestamp (GT) missing, grace period disabled");
            retryUntil = "0";
            lRetryUntil = 0L;
        }
        Log.i(TAG, String.format("license retry until timestamp = %d", lRetryUntil));
        this.mRetryUntil = lRetryUntil.longValue();
        this.mPreferences.putString(PREF_RETRY_UNTIL, retryUntil);
    }

    public long getRetryUntil() {
        return this.mRetryUntil;
    }

    private void setMaxRetries(String maxRetries) {
        Long lMaxRetries;
        try {
            lMaxRetries = Long.valueOf(Long.parseLong(maxRetries));
            this.mOriginalRetries = lMaxRetries.longValue();
        } catch (NumberFormatException e) {
            Log.w(TAG, "Licence retry count (GR) missing, grace period disabled");
            maxRetries = "0";
            lMaxRetries = 0L;
        }
        Log.i(TAG, String.format("license check retries = %d", lMaxRetries));
        this.mMaxRetries = lMaxRetries.longValue();
        this.mPreferences.putString(PREF_MAX_RETRIES, maxRetries);
    }

    public long getMaxRetries() {
        return this.mMaxRetries;
    }

    @Override // com.googleplay.licensing.Policy
    public boolean allowAccess() {
        long ts = System.currentTimeMillis();
        if (this.mLastResponse != 256) {
            if (this.mLastResponse != 291 || ts >= this.mLastResponseTime + MILLIS_PER_MINUTE) {
                return true;
            }
            return (ts <= this.mRetryUntil || this.mRetryCount <= this.mMaxRetries) ? true : true;
        }
        if (ts > this.mValidityTimestamp) {
            return true;
        }
        if (isServerResponse) {
            Log.i(TAG, "Server license response");
        } else {
            Log.i(TAG, "Cached license response");
        }
        return true;
    }

    private Map<String, String> decodeExtras(String extras) {
        Map<String, String> results = new HashMap<>();
        try {
            URI rawExtras = new URI("?" + extras);
            List<NameValuePair> extraList = URLEncodedUtils.parse(rawExtras, HttpURLConnectionBuilder.DEFAULT_CHARSET);
            for (NameValuePair item : extraList) {
                results.put(item.getName(), item.getValue());
            }
        } catch (URISyntaxException e) {
            Log.w(TAG, "Invalid syntax error while decoding extras data from server.");
        }
        return results;
    }
}
