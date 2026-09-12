package org.apache.james.mime4j.storage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MultiReferenceStorage implements Storage {
    private int referenceCounter;
    private final Storage storage;

    public MultiReferenceStorage(Storage storage) {
        if (storage == null) {
            throw new IllegalArgumentException();
        }
        this.storage = storage;
        this.referenceCounter = 1;
    }

    public void addReference() {
        incrementCounter();
    }

    @Override // org.apache.james.mime4j.storage.Storage
    public void delete() {
        if (decrementCounter()) {
            this.storage.delete();
        }
    }

    @Override // org.apache.james.mime4j.storage.Storage
    public InputStream getInputStream() throws IOException {
        return this.storage.getInputStream();
    }

    private synchronized void incrementCounter() {
        if (this.referenceCounter == 0) {
            throw new IllegalStateException("storage has been deleted");
        }
        this.referenceCounter++;
    }

    private synchronized boolean decrementCounter() {
        int i;
        if (this.referenceCounter == 0) {
            throw new IllegalStateException("storage has been deleted");
        }
        i = this.referenceCounter - 1;
        this.referenceCounter = i;
        return i == 0;
    }
}
