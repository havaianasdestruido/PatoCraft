package org.simpleframework.xml.strategy;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Allocate implements Value {
    private String key;
    private Map map;
    private Value value;

    public Allocate(Value value, Map map, String key) {
        this.value = value;
        this.map = map;
        this.key = key;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Object getValue() {
        return this.map.get(this.key);
    }

    @Override // org.simpleframework.xml.strategy.Value
    public void setValue(Object object) {
        if (this.key != null) {
            this.map.put(this.key, object);
        }
        this.value.setValue(object);
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Class getType() {
        return this.value.getType();
    }

    @Override // org.simpleframework.xml.strategy.Value
    public int getLength() {
        return this.value.getLength();
    }

    @Override // org.simpleframework.xml.strategy.Value
    public boolean isReference() {
        return false;
    }
}
