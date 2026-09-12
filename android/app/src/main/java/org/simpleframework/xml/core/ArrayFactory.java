package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.Position;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ArrayFactory extends Factory {
    public ArrayFactory(Context context, Type type) {
        super(context, type);
    }

    @Override // org.simpleframework.xml.core.Factory
    public Object getInstance() throws Exception {
        Class type = getComponentType();
        if (type != null) {
            return Array.newInstance((Class<?>) type, 0);
        }
        return null;
    }

    public Instance getInstance(InputNode node) throws Exception {
        Position line = node.getPosition();
        Value value = getOverride(node);
        if (value == null) {
            throw new ElementException("Array length required for %s at %s", this.type, line);
        }
        Class type = value.getType();
        return getInstance(value, type);
    }

    private Instance getInstance(Value value, Class entry) throws Exception {
        Class expect = getComponentType();
        if (!expect.isAssignableFrom(entry)) {
            throw new InstantiationException("Array of type %s cannot hold %s for %s", expect, entry, this.type);
        }
        return new ArrayInstance(value);
    }

    private Class getComponentType() throws Exception {
        Class expect = getType();
        if (!expect.isArray()) {
            throw new InstantiationException("The %s not an array for %s", expect, this.type);
        }
        return expect.getComponentType();
    }
}
