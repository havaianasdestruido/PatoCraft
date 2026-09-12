package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ContactMap extends LinkedHashMap<Object, Contact> implements Iterable<Contact> {
    ContactMap() {
    }

    @Override // java.lang.Iterable
    public Iterator<Contact> iterator() {
        return values().iterator();
    }
}
