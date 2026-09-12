package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
interface Extractor<T extends Annotation> {
    T[] getAnnotations() throws Exception;

    Label getLabel(T t) throws Exception;

    Class getType(T t) throws Exception;
}
