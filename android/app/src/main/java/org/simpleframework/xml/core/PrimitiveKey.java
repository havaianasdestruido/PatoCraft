package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PrimitiveKey implements Converter {
    private final Context context;
    private final Entry entry;
    private final PrimitiveFactory factory;
    private final Primitive root;
    private final Style style;
    private final Type type;

    public PrimitiveKey(Context context, Entry entry, Type type) {
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
        String name = this.entry.getKey();
        if (name == null) {
            name = this.context.getName(expect);
        }
        return !this.entry.isAttribute() ? readElement(node, name) : readAttribute(node, name);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object value) throws Exception {
        Class expect = this.type.getType();
        if (value != null) {
            throw new PersistenceException("Can not read key of %s for %s", expect, this.entry);
        }
        return read(node);
    }

    private Object readAttribute(InputNode node, String key) throws Exception {
        String name = this.style.getAttribute(key);
        InputNode child = node.getAttribute(name);
        if (child == null) {
            return null;
        }
        return this.root.read(child);
    }

    private Object readElement(InputNode node, String key) throws Exception {
        String name = this.style.getElement(key);
        InputNode child = node.getNext(name);
        if (child == null) {
            return null;
        }
        return this.root.read(child);
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        Class expect = this.type.getType();
        String name = this.entry.getKey();
        if (name == null) {
            name = this.context.getName(expect);
        }
        return !this.entry.isAttribute() ? validateElement(node, name) : validateAttribute(node, name);
    }

    private boolean validateAttribute(InputNode node, String key) throws Exception {
        String name = this.style.getElement(key);
        InputNode child = node.getAttribute(name);
        if (child == null) {
            return true;
        }
        return this.root.validate(child);
    }

    private boolean validateElement(InputNode node, String key) throws Exception {
        String name = this.style.getElement(key);
        InputNode child = node.getNext(name);
        if (child == null) {
            return true;
        }
        return this.root.validate(child);
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object item) throws Exception {
        if (!this.entry.isAttribute()) {
            writeElement(node, item);
        } else if (item != null) {
            writeAttribute(node, item);
        }
    }

    private void writeElement(OutputNode node, Object item) throws Exception {
        Class expect = this.type.getType();
        String key = this.entry.getKey();
        if (key == null) {
            key = this.context.getName(expect);
        }
        String name = this.style.getElement(key);
        OutputNode child = node.getChild(name);
        if (item != null && !isOverridden(child, item)) {
            this.root.write(child, item);
        }
    }

    private void writeAttribute(OutputNode node, Object item) throws Exception {
        Class expect = this.type.getType();
        String text = this.factory.getText(item);
        String key = this.entry.getKey();
        if (key == null) {
            key = this.context.getName(expect);
        }
        String name = this.style.getAttribute(key);
        if (text != null) {
            node.setAttribute(name, text);
        }
    }

    private boolean isOverridden(OutputNode node, Object value) throws Exception {
        return this.factory.setOverride(this.type, value, node);
    }
}
