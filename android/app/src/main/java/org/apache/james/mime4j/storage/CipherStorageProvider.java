package org.apache.james.mime4j.storage;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CipherStorageProvider extends AbstractStorageProvider {
    private final String algorithm;
    private final StorageProvider backend;
    private final KeyGenerator keygen;

    public CipherStorageProvider(StorageProvider backend) {
        this(backend, "Blowfish");
    }

    public CipherStorageProvider(StorageProvider backend, String algorithm) {
        if (backend == null) {
            throw new IllegalArgumentException();
        }
        try {
            this.backend = backend;
            this.algorithm = algorithm;
            this.keygen = KeyGenerator.getInstance(algorithm);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // org.apache.james.mime4j.storage.StorageProvider
    public StorageOutputStream createStorageOutputStream() throws IOException {
        SecretKeySpec skeySpec = getSecretKeySpec();
        return new CipherStorageOutputStream(this.backend.createStorageOutputStream(), this.algorithm, skeySpec);
    }

    private SecretKeySpec getSecretKeySpec() {
        byte[] raw = this.keygen.generateKey().getEncoded();
        return new SecretKeySpec(raw, this.algorithm);
    }

    private static final class CipherStorageOutputStream extends StorageOutputStream {
        private final String algorithm;
        private final CipherOutputStream cipherOut;
        private final SecretKeySpec skeySpec;
        private final StorageOutputStream storageOut;

        public CipherStorageOutputStream(StorageOutputStream out, String algorithm, SecretKeySpec skeySpec) throws IOException {
            try {
                this.storageOut = out;
                this.algorithm = algorithm;
                this.skeySpec = skeySpec;
                Cipher cipher = Cipher.getInstance(algorithm);
                cipher.init(1, skeySpec);
                this.cipherOut = new CipherOutputStream(out, cipher);
            } catch (GeneralSecurityException e) {
                throw ((IOException) new IOException().initCause(e));
            }
        }

        @Override // org.apache.james.mime4j.storage.StorageOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.cipherOut.close();
        }

        @Override // org.apache.james.mime4j.storage.StorageOutputStream
        protected void write0(byte[] buffer, int offset, int length) throws IOException {
            this.cipherOut.write(buffer, offset, length);
        }

        @Override // org.apache.james.mime4j.storage.StorageOutputStream
        protected Storage toStorage0() throws IOException {
            Storage encrypted = this.storageOut.toStorage();
            return new CipherStorage(encrypted, this.algorithm, this.skeySpec);
        }
    }

    private static final class CipherStorage implements Storage {
        private final String algorithm;
        private Storage encrypted;
        private final SecretKeySpec skeySpec;

        public CipherStorage(Storage encrypted, String algorithm, SecretKeySpec skeySpec) {
            this.encrypted = encrypted;
            this.algorithm = algorithm;
            this.skeySpec = skeySpec;
        }

        @Override // org.apache.james.mime4j.storage.Storage
        public void delete() {
            if (this.encrypted != null) {
                this.encrypted.delete();
                this.encrypted = null;
            }
        }

        @Override // org.apache.james.mime4j.storage.Storage
        public InputStream getInputStream() throws IOException {
            if (this.encrypted == null) {
                throw new IllegalStateException("storage has been deleted");
            }
            try {
                Cipher cipher = Cipher.getInstance(this.algorithm);
                cipher.init(2, this.skeySpec);
                InputStream in = this.encrypted.getInputStream();
                return new CipherInputStream(in, cipher);
            } catch (GeneralSecurityException e) {
                throw ((IOException) new IOException().initCause(e));
            }
        }
    }
}
