package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class InstanceFactory {
    private final Cache<Constructor> cache = new ConcurrentCache();

    public Instance getInstance(Value value) {
        return new ValueInstance(value);
    }

    public Instance getInstance(Class type) {
        return new ClassInstance(type);
    }

    protected Object getObject(Class type) throws Exception {
        Constructor method = this.cache.fetch(type);
        if (method == null) {
            method = type.getDeclaredConstructor(new Class[0]);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            this.cache.cache(type, method);
        }
        return method.newInstance(new Object[0]);
    }

    private class ValueInstance implements Instance {
        private final Class type;
        private final Value value;

        public ValueInstance(Value value) {
            this.type = value.getType();
            this.value = value;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object getInstance() throws Exception {
            if (this.value.isReference()) {
                return this.value.getValue();
            }
            Object object = InstanceFactory.this.getObject(this.type);
            if (this.value != null) {
                this.value.setValue(object);
                return object;
            }
            return object;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object setInstance(Object object) {
            if (this.value != null) {
                this.value.setValue(object);
            }
            return object;
        }

        @Override // org.simpleframework.xml.core.Instance
        public boolean isReference() {
            return this.value.isReference();
        }

        @Override // org.simpleframework.xml.core.Instance
        public Class getType() {
            return this.type;
        }
    }

    private class ClassInstance implements Instance {
        private Class type;
        private Object value;

        public ClassInstance(Class type) {
            this.type = type;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object getInstance() throws Exception {
            if (this.value == null) {
                this.value = InstanceFactory.this.getObject(this.type);
            }
            return this.value;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object setInstance(Object value) throws Exception {
            this.value = value;
            return value;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Class getType() {
            return this.type;
        }

        @Override // org.simpleframework.xml.core.Instance
        public boolean isReference() {
            return false;
        }
    }
}
