package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ValueRequiredException extends PersistenceException {
    public ValueRequiredException(String text, Object... list) {
        super(text, list);
    }

    public ValueRequiredException(Throwable cause, String text, Object... list) {
        super(cause, text, list);
    }
}
