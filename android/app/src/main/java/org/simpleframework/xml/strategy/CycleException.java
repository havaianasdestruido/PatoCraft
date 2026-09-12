package org.simpleframework.xml.strategy;

import org.simpleframework.xml.core.PersistenceException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CycleException extends PersistenceException {
    public CycleException(String text, Object... list) {
        super(text, list);
    }

    public CycleException(Throwable cause, String text, Object... list) {
        super(cause, text, list);
    }
}
