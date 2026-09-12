package org.simpleframework.xml.core;

import java.util.Collections;
import java.util.Map;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeMapUnion implements Repeater {
    private final Context context;
    private final LabelMap elements;
    private final Group group;
    private final Expression path;
    private final Style style;
    private final Type type;

    public CompositeMapUnion(Context context, Group group, Expression path, Type type) throws Exception {
        this.elements = group.getElements();
        this.style = context.getStyle();
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

    @Override // org.simpleframework.xml.core.Repeater, org.simpleframework.xml.core.Converter
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
    public void write(OutputNode node, Object source) throws Exception {
        Map map = (Map) source;
        if (this.group.isInline()) {
            if (!map.isEmpty()) {
                write(node, map);
                return;
            } else {
                if (!node.isCommitted()) {
                    node.remove();
                    return;
                }
                return;
            }
        }
        write(node, map);
    }

    private void write(OutputNode node, Map map) throws Exception {
        for (Object key : map.keySet()) {
            Object item = map.get(key);
            if (item != null) {
                Class<?> cls = item.getClass();
                Label label = this.group.getLabel(cls);
                if (label == null) {
                    throw new UnionException("Value of %s not declared in %s with annotation %s", cls, this.type, this.group);
                }
                write(node, key, item, label);
            }
        }
    }

    private void write(OutputNode node, Object key, Object item, Label label) throws Exception {
        Converter converter = label.getConverter(this.context);
        Map map = Collections.singletonMap(key, item);
        if (!label.isInline()) {
            String name = label.getName();
            String root = this.style.getElement(name);
            if (!node.isCommitted()) {
                node.setName(root);
            }
        }
        converter.write(node, map);
    }
}
