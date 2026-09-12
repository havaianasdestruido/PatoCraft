package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.IdentityHashMap;
import org.simpleframework.xml.stream.NodeMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class WriteGraph extends IdentityHashMap<Object, String> {
    private final String label;
    private final String length;
    private final String mark;
    private final String refer;

    public WriteGraph(Contract contract) {
        this.refer = contract.getReference();
        this.mark = contract.getIdentity();
        this.length = contract.getLength();
        this.label = contract.getLabel();
    }

    public boolean write(Type type, Object value, NodeMap node) {
        Class<?> cls = value.getClass();
        Class<?> type2 = type.getType();
        Class<?> clsWriteArray = cls;
        if (cls.isArray()) {
            clsWriteArray = writeArray(cls, value, node);
        }
        if (cls != type2) {
            node.put(this.label, clsWriteArray.getName());
        }
        return writeReference(value, node);
    }

    private boolean writeReference(Object value, NodeMap node) {
        String name = get(value);
        int size = size();
        if (name != null) {
            node.put(this.refer, name);
            return true;
        }
        String unique = String.valueOf(size);
        node.put(this.mark, unique);
        put(value, unique);
        return false;
    }

    private Class writeArray(Class field, Object value, NodeMap node) {
        int size = Array.getLength(value);
        if (!containsKey(value)) {
            node.put(this.length, String.valueOf(size));
        }
        return field.getComponentType();
    }
}
