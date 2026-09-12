package org.apache.james.mime4j.field;

import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface FieldParser {
    ParsedField parse(String str, String str2, ByteSequence byteSequence);
}
