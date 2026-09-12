package com.microsoft.onlineid.internal;

import android.content.Context;
import android.content.pm.Signature;
import android.util.Base64;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.sts.Cryptography;
import java.security.MessageDigest;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Applications {
    public static String buildClientAppUri(Context applicationContext, String packageName) {
        String certHashBase32 = Cryptography.encodeBase32(getFirstCertHash(applicationContext, packageName));
        return "android-app://" + packageName + "." + certHashBase32;
    }

    private static byte[] getFirstCertHash(Context applicationContext, String packageName) {
        MessageDigest digester = Cryptography.getShaDigester();
        Signature[] signatures = PackageInfoHelper.getAppSignatures(applicationContext, packageName);
        Assertion.check(signatures.length > 0);
        byte[] firstCertHash = digester.digest(signatures[0].toByteArray());
        Settings settings = Settings.getInstance(applicationContext);
        if (settings.isSettingEnabled(Settings.IsCertificateTelemetryNeeded)) {
            Map<String, byte[]> appSignatures = new LinkedHashMap<>();
            for (Signature signature : signatures) {
                byte[] hash = digester.digest(signature.toByteArray());
                String hashBase64 = Base64.encodeToString(hash, 2);
                appSignatures.put(hashBase64, hash);
            }
            ClientAnalytics.get().logCertificates(appSignatures);
            settings.setSetting(Settings.IsCertificateTelemetryNeeded, String.valueOf(false));
        }
        return firstCertHash;
    }
}
