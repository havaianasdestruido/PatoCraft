package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OutputNodeMap extends LinkedHashMap<String, OutputNode> implements NodeMap<OutputNode> {
    private final OutputNode source;

    public OutputNodeMap(OutputNode source) {
        this.source = source;
    }

    @Override // org.simpleframework.xml.stream.NodeMap
    public OutputNode getNode() {
        return this.source;
    }

    @Override // org.simpleframework.xml.stream.NodeMap
    public String getName() {
        return this.source.getName();
    }

    @Override // org.simpleframework.xml.stream.NodeMap
    public OutputNode put(String name, String value) {
        OutputNode node = new OutputAttribute(this.source, name, value);
        if (this.source != null) {
            put(name, node);
        }
        return node;
    }

    @Override // org.simpleframework.xml.stream.NodeMap
    public OutputNode remove(String name) {
        return (OutputNode) super.remove((Object) name);
    }

    @Override // org.simpleframework.xml.stream.NodeMap
    public OutputNode get(String name) {
        return (OutputNode) super.get((Object) name);
    }

    @Override // org.simpleframework.xml.stream.NodeMap, java.lang.Iterable
    public Iterator<String> iterator() {
        return keySet().iterator();
    }
}
