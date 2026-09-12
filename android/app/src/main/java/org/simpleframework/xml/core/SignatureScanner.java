package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class SignatureScanner {
    private final SignatureBuilder builder;
    private final Constructor constructor;
    private final ParameterFactory factory;
    private final ParameterMap registry;
    private final Class type;

    public SignatureScanner(Constructor constructor, ParameterMap registry, Support support) throws Exception {
        this.builder = new SignatureBuilder(constructor);
        this.factory = new ParameterFactory(support);
        this.type = constructor.getDeclaringClass();
        this.constructor = constructor;
        this.registry = registry;
        scan(this.type);
    }

    public boolean isValid() {
        return this.builder.isValid();
    }

    public List<Signature> getSignatures() throws Exception {
        return this.builder.build();
    }

    private void scan(Class type) throws Exception {
        Class<?>[] parameterTypes = this.constructor.getParameterTypes();
        for (int i = 0; i < parameterTypes.length; i++) {
            scan(parameterTypes[i], i);
        }
    }

    private void scan(Class type, int index) throws Exception {
        Annotation[][] labels = this.constructor.getParameterAnnotations();
        for (int j = 0; j < labels[index].length; j++) {
            Collection<Parameter> value = process(labels[index][j], index);
            for (Parameter parameter : value) {
                this.builder.insert(parameter, index);
            }
        }
    }

    private List<Parameter> process(Annotation label, int ordinal) throws Exception {
        if (label instanceof Attribute) {
            return create(label, ordinal);
        }
        if (label instanceof Element) {
            return create(label, ordinal);
        }
        if (label instanceof ElementList) {
            return create(label, ordinal);
        }
        if (label instanceof ElementArray) {
            return create(label, ordinal);
        }
        if (label instanceof ElementMap) {
            return create(label, ordinal);
        }
        if (label instanceof ElementListUnion) {
            return union(label, ordinal);
        }
        if (label instanceof ElementMapUnion) {
            return union(label, ordinal);
        }
        if (label instanceof ElementUnion) {
            return union(label, ordinal);
        }
        if (label instanceof Text) {
            return create(label, ordinal);
        }
        return Collections.emptyList();
    }

    private List<Parameter> union(Annotation label, int ordinal) throws Exception {
        Signature signature = new Signature(this.constructor);
        Annotation[] list = extract(label);
        for (Annotation value : list) {
            Parameter parameter = this.factory.getInstance(this.constructor, label, value, ordinal);
            String path = parameter.getPath();
            if (signature.contains(path)) {
                throw new UnionException("Annotation name '%s' used more than once in %s for %s", path, label, this.type);
            }
            signature.set(path, parameter);
            register(parameter);
        }
        return signature.getAll();
    }

    private List<Parameter> create(Annotation label, int ordinal) throws Exception {
        Parameter parameter = this.factory.getInstance(this.constructor, label, ordinal);
        if (parameter != null) {
            register(parameter);
        }
        return Collections.singletonList(parameter);
    }

    private Annotation[] extract(Annotation label) throws Exception {
        Method[] list = label.annotationType().getDeclaredMethods();
        if (list.length != 1) {
            throw new UnionException("Annotation '%s' is not a valid union for %s", label, this.type);
        }
        Method method = list[0];
        Object value = method.invoke(label, new Object[0]);
        return (Annotation[]) value;
    }

    private void register(Parameter parameter) throws Exception {
        String path = parameter.getPath();
        Object key = parameter.getKey();
        if (this.registry.containsKey(key)) {
            validate(parameter, key);
        }
        if (this.registry.containsKey(path)) {
            validate(parameter, path);
        }
        this.registry.put(path, parameter);
        this.registry.put(key, parameter);
    }

    private void validate(Parameter parameter, Object key) throws Exception {
        Parameter other = this.registry.get(key);
        if (parameter.isText() != other.isText()) {
            Annotation expect = parameter.getAnnotation();
            Annotation actual = other.getAnnotation();
            String path = parameter.getPath();
            if (!expect.equals(actual)) {
                throw new ConstructorException("Annotations do not match for '%s' in %s", path, this.type);
            }
            Class real = other.getType();
            if (real != parameter.getType()) {
                throw new ConstructorException("Parameter types do not match for '%s' in %s", path, this.type);
            }
        }
    }
}
