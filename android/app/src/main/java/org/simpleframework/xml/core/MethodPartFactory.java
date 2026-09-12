package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class MethodPartFactory {
    private final AnnotationFactory factory;

    public MethodPartFactory(Detail detail, Support support) {
        this.factory = new AnnotationFactory(detail, support);
    }

    public MethodPart getInstance(Method method, Annotation[] list) throws Exception {
        Annotation label = getAnnotation(method);
        if (label != null) {
            return getInstance(method, label, list);
        }
        return null;
    }

    public MethodPart getInstance(Method method, Annotation label, Annotation[] list) throws Exception {
        MethodName name = getName(method, label);
        MethodType type = name.getType();
        return type == MethodType.SET ? new SetPart(name, label, list) : new GetPart(name, label, list);
    }

    private MethodName getName(Method method, Annotation label) throws Exception {
        MethodType type = getMethodType(method);
        if (type == MethodType.GET) {
            return getRead(method, type);
        }
        if (type == MethodType.IS) {
            return getRead(method, type);
        }
        if (type == MethodType.SET) {
            return getWrite(method, type);
        }
        throw new MethodException("Annotation %s must mark a set or get method", label);
    }

    private MethodType getMethodType(Method method) {
        String name = method.getName();
        if (name.startsWith("get")) {
            return MethodType.GET;
        }
        if (name.startsWith("is")) {
            return MethodType.IS;
        }
        if (name.startsWith("set")) {
            return MethodType.SET;
        }
        return MethodType.NONE;
    }

    private Annotation getAnnotation(Method method) throws Exception {
        Class[] dependents = getDependents(method);
        Class type = getType(method);
        if (type != null) {
            return this.factory.getInstance(type, dependents);
        }
        return null;
    }

    private Class[] getDependents(Method method) throws Exception {
        MethodType type = getMethodType(method);
        if (type == MethodType.SET) {
            return Reflector.getParameterDependents(method, 0);
        }
        if (type == MethodType.GET) {
            return Reflector.getReturnDependents(method);
        }
        if (type == MethodType.IS) {
            return Reflector.getReturnDependents(method);
        }
        return null;
    }

    public Class getType(Method method) throws Exception {
        MethodType type = getMethodType(method);
        if (type == MethodType.SET) {
            return getParameterType(method);
        }
        if (type == MethodType.GET) {
            return getReturnType(method);
        }
        if (type == MethodType.IS) {
            return getReturnType(method);
        }
        return null;
    }

    private Class getParameterType(Method method) throws Exception {
        if (method.getParameterTypes().length == 1) {
            return method.getParameterTypes()[0];
        }
        return null;
    }

    private Class getReturnType(Method method) throws Exception {
        if (method.getParameterTypes().length == 0) {
            return method.getReturnType();
        }
        return null;
    }

    private MethodName getRead(Method method, MethodType type) throws Exception {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String real = method.getName();
        if (parameterTypes.length != 0) {
            throw new MethodException("Get method %s is not a valid property", method);
        }
        String name = getTypeName(real, type);
        if (name == null) {
            throw new MethodException("Could not get name for %s", method);
        }
        return new MethodName(method, type, name);
    }

    private MethodName getWrite(Method method, MethodType type) throws Exception {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String real = method.getName();
        if (parameterTypes.length != 1) {
            throw new MethodException("Set method %s is not a valid property", method);
        }
        String name = getTypeName(real, type);
        if (name == null) {
            throw new MethodException("Could not get name for %s", method);
        }
        return new MethodName(method, type, name);
    }

    private String getTypeName(String name, MethodType type) {
        int prefix = type.getPrefix();
        int size = name.length();
        if (size > prefix) {
            name = name.substring(prefix, size);
        }
        return Reflector.getName(name);
    }
}
