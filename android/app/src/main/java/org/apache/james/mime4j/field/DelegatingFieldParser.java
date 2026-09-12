package org.apache.james.mime4j.field;

import java.util.HashMap;
import java.util.Map;
import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DelegatingFieldParser implements FieldParser {
    private Map<String, FieldParser> parsers = new HashMap();
    private FieldParser defaultParser = UnstructuredField.PARSER;

    public void setFieldParser(String name, FieldParser parser) {
        this.parsers.put(name.toLowerCase(), parser);
    }

    public FieldParser getParser(String name) {
        FieldParser field = this.parsers.get(name.toLowerCase());
        if (field == null) {
            return this.defaultParser;
        }
        return field;
    }

    @Override // org.apache.james.mime4j.field.FieldParser
    public ParsedField parse(String name, String body, ByteSequence raw) {
        FieldParser parser = getParser(name);
        return parser.parse(name, body, raw);
    }
}
