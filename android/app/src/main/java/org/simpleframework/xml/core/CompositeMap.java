package org.simpleframework.xml.core;

import java.util.Map;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeMap implements Converter {
    private final Entry entry;
    private final MapFactory factory;
    private final Converter key;
    private final Style style;
    private final Converter value;

    public CompositeMap(Context context, Entry entry, Type type) throws Exception {
        this.factory = new MapFactory(context, type);
        this.value = entry.getValue(context);
        this.key = entry.getKey(context);
        this.style = context.getStyle();
        this.entry = entry;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Instance type = this.factory.getInstance(node);
        Object map = type.getInstance();
        if (!type.isReference()) {
            return populate(node, map);
        }
        return map;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object result) throws Exception {
        Instance type = this.factory.getInstance(node);
        if (type.isReference()) {
            return type.getInstance();
        }
        type.setInstance(result);
        if (result != null) {
            return populate(node, result);
        }
        return result;
    }

    private Object populate(InputNode node, Object result) throws Exception {
        Map map = (Map) result;
        while (true) {
            InputNode next = node.getNext();
            if (next == null) {
                return map;
            }
            Object index = this.key.read(next);
            Object item = this.value.read(next);
            map.put(index, item);
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        Instance value = this.factory.getInstance(node);
        if (value.isReference()) {
            return true;
        }
        value.setInstance(null);
        Class type = value.getType();
        return validate(node, type);
    }

    private boolean validate(InputNode node, Class type) throws Exception {
        InputNode next;
        do {
            next = node.getNext();
            if (next == null) {
                return true;
            }
            if (!this.key.validate(next)) {
                return false;
            }
        } while (this.value.validate(next));
        return false;
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object source) throws Exception {
        Map map = (Map) source;
        for (Object index : map.keySet()) {
            String root = this.entry.getEntry();
            String name = this.style.getElement(root);
            OutputNode next = node.getChild(name);
            Object item = map.get(index);
            this.key.write(next, index);
            this.value.write(next, item);
        }
    }
}
