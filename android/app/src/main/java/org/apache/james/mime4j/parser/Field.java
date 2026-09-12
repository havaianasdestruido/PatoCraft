package org.apache.james.mime4j.parser;

import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface Field {
    String getBody();

    String getName();

    ByteSequence getRaw();
}
