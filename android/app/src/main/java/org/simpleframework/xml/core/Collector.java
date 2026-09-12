package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Collector implements Criteria {
    private final Registry alias;
    private final Registry registry;

    public Collector() {
        this.registry = new Registry();
        this.alias = new Registry();
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable get(Object key) {
        return this.registry.get(key);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable get(Label label) throws Exception {
        if (label == null) {
            return null;
        }
        Object key = label.getKey();
        return this.registry.get(key);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable resolve(String path) {
        return this.alias.get(path);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable remove(Object key) throws Exception {
        return (Variable) this.registry.remove(key);
    }

    @Override // java.lang.Iterable
    public Iterator<Object> iterator() {
        return this.registry.iterator();
    }

    @Override // org.simpleframework.xml.core.Criteria
    public void set(Label label, Object value) throws Exception {
        Variable variable = new Variable(label, value);
        if (label != null) {
            String[] paths = label.getPaths();
            Object key = label.getKey();
            for (String path : paths) {
                this.alias.put(path, variable);
            }
            this.registry.put(key, variable);
        }
    }

    @Override // org.simpleframework.xml.core.Criteria
    public void commit(Object source) throws Exception {
        Collection<Variable> set = this.registry.values();
        for (Variable entry : set) {
            Contact contact = entry.getContact();
            Object value = entry.getValue();
            contact.set(source, value);
        }
    }

    private static class Registry extends LinkedHashMap<Object, Variable> {
        private Registry() {
        }

        public Iterator<Object> iterator() {
            return keySet().iterator();
        }
    }
}
