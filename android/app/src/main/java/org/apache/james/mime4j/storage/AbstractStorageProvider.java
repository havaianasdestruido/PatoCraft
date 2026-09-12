package org.apache.james.mime4j.storage;

import java.io.IOException;
import java.io.InputStream;
import org.apache.james.mime4j.codec.CodecUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractStorageProvider implements StorageProvider {
    protected AbstractStorageProvider() {
    }

    @Override // org.apache.james.mime4j.storage.StorageProvider
    public final Storage store(InputStream in) throws IOException {
        StorageOutputStream out = createStorageOutputStream();
        CodecUtil.copy(in, out);
        return out.toStorage();
    }
}
