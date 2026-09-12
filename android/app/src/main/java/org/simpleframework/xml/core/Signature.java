package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Signature implements Iterable<Parameter> {
    private final Constructor factory;
    private final ParameterMap parameters;
    private final Class type;

    public Signature(Signature signature) {
        this(signature.factory, signature.type);
    }

    public Signature(Constructor factory) {
        this(factory, factory.getDeclaringClass());
    }

    public Signature(Constructor factory, Class type) {
        this.parameters = new ParameterMap();
        this.factory = factory;
        this.type = type;
    }

    public int size() {
        return this.parameters.size();
    }

    public boolean isEmpty() {
        return this.parameters.isEmpty();
    }

    public boolean contains(Object key) {
        return this.parameters.containsKey(key);
    }

    @Override // java.lang.Iterable
    public Iterator<Parameter> iterator() {
        return this.parameters.iterator();
    }

    public Parameter remove(Object key) {
        return (Parameter) this.parameters.remove(key);
    }

    public Parameter get(int ordinal) {
        return this.parameters.get(ordinal);
    }

    public Parameter get(Object key) {
        return this.parameters.get(key);
    }

    public List<Parameter> getAll() {
        return this.parameters.getAll();
    }

    public void add(Parameter parameter) {
        Object key = parameter.getKey();
        if (key != null) {
            this.parameters.put(key, parameter);
        }
    }

    public void set(Object key, Parameter parameter) {
        this.parameters.put(key, parameter);
    }

    public Object create() throws Exception {
        if (!this.factory.isAccessible()) {
            this.factory.setAccessible(true);
        }
        return this.factory.newInstance(new Object[0]);
    }

    public Object create(Object[] list) throws Exception {
        if (!this.factory.isAccessible()) {
            this.factory.setAccessible(true);
        }
        return this.factory.newInstance(list);
    }

    public Signature copy() throws Exception {
        Signature signature = new Signature(this);
        for (Parameter parameter : this) {
            signature.add(parameter);
        }
        return signature;
    }

    public Class getType() {
        return this.type;
    }

    public String toString() {
        return this.factory.toString();
    }
}
