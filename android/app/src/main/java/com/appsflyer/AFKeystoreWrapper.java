package com.appsflyer;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import java.util.Enumeration;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AFKeystoreWrapper {
    private static final String AF_KEYSTORE_EXTERNAL_DELIMITER = ",";
    private static final String AF_KEYSTORE_INTERNAL_DELIMITER = "=";
    private static final String AF_KEYSTORE_PREFIX = "com.appsflyer";
    static final String AF_KEYSTORE_REINSTALL_COUNTER = "KSAppsFlyerRICounter";
    static final String AF_KEYSTORE_UID = "KSAppsFlyerId";
    private static final String CN_ANDROID_SDK_O_APPS_FLYER = "CN=AndroidSDK, O=AppsFlyer";
    private static final int KEYSTORE_CERTIFICATE_VALIDITY_YEARS = 5;
    private static final String PROVIDER_ANDROID_KEY_STORE = "AndroidKeyStore";
    private static final String RSA_ALGORITHM = "RSA";
    private Context context;
    private KeyStore keystore;
    private final Object lock = new Object();
    private String uid = "";
    private int reInstallCounter = 0;

    public AFKeystoreWrapper(Context context) {
        this.context = context;
        initKeyStore();
    }

    private void initKeyStore() {
        AFLogger.afLog("Initialising KeyStore..");
        try {
            this.keystore = KeyStore.getInstance(PROVIDER_ANDROID_KEY_STORE);
            this.keystore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.afLogE("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    void createFirstInstallData(String appsFlyerUID) {
        this.uid = appsFlyerUID;
        this.reInstallCounter = 0;
        createKey(generateAliasString());
    }

    void incrementReInstallCounter() {
        String currentKeyAlias = generateAliasString();
        synchronized (this.lock) {
            this.reInstallCounter++;
            deleteKey(currentKeyAlias);
        }
        createKey(generateAliasString());
    }

    boolean loadData() {
        boolean isDataExists = false;
        synchronized (this.lock) {
            if (this.keystore != null) {
                try {
                    Enumeration<String> aliases = this.keystore.aliases();
                    while (aliases.hasMoreElements()) {
                        String alias = aliases.nextElement();
                        if (alias != null && isAppsFlyerPrefix(alias)) {
                            String[] afData = alias.split(AF_KEYSTORE_EXTERNAL_DELIMITER);
                            if (afData.length != 3) {
                                break;
                            }
                            AFLogger.afLog("Found a matching AF key with alias:\n" + alias);
                            isDataExists = true;
                            String[] ksId = afData[1].trim().split(AF_KEYSTORE_INTERNAL_DELIMITER);
                            String[] ksRICounter = afData[2].trim().split(AF_KEYSTORE_INTERNAL_DELIMITER);
                            if (ksId.length != 2 || ksRICounter.length != 2) {
                                break;
                                break;
                            }
                            this.uid = ksId[1].trim();
                            this.reInstallCounter = Integer.parseInt(ksRICounter[1].trim());
                            break;
                        }
                    }
                } catch (Throwable e) {
                    AFLogger.afLogE("Couldn't list KeyStore Aliases: " + e.getClass().getName(), e);
                }
            }
        }
        return isDataExists;
    }

    private void createKey(String alias) {
        AFLogger.afLog("Creating a new key with alias: " + alias);
        try {
            Calendar start = Calendar.getInstance();
            Calendar end = Calendar.getInstance();
            end.add(1, 5);
            AlgorithmParameterSpec spec = null;
            synchronized (this.lock) {
                if (!this.keystore.containsAlias(alias)) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        spec = new KeyGenParameterSpec.Builder(alias, 3).setCertificateSubject(new X500Principal(CN_ANDROID_SDK_O_APPS_FLYER)).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(start.getTime()).setCertificateNotAfter(end.getTime()).build();
                    } else if (Build.VERSION.SDK_INT >= 18) {
                        spec = new KeyPairGeneratorSpec.Builder(this.context).setAlias(alias).setSubject(new X500Principal(CN_ANDROID_SDK_O_APPS_FLYER)).setSerialNumber(BigInteger.ONE).setStartDate(start.getTime()).setEndDate(end.getTime()).build();
                    }
                    KeyPairGenerator generator = KeyPairGenerator.getInstance(RSA_ALGORITHM, PROVIDER_ANDROID_KEY_STORE);
                    generator.initialize(spec);
                    generator.generateKeyPair();
                } else {
                    AFLogger.afLog("Alias already exists: " + alias);
                }
            }
        } catch (Throwable e) {
            AFLogger.afLogE("Exception " + e.getMessage() + " occurred", e);
        }
    }

    private void deleteKey(String alias) {
        AFLogger.afLog("Deleting key with alias: " + alias);
        try {
            synchronized (this.lock) {
                try {
                    this.keystore.deleteEntry(alias);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (KeyStoreException e) {
            AFLogger.afLogE("Exception " + e.getMessage() + " occurred", e);
        }
    }

    private boolean isAppsFlyerPrefix(String alias) {
        return alias.startsWith("com.appsflyer");
    }

    private String generateAliasString() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.appsflyer").append(AF_KEYSTORE_EXTERNAL_DELIMITER);
        synchronized (this.lock) {
            sb.append(AF_KEYSTORE_UID).append(AF_KEYSTORE_INTERNAL_DELIMITER).append(this.uid).append(AF_KEYSTORE_EXTERNAL_DELIMITER);
            sb.append(AF_KEYSTORE_REINSTALL_COUNTER).append(AF_KEYSTORE_INTERNAL_DELIMITER).append(this.reInstallCounter);
        }
        return sb.toString();
    }

    String getUid() {
        String str;
        synchronized (this.lock) {
            str = this.uid;
        }
        return str;
    }

    int getReInstallCounter() {
        int i;
        synchronized (this.lock) {
            i = this.reInstallCounter;
        }
        return i;
    }

    private void clearAllAFKeys() {
        synchronized (this.lock) {
            if (this.keystore != null) {
                try {
                    Enumeration<String> aliases = this.keystore.aliases();
                    while (aliases.hasMoreElements()) {
                        String alias = aliases.nextElement();
                        if (isAppsFlyerPrefix(alias)) {
                            AFLogger.afLog("Found AF key. Removing: " + alias);
                            this.keystore.deleteEntry(alias);
                        }
                    }
                } catch (Throwable t) {
                    t.printStackTrace();
                }
            }
        }
    }
}
