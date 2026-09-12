package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ClassScanner {
    private Function commit;
    private Function complete;
    private NamespaceDecorator decorator = new NamespaceDecorator();
    private Order order;
    private Function persist;
    private Function replace;
    private Function resolve;
    private Root root;
    private ConstructorScanner scanner;
    private Support support;
    private Function validate;

    public ClassScanner(Detail detail, Support support) throws Exception {
        this.scanner = new ConstructorScanner(detail, support);
        this.support = support;
        scan(detail);
    }

    public Signature getSignature() {
        return this.scanner.getSignature();
    }

    public List<Signature> getSignatures() {
        return this.scanner.getSignatures();
    }

    public ParameterMap getParameters() {
        return this.scanner.getParameters();
    }

    public Decorator getDecorator() {
        return this.decorator;
    }

    public Order getOrder() {
        return this.order;
    }

    public Root getRoot() {
        return this.root;
    }

    public Function getCommit() {
        return this.commit;
    }

    public Function getValidate() {
        return this.validate;
    }

    public Function getPersist() {
        return this.persist;
    }

    public Function getComplete() {
        return this.complete;
    }

    public Function getReplace() {
        return this.replace;
    }

    public Function getResolve() {
        return this.resolve;
    }

    private void scan(Detail detail) throws Exception {
        DefaultType access = detail.getOverride();
        Class type = detail.getType();
        while (type != null) {
            Detail value = this.support.getDetail(type, access);
            namespace(value);
            method(value);
            definition(value);
            type = value.getSuper();
        }
        commit(detail);
    }

    private void definition(Detail detail) throws Exception {
        if (this.root == null) {
            this.root = detail.getRoot();
        }
        if (this.order == null) {
            this.order = detail.getOrder();
        }
    }

    private void namespace(Detail detail) throws Exception {
        NamespaceList scope = detail.getNamespaceList();
        Namespace namespace = detail.getNamespace();
        if (namespace != null) {
            this.decorator.add(namespace);
        }
        if (scope != null) {
            Namespace[] list = scope.value();
            for (Namespace name : list) {
                this.decorator.add(name);
            }
        }
    }

    private void commit(Detail detail) {
        Namespace namespace = detail.getNamespace();
        if (namespace != null) {
            this.decorator.set(namespace);
        }
    }

    private void method(Detail detail) throws Exception {
        List<MethodDetail> list = detail.getMethods();
        for (MethodDetail entry : list) {
            method(entry);
        }
    }

    private void method(MethodDetail detail) {
        Annotation[] list = detail.getAnnotations();
        Method method = detail.getMethod();
        for (Annotation label : list) {
            if (label instanceof Commit) {
                commit(method);
            }
            if (label instanceof Validate) {
                validate(method);
            }
            if (label instanceof Persist) {
                persist(method);
            }
            if (label instanceof Complete) {
                complete(method);
            }
            if (label instanceof Replace) {
                replace(method);
            }
            if (label instanceof Resolve) {
                resolve(method);
            }
        }
    }

    private void replace(Method method) {
        if (this.replace == null) {
            this.replace = getFunction(method);
        }
    }

    private void resolve(Method method) {
        if (this.resolve == null) {
            this.resolve = getFunction(method);
        }
    }

    private void commit(Method method) {
        if (this.commit == null) {
            this.commit = getFunction(method);
        }
    }

    private void validate(Method method) {
        if (this.validate == null) {
            this.validate = getFunction(method);
        }
    }

    private void persist(Method method) {
        if (this.persist == null) {
            this.persist = getFunction(method);
        }
    }

    private void complete(Method method) {
        if (this.complete == null) {
            this.complete = getFunction(method);
        }
    }

    private Function getFunction(Method method) {
        boolean contextual = isContextual(method);
        if (!method.isAccessible()) {
            method.setAccessible(true);
        }
        return new Function(method, contextual);
    }

    private boolean isContextual(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length == 1) {
            return Map.class.equals(parameterTypes[0]);
        }
        return false;
    }
}
