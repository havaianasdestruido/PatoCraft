package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ScannerBuilder extends ConcurrentCache<Scanner> {
    public Scanner build(Class<?> type) {
        Scanner scanner = (Scanner) get(type);
        if (scanner == null) {
            Scanner scanner2 = new Entry(type);
            put(type, scanner2);
            return scanner2;
        }
        return scanner;
    }

    private static class Entry extends ConcurrentCache<Annotation> implements Scanner {
        private final Class root;

        public Entry(Class root) {
            this.root = root;
        }

        @Override // org.simpleframework.xml.convert.Scanner
        public <T extends Annotation> T scan(Class<T> type) {
            if (!contains(type)) {
                Annotation annotationFind = find(type);
                if (type != null && annotationFind != null) {
                    put(type, annotationFind);
                }
            }
            return (T) get(type);
        }

        private <T extends Annotation> T find(Class<T> cls) {
            for (Class superclass = this.root; superclass != null; superclass = superclass.getSuperclass()) {
                T t = (T) superclass.getAnnotation(cls);
                if (t != null) {
                    return t;
                }
            }
            return null;
        }
    }
}
