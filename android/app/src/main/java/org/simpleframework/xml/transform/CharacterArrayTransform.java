package org.simpleframework.xml.transform;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CharacterArrayTransform implements Transform {
    private final Class entry;

    public CharacterArrayTransform(Class entry) {
        this.entry = entry;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public Object read(String value) throws Exception {
        char[] list = value.toCharArray();
        int length = list.length;
        return this.entry == Character.TYPE ? list : read(list, length);
    }

    private Object read(char[] list, int length) throws Exception {
        Object array = Array.newInstance((Class<?>) this.entry, length);
        for (int i = 0; i < length; i++) {
            Array.set(array, i, Character.valueOf(list[i]));
        }
        return array;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Object value) throws Exception {
        int length = Array.getLength(value);
        if (this.entry != Character.TYPE) {
            return write(value, length);
        }
        char[] array = (char[]) value;
        return new String(array);
    }

    private String write(Object value, int length) throws Exception {
        StringBuilder text = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            Object entry = Array.get(value, i);
            if (entry != null) {
                text.append(entry);
            }
        }
        return text.toString();
    }
}
