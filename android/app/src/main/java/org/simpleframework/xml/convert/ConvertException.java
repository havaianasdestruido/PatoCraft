package org.simpleframework.xml.convert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ConvertException extends Exception {
    public ConvertException(String text, Object... list) {
        super(String.format(text, list));
    }
}
