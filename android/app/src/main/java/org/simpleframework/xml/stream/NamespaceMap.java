package org.simpleframework.xml.stream;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface NamespaceMap extends Iterable<String> {
    String getPrefix();

    String getPrefix(String str);

    String getReference(String str);

    @Override // java.lang.Iterable
    Iterator<String> iterator();

    String setReference(String str);

    String setReference(String str, String str2);
}
