package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeUnion implements Converter {
    private final Context context;
    private final LabelMap elements;
    private final Group group;
    private final Expression path;
    private final Type type;

    public CompositeUnion(Context context, Group group, Expression path, Type type) throws Exception {
        this.elements = group.getElements();
        this.context = context;
        this.group = group;
        this.type = type;
        this.path = path;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        String name = node.getName();
        String element = this.path.getElement(name);
        Label label = this.elements.get(element);
        Converter converter = label.getConverter(this.context);
        return converter.read(node);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object value) throws Exception {
        String name = node.getName();
        String element = this.path.getElement(name);
        Label label = this.elements.get(element);
        Converter converter = label.getConverter(this.context);
        return converter.read(node, value);
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        String name = node.getName();
        String element = this.path.getElement(name);
        Label label = this.elements.get(element);
        Converter converter = label.getConverter(this.context);
        return converter.validate(node);
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object object) throws Exception {
        Class<?> cls = object.getClass();
        Label label = this.group.getLabel(cls);
        if (label == null) {
            throw new UnionException("Value of %s not declared in %s with annotation %s", cls, this.type, this.group);
        }
        write(node, object, label);
    }

    private void write(OutputNode node, Object object, Label label) throws Exception {
        label.getConverter(this.context).write(node, object);
    }
}
