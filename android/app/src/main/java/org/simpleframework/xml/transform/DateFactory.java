package org.simpleframework.xml.transform;

import java.lang.reflect.Constructor;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DateFactory<T extends Date> {
    private final Constructor<T> factory;

    public DateFactory(Class<T> type) throws Exception {
        this(type, Long.TYPE);
    }

    public DateFactory(Class<T> type, Class... list) throws Exception {
        this.factory = type.getDeclaredConstructor(list);
    }

    public T getInstance(Object... list) throws Exception {
        return this.factory.newInstance(list);
    }
}
