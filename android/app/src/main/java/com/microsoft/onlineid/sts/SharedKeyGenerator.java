package com.microsoft.onlineid.sts;

import com.microsoft.onlineid.internal.Strings;
import java.nio.ByteBuffer;
import java.security.Key;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SharedKeyGenerator {
    static final int NonceLengthBytes = 32;
    private final byte[] _sessionKey;

    public SharedKeyGenerator(byte[] sessionKey) {
        this._sessionKey = sessionKey;
    }

    public enum KeyPurpose {
        CredentialSignature(32, "WS-SecureConversation"),
        STSDigest(32, "WS-SecureConversationWS-SecureConversation");

        private final int _keyLengthBytes;
        private final String _label;

        KeyPurpose(int keyLengthBytes, String label) {
            this._keyLengthBytes = keyLengthBytes;
            this._label = label;
        }

        int getKeyLengthBytes() {
            return this._keyLengthBytes;
        }

        String getLabel() {
            return this._label;
        }
    }

    public byte[] generateKey(KeyPurpose purpose, byte[] nonce) {
        return deriveSP800108HmacSHA256Key(purpose.getKeyLengthBytes(), this._sessionKey, purpose.getLabel(), nonce);
    }

    static byte[] deriveSP800108HmacSHA256Key(int keySizeBytes, byte[] secret, String label, byte[] context) {
        ByteBuffer derivedKey = ByteBuffer.allocate(keySizeBytes);
        ByteBuffer integerByteBuffer = ByteBuffer.allocate(4);
        Key key = new SecretKeySpec(secret, Cryptography.HmacSha256Algorithm);
        Mac hmac = Cryptography.getInitializedHmacSha256Digester(key);
        int counter = 1;
        while (derivedKey.position() < keySizeBytes) {
            hmac.reset();
            integerByteBuffer.clear();
            integerByteBuffer.putInt(counter);
            integerByteBuffer.rewind();
            hmac.update(integerByteBuffer);
            hmac.update(label.getBytes(Strings.Utf8Charset));
            hmac.update((byte) 0);
            hmac.update(context);
            integerByteBuffer.clear();
            integerByteBuffer.putInt(keySizeBytes * 8);
            integerByteBuffer.rewind();
            hmac.update(integerByteBuffer);
            byte[] iterationHash = hmac.doFinal();
            int bytesToAdd = iterationHash.length;
            if (bytesToAdd > derivedKey.remaining()) {
                bytesToAdd = derivedKey.remaining();
            }
            derivedKey.put(iterationHash, 0, bytesToAdd);
            counter++;
        }
        return derivedKey.array();
    }
}
