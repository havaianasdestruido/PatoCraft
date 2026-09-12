package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.Map;
import org.simpleframework.xml.stream.Node;
import org.simpleframework.xml.stream.NodeMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TreeStrategy implements Strategy {
    private final String label;
    private final String length;
    private final Loader loader;

    public TreeStrategy() {
        this(Name.LABEL, Name.LENGTH);
    }

    public TreeStrategy(String label, String length) {
        this.loader = new Loader();
        this.length = length;
        this.label = label;
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public Value read(Type type, NodeMap node, Map map) throws Exception {
        Class actual = readValue(type, node);
        Class expect = type.getType();
        if (expect.isArray()) {
            return readArray(actual, node);
        }
        if (expect != actual) {
            return new ObjectValue(actual);
        }
        return null;
    }

    private Value readArray(Class type, NodeMap node) throws Exception {
        Node entry = node.remove(this.length);
        int size = 0;
        if (entry != null) {
            String value = entry.getValue();
            size = Integer.parseInt(value);
        }
        return new ArrayValue(type, size);
    }

    private Class readValue(Type type, NodeMap node) throws Exception {
        Node entry = node.remove(this.label);
        Class<?> type2 = type.getType();
        if (type2.isArray()) {
            type2 = type2.getComponentType();
        }
        if (entry != null) {
            String name = entry.getValue();
            Class expect = this.loader.load(name);
            return expect;
        }
        return type2;
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public boolean write(Type type, Object value, NodeMap node, Map map) {
        Class<?> cls = value.getClass();
        Class<?> type2 = type.getType();
        Class<?> clsWriteArray = cls;
        if (cls.isArray()) {
            clsWriteArray = writeArray(type2, value, node);
        }
        if (cls != type2) {
            node.put(this.label, clsWriteArray.getName());
            return false;
        }
        return false;
    }

    private Class writeArray(Class field, Object value, NodeMap node) {
        int size = Array.getLength(value);
        if (this.length != null) {
            node.put(this.length, String.valueOf(size));
        }
        return field.getComponentType();
    }
}
