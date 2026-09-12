package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PrefixResolver extends LinkedHashMap<String, String> implements NamespaceMap {
    private final OutputNode source;

    public PrefixResolver(OutputNode source) {
        this.source = source;
    }

    @Override // org.simpleframework.xml.stream.NamespaceMap
    public String getPrefix() {
        return this.source.getPrefix();
    }

    @Override // org.simpleframework.xml.stream.NamespaceMap
    public String setReference(String reference) {
        return setReference(reference, "");
    }

    @Override // org.simpleframework.xml.stream.NamespaceMap
    public String setReference(String reference, String prefix) {
        String parent = resolvePrefix(reference);
        if (parent != null) {
            return null;
        }
        return (String) put(reference, prefix);
    }

    @Override // org.simpleframework.xml.stream.NamespaceMap
    public String getPrefix(String reference) {
        String prefix;
        int size = size();
        return (size <= 0 || (prefix = get(reference)) == null) ? resolvePrefix(reference) : prefix;
    }

    @Override // org.simpleframework.xml.stream.NamespaceMap
    public String getReference(String prefix) {
        if (containsValue(prefix)) {
            for (String reference : this) {
                String value = (String) get(reference);
                if (value != null && value.equals(prefix)) {
                    return reference;
                }
            }
        }
        return resolveReference(prefix);
    }

    private String resolveReference(String prefix) {
        NamespaceMap parent = this.source.getNamespaces();
        if (parent != null) {
            return parent.getReference(prefix);
        }
        return null;
    }

    private String resolvePrefix(String reference) {
        NamespaceMap parent = this.source.getNamespaces();
        if (parent != null) {
            String prefix = parent.getPrefix(reference);
            if (!containsValue(prefix)) {
                return prefix;
            }
        }
        return null;
    }

    @Override // org.simpleframework.xml.stream.NamespaceMap, java.lang.Iterable
    public Iterator<String> iterator() {
        return keySet().iterator();
    }
}
