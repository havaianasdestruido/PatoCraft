package org.simpleframework.xml.transform;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ArrayTransform implements Transform {
    private final Transform delegate;
    private final Class entry;
    private final StringArrayTransform split = new StringArrayTransform();

    public ArrayTransform(Transform delegate, Class entry) {
        this.delegate = delegate;
        this.entry = entry;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public Object read(String value) throws Exception {
        String[] list = this.split.read(value);
        int length = list.length;
        return read(list, length);
    }

    private Object read(String[] list, int length) throws Exception {
        Object array = Array.newInstance((Class<?>) this.entry, length);
        for (int i = 0; i < length; i++) {
            Object item = this.delegate.read(list[i]);
            if (item != null) {
                Array.set(array, i, item);
            }
        }
        return array;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Object value) throws Exception {
        int length = Array.getLength(value);
        return write(value, length);
    }

    private String write(Object value, int length) throws Exception {
        String[] list = new String[length];
        for (int i = 0; i < length; i++) {
            Object entry = Array.get(value, i);
            if (entry != null) {
                list[i] = this.delegate.write(entry);
            }
        }
        return this.split.write(list);
    }
}
