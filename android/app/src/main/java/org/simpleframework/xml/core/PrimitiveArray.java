package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PrimitiveArray implements Converter {
    private final Type entry;
    private final ArrayFactory factory;
    private final String parent;
    private final Primitive root;
    private final Type type;

    public PrimitiveArray(Context context, Type type, Type entry, String parent) {
        this.factory = new ArrayFactory(context, type);
        this.root = new Primitive(context, entry);
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
            Array.set(list, pos, this.root.read(next));
            pos++;
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        Instance value = this.factory.getInstance(node);
        if (value.isReference()) {
            return true;
        }
        value.setInstance(null);
        Class expect = value.getType();
        return validate(node, expect);
    }

    private boolean validate(InputNode node, Class type) throws Exception {
        while (true) {
            InputNode next = node.getNext();
            if (next == null) {
                return true;
            }
            this.root.validate(next);
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object source) throws Exception {
        int size = Array.getLength(source);
        for (int i = 0; i < size; i++) {
            OutputNode child = node.getChild(this.parent);
            if (child != null) {
                write(child, source, i);
            } else {
                return;
            }
        }
    }

    private void write(OutputNode node, Object source, int index) throws Exception {
        Object item = Array.get(source, index);
        if (item != null && !isOverridden(node, item)) {
            this.root.write(node, item);
        }
    }

    private boolean isOverridden(OutputNode node, Object value) throws Exception {
        return this.factory.setOverride(this.entry, value, node);
    }
}
