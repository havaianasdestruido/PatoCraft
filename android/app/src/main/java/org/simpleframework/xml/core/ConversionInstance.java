package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ConversionInstance implements Instance {
    private final Context context;
    private final Class convert;
    private final Value value;

    public ConversionInstance(Context context, Value value, Class convert) throws Exception {
        this.context = context;
        this.convert = convert;
        this.value = value;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object getInstance() throws Exception {
        if (this.value.isReference()) {
            return this.value.getValue();
        }
        Object created = getInstance(this.convert);
        if (created != null) {
            setInstance(created);
            return created;
        }
        return created;
    }

    public Object getInstance(Class type) throws Exception {
        Instance value = this.context.getInstance(type);
        Object object = value.getInstance();
        return object;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object setInstance(Object object) throws Exception {
        if (this.value != null) {
            this.value.setValue(object);
        }
        return object;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Class getType() {
        return this.convert;
    }

    @Override // org.simpleframework.xml.core.Instance
    public boolean isReference() {
        return this.value.isReference();
    }
}
