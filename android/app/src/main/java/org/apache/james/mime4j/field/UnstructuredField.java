package org.apache.james.mime4j.field;

import org.apache.james.mime4j.codec.DecoderUtil;
import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UnstructuredField extends AbstractField {
    static final FieldParser PARSER = new FieldParser() { // from class: org.apache.james.mime4j.field.UnstructuredField.1
        @Override // org.apache.james.mime4j.field.FieldParser
        public ParsedField parse(String name, String body, ByteSequence raw) {
            return new UnstructuredField(name, body, raw);
        }
    };
    private boolean parsed;
    private String value;

    UnstructuredField(String name, String body, ByteSequence raw) {
        super(name, body, raw);
        this.parsed = false;
    }

    public String getValue() {
        if (!this.parsed) {
            parse();
        }
        return this.value;
    }

    private void parse() {
        String body = getBody();
        this.value = DecoderUtil.decodeEncodedWords(body);
        this.parsed = true;
    }
}
