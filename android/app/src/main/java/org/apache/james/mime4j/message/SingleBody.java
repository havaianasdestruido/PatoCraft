package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class SingleBody implements Body {
    private Entity parent = null;

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    protected SingleBody() {
    }

    @Override // org.apache.james.mime4j.message.Body
    public Entity getParent() {
        return this.parent;
    }

    @Override // org.apache.james.mime4j.message.Body
    public void setParent(Entity parent) {
        this.parent = parent;
    }

    public SingleBody copy() {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.james.mime4j.message.Disposable
    public void dispose() {
    }
}
