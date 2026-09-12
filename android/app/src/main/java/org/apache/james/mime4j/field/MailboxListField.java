package org.apache.james.mime4j.field;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.field.address.AddressList;
import org.apache.james.mime4j.field.address.MailboxList;
import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MailboxListField extends AbstractField {
    private MailboxList mailboxList;
    private org.apache.james.mime4j.field.address.parser.ParseException parseException;
    private boolean parsed;
    private static Log log = LogFactory.getLog(MailboxListField.class);
    static final FieldParser PARSER = new FieldParser() { // from class: org.apache.james.mime4j.field.MailboxListField.1
        @Override // org.apache.james.mime4j.field.FieldParser
        public ParsedField parse(String name, String body, ByteSequence raw) {
            return new MailboxListField(name, body, raw);
        }
    };

    MailboxListField(String name, String body, ByteSequence raw) {
        super(name, body, raw);
        this.parsed = false;
    }

    public MailboxList getMailboxList() {
        if (!this.parsed) {
            parse();
        }
        return this.mailboxList;
    }

    @Override // org.apache.james.mime4j.field.AbstractField, org.apache.james.mime4j.field.ParsedField
    public org.apache.james.mime4j.field.address.parser.ParseException getParseException() {
        if (!this.parsed) {
            parse();
        }
        return this.parseException;
    }

    private void parse() {
        String body = getBody();
        try {
            this.mailboxList = AddressList.parse(body).flatten();
        } catch (org.apache.james.mime4j.field.address.parser.ParseException e) {
            if (log.isDebugEnabled()) {
                log.debug("Parsing value '" + body + "': " + e.getMessage());
            }
            this.parseException = e;
        }
        this.parsed = true;
    }
}
