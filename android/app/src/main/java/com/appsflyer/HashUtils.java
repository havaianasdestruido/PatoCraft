package com.appsflyer;

import java.security.MessageDigest;
import java.util.Formatter;
import java.util.Map;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class HashUtils {
    public native String getNativeCode(String str, String str2, String str3);

    HashUtils() {
    }

    public String getHashCode(Map<String, Object> params) {
        String afDevKey = (String) params.get(ServerParameters.AF_DEV_KEY);
        String timestamp = (String) params.get(ServerParameters.TIMESTAMP);
        String uid = (String) params.get(ServerParameters.AF_USER_ID);
        String nativeSha1 = toSHA1(afDevKey.substring(0, 7) + uid.substring(0, 7) + timestamp.substring(timestamp.length() - 7));
        return nativeSha1;
    }

    public String getHashCodeV2(Map<String, Object> params) {
        String toHash = (String) params.get(ServerParameters.AF_DEV_KEY);
        return toSHA1(toMD5(((((toHash + params.get(ServerParameters.TIMESTAMP)) + params.get(ServerParameters.AF_USER_ID)) + params.get("installDate")) + params.get("counter")) + params.get("iaecounter")));
    }

    public static String toSHA1(String input) {
        try {
            MessageDigest crypt = MessageDigest.getInstance("SHA-1");
            crypt.reset();
            crypt.update(input.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET));
            String nativeSha1 = byteToHex(crypt.digest());
            return nativeSha1;
        } catch (Exception e) {
            AFLogger.afLogE("Error turning " + input.substring(0, 6) + ".. to SHA1", e);
            return null;
        }
    }

    public static String toMD5(String input) {
        try {
            MessageDigest crypt = MessageDigest.getInstance("MD5");
            crypt.reset();
            crypt.update(input.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET));
            String nativeMd5 = byteToHex(crypt.digest());
            return nativeMd5;
        } catch (Exception e) {
            AFLogger.afLogE("Error turning " + input.substring(0, 6) + ".. to MD5", e);
            return null;
        }
    }

    public static String toSha256(String data) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(data.getBytes());
            String nativeSha256 = bytesToHex(md.digest());
            return nativeSha256;
        } catch (Exception nse) {
            AFLogger.afLogE("Error turning " + data.substring(0, 6) + ".. to SHA-256", nse);
            return null;
        }
    }

    public static String bytesToHex(byte[] bytes) {
        StringBuffer result = new StringBuffer();
        for (byte byt : bytes) {
            result.append(Integer.toString((byt & 255) + 256, 16).substring(1));
        }
        return result.toString();
    }

    private static String byteToHex(byte[] hash) {
        Formatter formatter = new Formatter();
        for (byte b : hash) {
            formatter.format("%02x", Byte.valueOf(b));
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }
}
