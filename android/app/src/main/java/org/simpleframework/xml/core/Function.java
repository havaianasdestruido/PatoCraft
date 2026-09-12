package org.simpleframework.xml.core;

import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Function {
    private final boolean contextual;
    private final Method method;

    public Function(Method method) {
        this(method, false);
    }

    public Function(Method method, boolean contextual) {
        this.contextual = contextual;
        this.method = method;
    }

    public Object call(Context context, Object source) throws Exception {
        if (source != null) {
            Session session = context.getSession();
            Map table = session.getMap();
            return this.contextual ? this.method.invoke(source, table) : this.method.invoke(source, new Object[0]);
        }
        return null;
    }
}
