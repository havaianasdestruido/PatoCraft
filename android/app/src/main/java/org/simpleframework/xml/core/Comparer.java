package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Comparer {
    private static final String NAME = "name";
    private final String[] ignore;

    public Comparer() {
        this("name");
    }

    public Comparer(String... ignore) {
        this.ignore = ignore;
    }

    public boolean equals(Annotation left, Annotation right) throws Exception {
        Class<? extends Annotation> clsAnnotationType = left.annotationType();
        Class<? extends Annotation> clsAnnotationType2 = right.annotationType();
        Method[] list = clsAnnotationType.getDeclaredMethods();
        if (!clsAnnotationType.equals(clsAnnotationType2)) {
            return false;
        }
        for (Method method : list) {
            if (!isIgnore(method)) {
                Object value = method.invoke(left, new Object[0]);
                Object other = method.invoke(right, new Object[0]);
                if (!value.equals(other)) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean isIgnore(Method method) {
        String name = method.getName();
        if (this.ignore != null) {
            String[] arr$ = this.ignore;
            for (String value : arr$) {
                if (name.equals(value)) {
                    return true;
                }
            }
        }
        return false;
    }
}
