package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CompositeValue implements Converter {
    private final Context context;
    private final Entry entry;
    private final Traverser root;
    private final Style style;
    private final Type type;

    public CompositeValue(Context context, Entry entry, Type type) throws Exception {
        this.root = new Traverser(context);
        this.style = context.getStyle();
        this.context = context;
        this.entry = entry;
        this.type = type;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        InputNode next = node.getNext();
        Class expect = this.type.getType();
        if (next == null || next.isEmpty()) {
            return null;
        }
        return this.root.read(next, expect);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object value) throws Exception {
        Class expect = this.type.getType();
        if (value != null) {
            throw new PersistenceException("Can not read value of %s for %s", expect, this.entry);
        }
        return read(node);
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        Class expect = this.type.getType();
        String name = this.entry.getValue();
        if (name == null) {
            name = this.context.getName(expect);
        }
        return validate(node, name);
    }

    private boolean validate(InputNode node, String key) throws Exception {
        String name = this.style.getElement(key);
        InputNode next = node.getNext(name);
        Class expect = this.type.getType();
        if (next == null || next.isEmpty()) {
            return true;
        }
        return this.root.validate(next, expect);
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object item) throws Exception {
        Class expect = this.type.getType();
        String key = this.entry.getValue();
        if (key == null) {
            key = this.context.getName(expect);
        }
        String name = this.style.getElement(key);
        this.root.write(node, item, expect, name);
    }
}
