package org.simpleframework.xml.convert;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ConverterFactory {
    private final Cache<Converter> cache = new ConcurrentCache();

    public Converter getInstance(Class type) throws Exception {
        Converter converter = this.cache.fetch(type);
        if (converter == null) {
            return getConverter(type);
        }
        return converter;
    }

    public Converter getInstance(Convert convert) throws Exception {
        Class<? extends Converter> clsValue = convert.value();
        if (clsValue.isInterface()) {
            throw new ConvertException("Can not instantiate %s", clsValue);
        }
        return getInstance(clsValue);
    }

    private Converter getConverter(Class type) throws Exception {
        Constructor factory = getConstructor(type);
        if (factory == null) {
            throw new ConvertException("No default constructor for %s", type);
        }
        return getConverter(type, factory);
    }

    private Converter getConverter(Class type, Constructor factory) throws Exception {
        Converter converter = (Converter) factory.newInstance(new Object[0]);
        if (converter != null) {
            this.cache.cache(type, converter);
        }
        return converter;
    }

    private Constructor getConstructor(Class type) throws Exception {
        Constructor factory = type.getDeclaredConstructor(new Class[0]);
        if (!factory.isAccessible()) {
            factory.setAccessible(true);
        }
        return factory;
    }
}
