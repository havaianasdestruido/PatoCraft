package org.simpleframework.xml.core;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class LabelMap extends LinkedHashMap<String, Label> implements Iterable<Label> {
    private final Policy policy;

    public LabelMap() {
        this(null);
    }

    public LabelMap(Policy policy) {
        this.policy = policy;
    }

    @Override // java.lang.Iterable
    public Iterator<Label> iterator() {
        return values().iterator();
    }

    public Label getLabel(String name) {
        return (Label) remove(name);
    }

    public String[] getKeys() throws Exception {
        Set<String> list = new HashSet<>();
        for (Label label : this) {
            if (label != null) {
                String path = label.getPath();
                String name = label.getName();
                list.add(path);
                list.add(name);
            }
        }
        return getArray(list);
    }

    public String[] getPaths() throws Exception {
        Set<String> list = new HashSet<>();
        for (Label label : this) {
            if (label != null) {
                String path = label.getPath();
                list.add(path);
            }
        }
        return getArray(list);
    }

    public LabelMap getLabels() throws Exception {
        LabelMap map = new LabelMap(this.policy);
        for (Label label : this) {
            if (label != null) {
                String name = label.getPath();
                map.put(name, label);
            }
        }
        return map;
    }

    private String[] getArray(Set<String> list) {
        return (String[]) list.toArray(new String[0]);
    }

    public boolean isStrict(Context context) {
        if (this.policy == null) {
            return context.isStrict();
        }
        return context.isStrict() && this.policy.isStrict();
    }
}
