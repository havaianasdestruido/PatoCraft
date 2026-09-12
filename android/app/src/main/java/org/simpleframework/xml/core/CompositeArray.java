package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeArray implements Converter {
    private final Type entry;
    private final ArrayFactory factory;
    private final String parent;
    private final Traverser root;
    private final Type type;

    public CompositeArray(Context context, Type type, Type entry, String parent) {
        this.factory = new ArrayFactory(context, type);
        this.root = new Traverser(context);
        this.parent = parent;
        this.entry = entry;
        this.type = type;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Instance type = this.factory.getInstance(node);
        Object list = type.getInstance();
        if (!type.isReference()) {
            return read(node, list);
        }
        return list;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object list) throws Exception {
        int length = Array.getLength(list);
        int pos = 0;
        while (true) {
            Position line = node.getPosition();
            InputNode next = node.getNext();
            if (next == null) {
                return list;
            }
            if (pos >= length) {
                throw new ElementException("Array length missing or incorrect for %s at %s", this.type, line);
            }
            read(next, list, pos);
            pos++;
        }
    }

    private void read(InputNode node, Object list, int index) throws Exception {
        Class type = this.entry.getType();
        Object value = null;
        if (!node.isEmpty()) {
            value = this.root.read(node, type);
        }
        Array.set(list, index, value);
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
        while (true) {
            InputNode next = node.getNext();
            if (next == null) {
                return true;
            }
            if (!next.isEmpty()) {
                this.root.validate(next, type);
            }
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object source) throws Exception {
        int size = Array.getLength(source);
        for (int i = 0; i < size; i++) {
            Object item = Array.get(source, i);
            Class type = this.entry.getType();
            this.root.write(node, item, type, this.parent);
        }
        node.commit();
    }
}
