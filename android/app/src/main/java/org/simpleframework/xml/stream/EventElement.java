package org.simpleframework.xml.stream;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
abstract class EventElement extends ArrayList<Attribute> implements EventNode {
    EventElement() {
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public int getLine() {
        return -1;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public String getValue() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public boolean isEnd() {
        return false;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public boolean isStart() {
        return true;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public boolean isText() {
        return false;
    }
}
