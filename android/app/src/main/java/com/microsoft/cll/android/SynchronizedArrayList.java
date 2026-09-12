package com.microsoft.cll.android;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SynchronizedArrayList<T> extends ArrayList<T> {
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public synchronized boolean add(T t) {
        return contains(t) ? false : super.add(t);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public synchronized boolean remove(Object o) {
        return super.remove(o);
    }
}
