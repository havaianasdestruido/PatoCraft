package org.apache.james.mime4j.storage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface StorageProvider {
    StorageOutputStream createStorageOutputStream() throws IOException;

    Storage store(InputStream inputStream) throws IOException;
}
