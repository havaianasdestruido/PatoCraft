package org.apache.james.mime4j.field;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.field.address.AddressList;
import org.apache.james.mime4j.util.ByteSequence;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AddressListField extends AbstractField {
    private AddressList addressList;
    private org.apache.james.mime4j.field.address.parser.ParseException parseException;
    private boolean parsed;
    private static Log log = LogFactory.getLog(AddressListField.class);
    static final FieldParser PARSER = new FieldParser() { // from class: org.apache.james.mime4j.field.AddressListField.1
        @Override // org.apache.james.mime4j.field.FieldParser
        public ParsedField parse(String name, String body, ByteSequence raw) {
            return new AddressListField(name, body, raw);
        }
    };

    AddressListField(String name, String body, ByteSequence raw) {
        super(name, body, raw);
        this.parsed = false;
    }

    public AddressList getAddressList() {
        if (!this.parsed) {
            parse();
        }
        return this.addressList;
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
            this.addressList = AddressList.parse(body);
        } catch (org.apache.james.mime4j.field.address.parser.ParseException e) {
            if (log.isDebugEnabled()) {
                log.debug("Parsing value '" + body + "': " + e.getMessage());
            }
            this.parseException = e;
        }
        this.parsed = true;
    }
}
