package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AnnotationHandler implements InvocationHandler {
    private static final String ATTRIBUTE = "attribute";
    private static final String CLASS = "annotationType";
    private static final String EQUAL = "equals";
    private static final String REQUIRED = "required";
    private static final String STRING = "toString";
    private final boolean attribute;
    private final Comparer comparer;
    private final boolean required;
    private final Class type;

    public AnnotationHandler(Class type) {
        this(type, true);
    }

    public AnnotationHandler(Class type, boolean required) {
        this(type, required, false);
    }

    public AnnotationHandler(Class type, boolean required, boolean attribute) {
        this.comparer = new Comparer();
        this.attribute = attribute;
        this.required = required;
        this.type = type;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] list) throws Throwable {
        String name = method.getName();
        if (name.equals(STRING)) {
            return toString();
        }
        if (name.equals(EQUAL)) {
            return Boolean.valueOf(equals(proxy, list));
        }
        if (name.equals(CLASS)) {
            return this.type;
        }
        if (name.equals(REQUIRED)) {
            return Boolean.valueOf(this.required);
        }
        if (name.equals(ATTRIBUTE)) {
            return Boolean.valueOf(this.attribute);
        }
        return method.getDefaultValue();
    }

    private boolean equals(Object proxy, Object[] list) throws Throwable {
        Annotation left = (Annotation) proxy;
        Annotation right = (Annotation) list[0];
        if (left.annotationType() != right.annotationType()) {
            throw new PersistenceException("Annotation %s is not the same as %s", left, right);
        }
        return this.comparer.equals(left, right);
    }

    public String toString() {
        StringBuilder builder = new StringBuilder();
        if (this.type != null) {
            name(builder);
            attributes(builder);
        }
        return builder.toString();
    }

    private void name(StringBuilder builder) {
        String name = this.type.getName();
        if (name != null) {
            builder.append('@');
            builder.append(name);
            builder.append('(');
        }
    }

    private void attributes(StringBuilder builder) {
        Method[] list = this.type.getDeclaredMethods();
        for (int i = 0; i < list.length; i++) {
            String attribute = list[i].getName();
            Object value = value(list[i]);
            if (i > 0) {
                builder.append(',');
                builder.append(' ');
            }
            builder.append(attribute);
            builder.append('=');
            builder.append(value);
        }
        builder.append(')');
    }

    private Object value(Method method) {
        String name = method.getName();
        if (name.equals(REQUIRED)) {
            return Boolean.valueOf(this.required);
        }
        if (name.equals(ATTRIBUTE)) {
            return Boolean.valueOf(this.attribute);
        }
        return method.getDefaultValue();
    }
}
