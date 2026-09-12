package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ElementException extends PersistenceException {
    public ElementException(String text, Object... list) {
        super(text, list);
    }

    public ElementException(Throwable cause, String text, Object... list) {
        super(cause, text, list);
    }
}
