package org.simpleframework.xml.stream;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
abstract class EventToken implements EventNode {
    EventToken() {
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public int getLine() {
        return -1;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public String getName() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public String getValue() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public String getReference() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public String getPrefix() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public Object getSource() {
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<Attribute> iterator() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public boolean isEnd() {
        return false;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public boolean isStart() {
        return false;
    }

    @Override // org.simpleframework.xml.stream.EventNode
    public boolean isText() {
        return false;
    }
}
