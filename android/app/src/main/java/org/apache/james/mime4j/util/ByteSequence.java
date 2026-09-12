package org.apache.james.mime4j.util;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ByteSequence {
    public static final ByteSequence EMPTY = new EmptyByteSequence();

    byte byteAt(int i);

    int length();

    byte[] toByteArray();
}
