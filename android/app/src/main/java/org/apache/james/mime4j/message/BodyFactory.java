package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.storage.DefaultStorageProvider;
import org.apache.james.mime4j.storage.MultiReferenceStorage;
import org.apache.james.mime4j.storage.Storage;
import org.apache.james.mime4j.storage.StorageProvider;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BodyFactory {
    private StorageProvider storageProvider;
    private static Log log = LogFactory.getLog(BodyFactory.class);
    private static final Charset FALLBACK_CHARSET = CharsetUtil.DEFAULT_CHARSET;

    public BodyFactory() {
        this.storageProvider = DefaultStorageProvider.getInstance();
    }

    public BodyFactory(StorageProvider storageProvider) {
        this.storageProvider = storageProvider == null ? DefaultStorageProvider.getInstance() : storageProvider;
    }

    public StorageProvider getStorageProvider() {
        return this.storageProvider;
    }

    public BinaryBody binaryBody(InputStream is) throws IOException {
        if (is == null) {
            throw new IllegalArgumentException();
        }
        Storage storage = this.storageProvider.store(is);
        return new StorageBinaryBody(new MultiReferenceStorage(storage));
    }

    public BinaryBody binaryBody(Storage storage) throws IOException {
        if (storage == null) {
            throw new IllegalArgumentException();
        }
        return new StorageBinaryBody(new MultiReferenceStorage(storage));
    }

    public TextBody textBody(InputStream is) throws IOException {
        if (is == null) {
            throw new IllegalArgumentException();
        }
        Storage storage = this.storageProvider.store(is);
        return new StorageTextBody(new MultiReferenceStorage(storage), CharsetUtil.DEFAULT_CHARSET);
    }

    public TextBody textBody(InputStream is, String mimeCharset) throws IOException {
        if (is == null) {
            throw new IllegalArgumentException();
        }
        if (mimeCharset == null) {
            throw new IllegalArgumentException();
        }
        Storage storage = this.storageProvider.store(is);
        Charset charset = toJavaCharset(mimeCharset, false);
        return new StorageTextBody(new MultiReferenceStorage(storage), charset);
    }

    public TextBody textBody(Storage storage) throws IOException {
        if (storage == null) {
            throw new IllegalArgumentException();
        }
        return new StorageTextBody(new MultiReferenceStorage(storage), CharsetUtil.DEFAULT_CHARSET);
    }

    public TextBody textBody(Storage storage, String mimeCharset) throws IOException {
        if (storage == null) {
            throw new IllegalArgumentException();
        }
        if (mimeCharset == null) {
            throw new IllegalArgumentException();
        }
        Charset charset = toJavaCharset(mimeCharset, false);
        return new StorageTextBody(new MultiReferenceStorage(storage), charset);
    }

    public TextBody textBody(String text) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        return new StringTextBody(text, CharsetUtil.DEFAULT_CHARSET);
    }

    public TextBody textBody(String text, String mimeCharset) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        if (mimeCharset == null) {
            throw new IllegalArgumentException();
        }
        Charset charset = toJavaCharset(mimeCharset, true);
        return new StringTextBody(text, charset);
    }

    private static Charset toJavaCharset(String mimeCharset, boolean forEncoding) {
        String charset = CharsetUtil.toJavaCharset(mimeCharset);
        if (charset == null) {
            if (log.isWarnEnabled()) {
                log.warn("MIME charset '" + mimeCharset + "' has no corresponding Java charset. Using " + FALLBACK_CHARSET + " instead.");
            }
            return FALLBACK_CHARSET;
        }
        if (forEncoding && !CharsetUtil.isEncodingSupported(charset)) {
            if (log.isWarnEnabled()) {
                log.warn("MIME charset '" + mimeCharset + "' does not support encoding. Using " + FALLBACK_CHARSET + " instead.");
            }
            return FALLBACK_CHARSET;
        }
        if (!forEncoding && !CharsetUtil.isDecodingSupported(charset)) {
            if (log.isWarnEnabled()) {
                log.warn("MIME charset '" + mimeCharset + "' does not support decoding. Using " + FALLBACK_CHARSET + " instead.");
            }
            return FALLBACK_CHARSET;
        }
        return Charset.forName(charset);
    }
}
