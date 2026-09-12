package org.apache.james.mime4j.field;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.field.address.AddressList;
import org.apache.james.mime4j.field.address.Mailbox;
import org.apache.james.mime4j.field.address.MailboxList;
import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MailboxField extends AbstractField {
    private Mailbox mailbox;
    private org.apache.james.mime4j.field.address.parser.ParseException parseException;
    private boolean parsed;
    private static Log log = LogFactory.getLog(MailboxField.class);
    static final FieldParser PARSER = new FieldParser() { // from class: org.apache.james.mime4j.field.MailboxField.1
        @Override // org.apache.james.mime4j.field.FieldParser
        public ParsedField parse(String name, String body, ByteSequence raw) {
            return new MailboxField(name, body, raw);
        }
    };

    MailboxField(String name, String body, ByteSequence raw) {
        super(name, body, raw);
        this.parsed = false;
    }

    public Mailbox getMailbox() {
        if (!this.parsed) {
            parse();
        }
        return this.mailbox;
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
            MailboxList mailboxList = AddressList.parse(body).flatten();
            if (mailboxList.size() > 0) {
                this.mailbox = mailboxList.get(0);
            }
        } catch (org.apache.james.mime4j.field.address.parser.ParseException e) {
            if (log.isDebugEnabled()) {
                log.debug("Parsing value '" + body + "': " + e.getMessage());
            }
            this.parseException = e;
        }
        this.parsed = true;
    }
}
