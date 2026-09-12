package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ConverterScanner {
    private final ConverterFactory factory = new ConverterFactory();
    private final ScannerBuilder builder = new ScannerBuilder();

    public Converter getConverter(Type type, Value value) throws Exception {
        Class real = getType(type, value);
        Convert convert = getConvert(type, real);
        if (convert != null) {
            return this.factory.getInstance(convert);
        }
        return null;
    }

    public Converter getConverter(Type type, Object value) throws Exception {
        Class real = getType(type, value);
        Convert convert = getConvert(type, real);
        if (convert != null) {
            return this.factory.getInstance(convert);
        }
        return null;
    }

    private Convert getConvert(Type type, Class real) throws Exception {
        Convert convert = getConvert(type);
        if (convert == null) {
            return getConvert(real);
        }
        return convert;
    }

    private Convert getConvert(Type type) throws Exception {
        Convert convert = (Convert) type.getAnnotation(Convert.class);
        if (convert != null) {
            Element element = (Element) type.getAnnotation(Element.class);
            if (element == null) {
                throw new ConvertException("Element annotation required for %s", type);
            }
        }
        return convert;
    }

    private Convert getConvert(Class real) throws Exception {
        Convert convert = (Convert) getAnnotation(real, Convert.class);
        if (convert != null) {
            Root root = (Root) getAnnotation(real, Root.class);
            if (root == null) {
                throw new ConvertException("Root annotation required for %s", real);
            }
        }
        return convert;
    }

    private <T extends Annotation> T getAnnotation(Class<?> cls, Class<T> cls2) {
        return (T) this.builder.build(cls).scan(cls2);
    }

    private Class getType(Type type, Value value) {
        Class real = type.getType();
        if (value != null) {
            Class real2 = value.getType();
            return real2;
        }
        return real;
    }

    private Class getType(Type type, Object value) {
        Class real = type.getType();
        if (value != null) {
            return value.getClass();
        }
        return real;
    }
}
