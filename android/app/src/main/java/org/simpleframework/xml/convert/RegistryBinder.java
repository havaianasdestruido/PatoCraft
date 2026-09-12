package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class RegistryBinder {
    private final Cache<Class> cache = new ConcurrentCache();
    private final ConverterFactory factory = new ConverterFactory();

    public Converter lookup(Class type) throws Exception {
        Class result = this.cache.fetch(type);
        if (result != null) {
            return create(result);
        }
        return null;
    }

    private Converter create(Class type) throws Exception {
        return this.factory.getInstance(type);
    }

    public void bind(Class type, Class converter) throws Exception {
        this.cache.cache(type, converter);
    }
}
