package com.googleplay.licensing;

import com.googleplay.util.Base64;
import com.googleplay.util.Base64DecoderException;
import com.microsoft.onlineid.sts.Cryptography;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.spec.KeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AESObfuscator implements Obfuscator {
    private static final String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
    private static final byte[] IV = {16, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74};
    private static final String KEYGEN_ALGORITHM = "PBEWITHSHAAND256BITAES-CBC-BC";
    private static final String UTF8 = "UTF-8";
    private static final String header = "com.android.vending.licensing.AESObfuscator-1|";
    private Cipher mDecryptor;
    private Cipher mEncryptor;

    public AESObfuscator(byte[] salt, String applicationId, String deviceId) {
        try {
            SecretKeyFactory factory = SecretKeyFactory.getInstance(KEYGEN_ALGORITHM);
            KeySpec keySpec = new PBEKeySpec((applicationId + deviceId).toCharArray(), salt, 1024, 256);
            SecretKey tmp = factory.generateSecret(keySpec);
            SecretKey secret = new SecretKeySpec(tmp.getEncoded(), Cryptography.AesAlgorithm);
            this.mEncryptor = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.mEncryptor.init(1, secret, new IvParameterSpec(IV));
            this.mDecryptor = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.mDecryptor.init(2, secret, new IvParameterSpec(IV));
        } catch (GeneralSecurityException e) {
            throw new RuntimeException("Invalid environment", e);
        }
    }

    @Override // com.googleplay.licensing.Obfuscator
    public String obfuscate(String original, String key) {
        if (original == null) {
            return null;
        }
        try {
            return Base64.encode(this.mEncryptor.doFinal((header + key + original).getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Invalid environment", e);
        } catch (GeneralSecurityException e2) {
            throw new RuntimeException("Invalid environment", e2);
        }
    }

    @Override // com.googleplay.licensing.Obfuscator
    public String unobfuscate(String obfuscated, String key) throws ValidationException {
        if (obfuscated == null) {
            return null;
        }
        try {
            String result = new String(this.mDecryptor.doFinal(Base64.decode(obfuscated)), "UTF-8");
            int headerIndex = result.indexOf(header + key);
            if (headerIndex != 0) {
                throw new ValidationException("Header not found (invalid data or key):" + obfuscated);
            }
            return result.substring(header.length() + key.length(), result.length());
        } catch (Base64DecoderException e) {
            throw new ValidationException(e.getMessage() + ":" + obfuscated);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Invalid environment", e2);
        } catch (BadPaddingException e3) {
            throw new ValidationException(e3.getMessage() + ":" + obfuscated);
        } catch (IllegalBlockSizeException e4) {
            throw new ValidationException(e4.getMessage() + ":" + obfuscated);
        }
    }
}
