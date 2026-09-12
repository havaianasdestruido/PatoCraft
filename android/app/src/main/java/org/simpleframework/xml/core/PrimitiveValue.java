package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PrimitiveValue implements Converter {
    private final Context context;
    private final Entry entry;
    private final PrimitiveFactory factory;
    private final Primitive root;
    private final Style style;
    private final Type type;

    public PrimitiveValue(Context context, Entry entry, Type type) {
        this.factory = new PrimitiveFactory(context, type);
        this.root = new Primitive(context, type);
        this.style = context.getStyle();
        this.context = context;
        this.entry = entry;
        this.type = type;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Class expect = this.type.getType();
        String name = this.entry.getValue();
        if (this.entry.isInline()) {
            return readAttribute(node, name);
        }
        if (name == null) {
            name = this.context.getName(expect);
        }
        return readElement(node, name);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object value) throws Exception {
        Class expect = this.type.getType();
        if (value != null) {
            throw new PersistenceException("Can not read value of %s for %s", expect, this.entry);
        }
        return read(node);
    }

    private Object readElement(InputNode node, String key) throws Exception {
        String name = this.style.getAttribute(key);
        InputNode child = node.getNext(name);
        if (child == null) {
            return null;
        }
        return this.root.read(child);
    }

    private Object readAttribute(InputNode node, String name) throws Exception {
        if (name != null) {
            node = node.getAttribute(this.style.getAttribute(name));
        }
        if (node == null) {
            return null;
        }
        return this.root.read(node);
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        Class expect = this.type.getType();
        String name = this.entry.getValue();
        if (this.entry.isInline()) {
            return validateAttribute(node, name);
        }
        if (name == null) {
            name = this.context.getName(expect);
        }
        return validateElement(node, name);
    }

    private boolean validateElement(InputNode node, String key) throws Exception {
        String name = this.style.getAttribute(key);
        InputNode child = node.getNext(name);
        if (child == null) {
            return true;
        }
        return this.root.validate(node);
    }

    private boolean validateAttribute(InputNode node, String key) throws Exception {
        if (key != null) {
            node = node.getNext(this.style.getAttribute(key));
        }
        if (node == null) {
            return true;
        }
        return this.root.validate(node);
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object item) throws Exception {
        Class expect = this.type.getType();
        String name = this.entry.getValue();
        if (!this.entry.isInline()) {
            if (name == null) {
                name = this.context.getName(expect);
            }
            writeElement(node, item, name);
            return;
        }
        writeAttribute(node, item, name);
    }

    private void writeElement(OutputNode node, Object item, String key) throws Exception {
        String name = this.style.getAttribute(key);
        OutputNode child = node.getChild(name);
        if (item != null && !isOverridden(child, item)) {
            this.root.write(child, item);
        }
    }

    private void writeAttribute(OutputNode node, Object item, String key) throws Exception {
        if (item != null) {
            if (key != null) {
                node = node.setAttribute(this.style.getAttribute(key), null);
            }
            this.root.write(node, item);
        }
    }

    private boolean isOverridden(OutputNode node, Object value) throws Exception {
        return this.factory.setOverride(this.type, value, node);
    }
}
