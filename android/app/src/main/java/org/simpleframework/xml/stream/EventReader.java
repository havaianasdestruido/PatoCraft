package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
interface EventReader {
    EventNode next() throws Exception;

    EventNode peek() throws Exception;
}
