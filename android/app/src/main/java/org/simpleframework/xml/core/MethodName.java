package org.simpleframework.xml.core;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class MethodName {
    private Method method;
    private String name;
    private MethodType type;

    public MethodName(Method method, MethodType type, String name) {
        this.method = method;
        this.type = type;
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public MethodType getType() {
        return this.type;
    }

    public Method getMethod() {
        return this.method;
    }
}
