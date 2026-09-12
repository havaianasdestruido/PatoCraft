package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Traverser {
    private final Context context;
    private final Style style;

    public Traverser(Context context) {
        this.style = context.getStyle();
        this.context = context;
    }

    private Decorator getDecorator(Class type) throws Exception {
        return this.context.getDecorator(type);
    }

    public Object read(InputNode node, Class type) throws Exception {
        Composite factory = getComposite(type);
        Object value = factory.read(node);
        if (value != null) {
            return read(node, value.getClass(), value);
        }
        return null;
    }

    public Object read(InputNode node, Object value) throws Exception {
        Class<?> cls = value.getClass();
        Composite factory = getComposite(cls);
        Object real = factory.read(node, value);
        return read(node, cls, real);
    }

    private Object read(InputNode node, Class type, Object value) throws Exception {
        String root = getName(type);
        if (root == null) {
            throw new RootException("Root annotation required for %s", type);
        }
        return value;
    }

    public boolean validate(InputNode node, Class type) throws Exception {
        Composite factory = getComposite(type);
        String root = getName(type);
        if (root == null) {
            throw new RootException("Root annotation required for %s", type);
        }
        return factory.validate(node);
    }

    public void write(OutputNode node, Object source) throws Exception {
        write(node, source, source.getClass());
    }

    public void write(OutputNode node, Object source, Class expect) throws Exception {
        Class<?> cls = source.getClass();
        String root = getName(cls);
        if (root == null) {
            throw new RootException("Root annotation required for %s", cls);
        }
        write(node, source, expect, root);
    }

    public void write(OutputNode node, Object source, Class expect, String name) throws Exception {
        OutputNode child = node.getChild(name);
        Type type = getType(expect);
        if (source != null) {
            Class<?> cls = source.getClass();
            Decorator decorator = getDecorator(cls);
            if (decorator != null) {
                decorator.decorate(child);
            }
            if (!this.context.setOverride(type, source, child)) {
                getComposite(cls).write(child, source);
            }
        }
        child.commit();
    }

    private Composite getComposite(Class expect) throws Exception {
        Type type = getType(expect);
        if (expect == null) {
            throw new RootException("Can not instantiate null class", new Object[0]);
        }
        return new Composite(this.context, type);
    }

    private Type getType(Class type) {
        return new ClassType(type);
    }

    protected String getName(Class type) throws Exception {
        String root = this.context.getName(type);
        String name = this.style.getElement(root);
        return name;
    }
}
