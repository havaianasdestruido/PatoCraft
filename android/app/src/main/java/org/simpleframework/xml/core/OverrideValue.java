package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OverrideValue implements Value {
    private final Class type;
    private final Value value;

    public OverrideValue(Value value, Class type) {
        this.value = value;
        this.type = type;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Object getValue() {
        return this.value.getValue();
    }

    @Override // org.simpleframework.xml.strategy.Value
    public void setValue(Object instance) {
        this.value.setValue(instance);
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public int getLength() {
        return this.value.getLength();
    }

    @Override // org.simpleframework.xml.strategy.Value
    public boolean isReference() {
        return this.value.isReference();
    }
}
