package org.apache.james.mime4j.field;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;
import org.apache.james.mime4j.util.MimeUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractField implements ParsedField {
    private static final Pattern FIELD_NAME_PATTERN = Pattern.compile("^([\\x21-\\x39\\x3b-\\x7e]+):");
    private static final DefaultFieldParser parser = new DefaultFieldParser();
    private final String body;
    private final String name;
    private final ByteSequence raw;

    protected AbstractField(String name, String body, ByteSequence raw) {
        this.name = name;
        this.body = body;
        this.raw = raw;
    }

    public static ParsedField parse(ByteSequence raw) throws MimeException {
        String rawStr = ContentUtil.decode(raw);
        return parse(raw, rawStr);
    }

    public static ParsedField parse(String rawStr) throws MimeException {
        ByteSequence raw = ContentUtil.encode(rawStr);
        return parse(raw, rawStr);
    }

    public static DefaultFieldParser getParser() {
        return parser;
    }

    @Override // org.apache.james.mime4j.parser.Field
    public String getName() {
        return this.name;
    }

    @Override // org.apache.james.mime4j.parser.Field
    public ByteSequence getRaw() {
        return this.raw;
    }

    @Override // org.apache.james.mime4j.parser.Field
    public String getBody() {
        return this.body;
    }

    @Override // org.apache.james.mime4j.field.ParsedField
    public boolean isValidField() {
        return getParseException() == null;
    }

    @Override // org.apache.james.mime4j.field.ParsedField
    public ParseException getParseException() {
        return null;
    }

    public String toString() {
        return this.name + ": " + this.body;
    }

    private static ParsedField parse(ByteSequence raw, String rawStr) throws MimeException {
        String unfolded = MimeUtil.unfold(rawStr);
        Matcher fieldMatcher = FIELD_NAME_PATTERN.matcher(unfolded);
        if (!fieldMatcher.find()) {
            throw new MimeException("Invalid field in string");
        }
        String name = fieldMatcher.group(1);
        String body = unfolded.substring(fieldMatcher.end());
        if (body.length() > 0 && body.charAt(0) == ' ') {
            body = body.substring(1);
        }
        return parser.parse(name, body, raw);
    }
}
