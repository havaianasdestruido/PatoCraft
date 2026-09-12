package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class InvalidFormatException extends TransformException {
    public InvalidFormatException(String text, Object... list) {
        super(String.format(text, list), new Object[0]);
    }

    public InvalidFormatException(Throwable cause, String text, Object... list) {
        super(String.format(text, list), cause);
    }
}
