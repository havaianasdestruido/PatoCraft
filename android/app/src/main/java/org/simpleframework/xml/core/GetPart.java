package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class GetPart implements MethodPart {
    private final Cache<Annotation> cache = new ConcurrentCache();
    private final Annotation label;
    private final Annotation[] list;
    private final Method method;
    private final String name;
    private final MethodType type;

    public GetPart(MethodName method, Annotation label, Annotation[] list) {
        this.method = method.getMethod();
        this.name = method.getName();
        this.type = method.getType();
        this.label = label;
        this.list = list;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getType() {
        return this.method.getReturnType();
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getDependent() {
        return Reflector.getReturnDependent(this.method);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class[] getDependents() {
        return Reflector.getReturnDependents(this.method);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Class getDeclaringClass() {
        return this.method.getDeclaringClass();
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public <T extends Annotation> T getAnnotation(Class<T> type) {
        if (this.cache.isEmpty()) {
            Annotation[] arr$ = this.list;
            for (Annotation entry : arr$) {
                this.cache.cache(entry.annotationType(), entry);
            }
        }
        return (T) this.cache.fetch(type);
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public MethodType getMethodType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public Method getMethod() {
        if (!this.method.isAccessible()) {
            this.method.setAccessible(true);
        }
        return this.method;
    }

    @Override // org.simpleframework.xml.core.MethodPart
    public String toString() {
        return this.method.toGenericString();
    }
}
