package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface Transform<T> {
    T read(String str) throws Exception;

    String write(T t) throws Exception;
}
