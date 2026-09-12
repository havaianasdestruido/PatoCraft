package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ParameterMap extends LinkedHashMap<Object, Parameter> implements Iterable<Parameter> {
    @Override // java.lang.Iterable
    public Iterator<Parameter> iterator() {
        return values().iterator();
    }

    public Parameter get(int ordinal) {
        return getAll().get(ordinal);
    }

    public List<Parameter> getAll() {
        Collection<Parameter> list = values();
        return !list.isEmpty() ? new ArrayList(list) : Collections.emptyList();
    }
}
