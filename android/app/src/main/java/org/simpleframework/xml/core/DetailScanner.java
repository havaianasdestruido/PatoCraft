package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DetailScanner implements Detail {
    private DefaultType access;
    private NamespaceList declaration;
    private List<FieldDetail> fields;
    private Annotation[] labels;
    private List<MethodDetail> methods;
    private String name;
    private Namespace namespace;
    private Order order;
    private DefaultType override;
    private boolean required;
    private Root root;
    private boolean strict;
    private Class type;

    public DetailScanner(Class type) {
        this(type, null);
    }

    public DetailScanner(Class type, DefaultType override) {
        this.methods = new LinkedList();
        this.fields = new LinkedList();
        this.labels = type.getDeclaredAnnotations();
        this.override = override;
        this.strict = true;
        this.type = type;
        scan(type);
    }

    @Override // org.simpleframework.xml.core.Detail
    public boolean isRequired() {
        return this.required;
    }

    @Override // org.simpleframework.xml.core.Detail
    public boolean isStrict() {
        return this.strict;
    }

    @Override // org.simpleframework.xml.core.Detail
    public boolean isPrimitive() {
        return this.type.isPrimitive();
    }

    @Override // org.simpleframework.xml.core.Detail
    public boolean isInstantiable() {
        int modifiers = this.type.getModifiers();
        return Modifier.isStatic(modifiers) || !this.type.isMemberClass();
    }

    @Override // org.simpleframework.xml.core.Detail
    public Root getRoot() {
        return this.root;
    }

    @Override // org.simpleframework.xml.core.Detail
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Detail
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.Detail
    public Order getOrder() {
        return this.order;
    }

    @Override // org.simpleframework.xml.core.Detail
    public DefaultType getOverride() {
        return this.override;
    }

    @Override // org.simpleframework.xml.core.Detail
    public DefaultType getAccess() {
        return this.override != null ? this.override : this.access;
    }

    @Override // org.simpleframework.xml.core.Detail
    public Namespace getNamespace() {
        return this.namespace;
    }

    @Override // org.simpleframework.xml.core.Detail
    public NamespaceList getNamespaceList() {
        return this.declaration;
    }

    @Override // org.simpleframework.xml.core.Detail
    public List<MethodDetail> getMethods() {
        return this.methods;
    }

    @Override // org.simpleframework.xml.core.Detail
    public List<FieldDetail> getFields() {
        return this.fields;
    }

    @Override // org.simpleframework.xml.core.Detail
    public Annotation[] getAnnotations() {
        return this.labels;
    }

    @Override // org.simpleframework.xml.core.Detail
    public Constructor[] getConstructors() {
        return this.type.getDeclaredConstructors();
    }

    @Override // org.simpleframework.xml.core.Detail
    public Class getSuper() {
        Class base = this.type.getSuperclass();
        if (base == Object.class) {
            return null;
        }
        return base;
    }

    private void scan(Class type) {
        methods(type);
        fields(type);
        extract(type);
    }

    private void extract(Class type) {
        Annotation[] arr$ = this.labels;
        for (Annotation label : arr$) {
            if (label instanceof Namespace) {
                namespace(label);
            }
            if (label instanceof NamespaceList) {
                scope(label);
            }
            if (label instanceof Root) {
                root(label);
            }
            if (label instanceof Order) {
                order(label);
            }
            if (label instanceof Default) {
                access(label);
            }
        }
    }

    private void methods(Class type) {
        Method[] list = type.getDeclaredMethods();
        for (Method method : list) {
            MethodDetail detail = new MethodDetail(method);
            this.methods.add(detail);
        }
    }

    private void fields(Class type) {
        Field[] list = type.getDeclaredFields();
        for (Field field : list) {
            FieldDetail detail = new FieldDetail(field);
            this.fields.add(detail);
        }
    }

    private void root(Annotation label) {
        if (label != null) {
            Root value = (Root) label;
            String real = this.type.getSimpleName();
            if (value != null) {
                String text = value.name();
                if (isEmpty(text)) {
                    text = Reflector.getName(real);
                }
                this.strict = value.strict();
                this.root = value;
                this.name = text;
            }
        }
    }

    private boolean isEmpty(String value) {
        return value.length() == 0;
    }

    private void order(Annotation label) {
        if (label != null) {
            this.order = (Order) label;
        }
    }

    private void access(Annotation label) {
        if (label != null) {
            Default value = (Default) label;
            this.required = value.required();
            this.access = value.value();
        }
    }

    private void namespace(Annotation label) {
        if (label != null) {
            this.namespace = (Namespace) label;
        }
    }

    private void scope(Annotation label) {
        if (label != null) {
            this.declaration = (NamespaceList) label;
        }
    }

    public String toString() {
        return this.type.toString();
    }
}
