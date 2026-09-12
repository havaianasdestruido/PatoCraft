package org.simpleframework.xml.core;

import java.util.Map;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.Mode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeInlineMap implements Repeater {
    private final Entry entry;
    private final MapFactory factory;
    private final Converter key;
    private final Style style;
    private final Converter value;

    public CompositeInlineMap(Context context, Entry entry, Type type) throws Exception {
        this.factory = new MapFactory(context, type);
        this.value = entry.getValue(context);
        this.key = entry.getKey(context);
        this.style = context.getStyle();
        this.entry = entry;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Object value = this.factory.getInstance();
        Map table = (Map) value;
        if (table != null) {
            return read(node, table);
        }
        return null;
    }

    @Override // org.simpleframework.xml.core.Repeater, org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object value) throws Exception {
        Map map = (Map) value;
        return map != null ? read(node, map) : read(node);
    }

    private Object read(InputNode node, Map map) throws Exception {
        InputNode from = node.getParent();
        String name = node.getName();
        while (node != null) {
            Object index = this.key.read(node);
            Object item = this.value.read(node);
            if (map != null) {
                map.put(index, item);
            }
            node = from.getNext(name);
        }
        return map;
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        InputNode from = node.getParent();
        String name = node.getName();
        while (node != null) {
            if (!this.key.validate(node) || !this.value.validate(node)) {
                return false;
            }
            node = from.getNext(name);
        }
        return true;
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object source) throws Exception {
        OutputNode parent = node.getParent();
        Mode mode = node.getMode();
        Map map = (Map) source;
        if (!node.isCommitted()) {
            node.remove();
        }
        write(parent, map, mode);
    }

    private void write(OutputNode node, Map map, Mode mode) throws Exception {
        String root = this.entry.getEntry();
        String name = this.style.getElement(root);
        for (Object index : map.keySet()) {
            OutputNode next = node.getChild(name);
            Object item = map.get(index);
            next.setMode(mode);
            this.key.write(next, index);
            this.value.write(next, item);
        }
    }
}
