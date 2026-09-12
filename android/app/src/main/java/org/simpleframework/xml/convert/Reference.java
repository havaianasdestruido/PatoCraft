package org.simpleframework.xml.convert;

import org.simpleframework.xml.strategy.Value;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Reference implements Value {
    private Class actual;
    private Object data;
    private Value value;

    public Reference(Value value, Object data, Class actual) {
        this.actual = actual;
        this.value = value;
        this.data = data;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public int getLength() {
        return 0;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Class getType() {
        return this.data != null ? this.data.getClass() : this.actual;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Object getValue() {
        return this.data;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public boolean isReference() {
        return true;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public void setValue(Object data) {
        if (this.value != null) {
            this.value.setValue(data);
        }
        this.data = data;
    }
}
