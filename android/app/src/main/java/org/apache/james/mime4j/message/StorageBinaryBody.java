package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.james.mime4j.codec.CodecUtil;
import org.apache.james.mime4j.storage.MultiReferenceStorage;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class StorageBinaryBody extends BinaryBody {
    private MultiReferenceStorage storage;

    public StorageBinaryBody(MultiReferenceStorage storage) {
        this.storage = storage;
    }

    @Override // org.apache.james.mime4j.message.BinaryBody
    public InputStream getInputStream() throws IOException {
        return this.storage.getInputStream();
    }

    @Override // org.apache.james.mime4j.message.SingleBody
    public void writeTo(OutputStream out) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException();
        }
        InputStream in = this.storage.getInputStream();
        CodecUtil.copy(in, out);
        in.close();
    }

    @Override // org.apache.james.mime4j.message.SingleBody
    public StorageBinaryBody copy() {
        this.storage.addReference();
        return new StorageBinaryBody(this.storage);
    }

    @Override // org.apache.james.mime4j.message.SingleBody, org.apache.james.mime4j.message.Disposable
    public void dispose() {
        if (this.storage != null) {
            this.storage.delete();
            this.storage = null;
        }
    }
}
