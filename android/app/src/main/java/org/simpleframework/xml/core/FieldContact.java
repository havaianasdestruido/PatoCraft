package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class FieldContact implements Contact {
    private final Cache<Annotation> cache = new ConcurrentCache();
    private final Field field;
    private final Annotation label;
    private final Annotation[] list;
    private final int modifier;
    private final String name;

    public FieldContact(Field field, Annotation label, Annotation[] list) {
        this.modifier = field.getModifiers();
        this.name = field.getName();
        this.label = label;
        this.field = field;
        this.list = list;
    }

    @Override // org.simpleframework.xml.core.Contact
    public boolean isReadOnly() {
        return !isStatic() && isFinal();
    }

    public boolean isStatic() {
        return Modifier.isStatic(this.modifier);
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.modifier);
    }

    @Override // org.simpleframework.xml.strategy.Type
    public Class getType() {
        return this.field.getType();
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class getDependent() {
        return Reflector.getDependent(this.field);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class[] getDependents() {
        return Reflector.getDependents(this.field);
    }

    @Override // org.simpleframework.xml.core.Contact
    public Class getDeclaringClass() {
        return this.field.getDeclaringClass();
    }

    @Override // org.simpleframework.xml.core.Contact
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Contact
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return cls == this.label.annotationType() ? (T) this.label : (T) getCache(cls);
    }

    private <T extends Annotation> T getCache(Class<T> type) {
        if (this.cache.isEmpty()) {
            Annotation[] arr$ = this.list;
            for (Annotation entry : arr$) {
                this.cache.cache(entry.annotationType(), entry);
            }
        }
        return (T) this.cache.fetch(type);
    }

    @Override // org.simpleframework.xml.core.Contact
    public void set(Object source, Object value) throws Exception {
        if (!isFinal()) {
            this.field.set(source, value);
        }
    }

    @Override // org.simpleframework.xml.core.Contact
    public Object get(Object source) throws Exception {
        return this.field.get(source);
    }

    @Override // org.simpleframework.xml.core.Contact, org.simpleframework.xml.strategy.Type
    public String toString() {
        return String.format("field '%s' %s", getName(), this.field.toString());
    }
}
