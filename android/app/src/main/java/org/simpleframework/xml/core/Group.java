package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
interface Group {
    LabelMap getElements() throws Exception;

    Label getLabel(Class cls);

    Label getText() throws Exception;

    boolean isInline();

    boolean isTextList();

    String toString();
}
