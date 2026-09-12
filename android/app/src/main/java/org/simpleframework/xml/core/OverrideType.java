package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OverrideType implements Type {
    private final Class override;
    private final Type type;

    public OverrideType(Type type, Class override) {
        this.override = override;
        this.type = type;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.type.getAnnotation(cls);
    }

    @Override // org.simpleframework.xml.strategy.Type
    public Class getType() {
        return this.override;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public String toString() {
        return this.type.toString();
    }
}
