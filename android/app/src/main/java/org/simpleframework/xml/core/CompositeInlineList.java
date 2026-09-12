package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeInlineList implements Repeater {
    private final Type entry;
    private final CollectionFactory factory;
    private final String name;
    private final Traverser root;
    private final Type type;

    public CompositeInlineList(Context context, Type type, Type entry, String name) {
        this.factory = new CollectionFactory(context, type);
        this.root = new Traverser(context);
        this.entry = entry;
        this.type = type;
        this.name = name;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Object value = this.factory.getInstance();
        Collection list = (Collection) value;
        if (list != null) {
            return read(node, list);
        }
        return null;
    }

    @Override // org.simpleframework.xml.core.Repeater, org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object value) throws Exception {
        Collection list = (Collection) value;
        return list != null ? read(node, list) : read(node);
    }

    private Object read(InputNode node, Collection list) throws Exception {
        InputNode from = node.getParent();
        String name = node.getName();
        while (node != null) {
            Class type = this.entry.getType();
            Object item = read(node, type);
            if (item != null) {
                list.add(item);
            }
            node = from.getNext(name);
        }
        return list;
    }

    private Object read(InputNode node, Class expect) throws Exception {
        Object item = this.root.read(node, expect);
        Class<?> cls = item.getClass();
        Class actual = this.entry.getType();
        if (!actual.isAssignableFrom(cls)) {
            throw new PersistenceException("Entry %s does not match %s for %s", cls, this.entry, this.type);
        }
        return item;
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        InputNode from = node.getParent();
        Class type = this.entry.getType();
        String name = node.getName();
        while (node != null) {
            boolean valid = this.root.validate(node, type);
            if (!valid) {
                return false;
            }
            node = from.getNext(name);
        }
        return true;
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object source) throws Exception {
        Collection list = (Collection) source;
        OutputNode parent = node.getParent();
        if (!node.isCommitted()) {
            node.remove();
        }
        write(parent, list);
    }

    public void write(OutputNode node, Collection list) throws Exception {
        for (Object item : list) {
            if (item != null) {
                Class expect = this.entry.getType();
                Class<?> cls = item.getClass();
                if (!expect.isAssignableFrom(cls)) {
                    throw new PersistenceException("Entry %s does not match %s for %s", cls, expect, this.type);
                }
                this.root.write(node, item, expect, this.name);
            }
        }
    }
}
