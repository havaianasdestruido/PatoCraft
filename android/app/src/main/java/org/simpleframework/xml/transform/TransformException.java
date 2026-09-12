package org.simpleframework.xml.transform;

import org.simpleframework.xml.core.PersistenceException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TransformException extends PersistenceException {
    public TransformException(String text, Object... list) {
        super(String.format(text, list), new Object[0]);
    }

    public TransformException(Throwable cause, String text, Object... list) {
        super(String.format(text, list), cause);
    }
}
