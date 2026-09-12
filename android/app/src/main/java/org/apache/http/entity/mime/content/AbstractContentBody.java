package org.apache.http.entity.mime.content;

import java.util.Collections;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.james.mime4j.message.Entity;
import org.apache.james.mime4j.message.SingleBody;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@NotThreadSafe
public abstract class AbstractContentBody extends SingleBody implements ContentBody {
    private final String mediaType;
    private final String mimeType;
    private Entity parent = null;
    private final String subType;

    public AbstractContentBody(String mimeType) {
        if (mimeType == null) {
            throw new IllegalArgumentException("MIME type may not be null");
        }
        this.mimeType = mimeType;
        int i = mimeType.indexOf(47);
        if (i != -1) {
            this.mediaType = mimeType.substring(0, i);
            this.subType = mimeType.substring(i + 1);
        } else {
            this.mediaType = mimeType;
            this.subType = null;
        }
    }

    @Override // org.apache.james.mime4j.message.SingleBody, org.apache.james.mime4j.message.Body
    public Entity getParent() {
        return this.parent;
    }

    @Override // org.apache.james.mime4j.message.SingleBody, org.apache.james.mime4j.message.Body
    public void setParent(Entity parent) {
        this.parent = parent;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getMediaType() {
        return this.mediaType;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getSubType() {
        return this.subType;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public Map<String, String> getContentTypeParameters() {
        return Collections.emptyMap();
    }

    @Override // org.apache.james.mime4j.message.SingleBody, org.apache.james.mime4j.message.Disposable
    public void dispose() {
    }
}
