package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PrimitiveFactory extends Factory {
    public PrimitiveFactory(Context context, Type type) {
        super(context, type);
    }

    public PrimitiveFactory(Context context, Type type, Class override) {
        super(context, type, override);
    }

    public Instance getInstance(InputNode node) throws Exception {
        Value value = getOverride(node);
        Class type = getType();
        return value == null ? this.context.getInstance(type) : new ObjectInstance(this.context, value);
    }

    public Object getInstance(String text, Class type) throws Exception {
        return this.support.read(text, type);
    }

    public String getText(Object source) throws Exception {
        Class<?> cls = source.getClass();
        return cls.isEnum() ? this.support.write(source, cls) : this.support.write(source, cls);
    }
}
