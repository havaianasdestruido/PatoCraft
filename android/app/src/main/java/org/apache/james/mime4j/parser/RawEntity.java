package org.apache.james.mime4j.parser;

import java.io.InputStream;
import org.apache.james.mime4j.descriptor.BodyDescriptor;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RawEntity implements EntityStateMachine {
    private int state = 2;
    private final InputStream stream;

    RawEntity(InputStream stream) {
        this.stream = stream;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public int getState() {
        return this.state;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public void setRecursionMode(int recursionMode) {
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public EntityStateMachine advance() {
        this.state = -1;
        return null;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public InputStream getContentStream() {
        return this.stream;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public BodyDescriptor getBodyDescriptor() {
        return null;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public Field getField() {
        return null;
    }

    public String getFieldName() {
        return null;
    }

    public String getFieldValue() {
        return null;
    }
}
