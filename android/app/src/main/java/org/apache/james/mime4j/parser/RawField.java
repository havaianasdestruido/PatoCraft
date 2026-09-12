package org.apache.james.mime4j.parser;

import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class RawField implements Field {
    private String body;
    private int colonIdx;
    private String name;
    private final ByteSequence raw;

    public RawField(ByteSequence raw, int colonIdx) {
        this.raw = raw;
        this.colonIdx = colonIdx;
    }

    @Override // org.apache.james.mime4j.parser.Field
    public String getName() {
        if (this.name == null) {
            this.name = parseName();
        }
        return this.name;
    }

    @Override // org.apache.james.mime4j.parser.Field
    public String getBody() {
        if (this.body == null) {
            this.body = parseBody();
        }
        return this.body;
    }

    @Override // org.apache.james.mime4j.parser.Field
    public ByteSequence getRaw() {
        return this.raw;
    }

    public String toString() {
        return getName() + ':' + getBody();
    }

    private String parseName() {
        return ContentUtil.decode(this.raw, 0, this.colonIdx);
    }

    private String parseBody() {
        int offset = this.colonIdx + 1;
        int length = this.raw.length() - offset;
        return ContentUtil.decode(this.raw, offset, length);
    }
}
