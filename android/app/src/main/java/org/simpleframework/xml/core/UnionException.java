package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UnionException extends PersistenceException {
    public UnionException(String text, Object... list) {
        super(String.format(text, list), new Object[0]);
    }
}
