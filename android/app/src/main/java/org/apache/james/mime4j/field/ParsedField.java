package org.apache.james.mime4j.field;

import org.apache.james.mime4j.parser.Field;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ParsedField extends Field {
    ParseException getParseException();

    boolean isValidField();
}
