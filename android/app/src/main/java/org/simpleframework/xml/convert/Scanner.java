package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
interface Scanner {
    <T extends Annotation> T scan(Class<T> cls);
}
