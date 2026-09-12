package org.apache.james.mime4j.field;

import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.apache.james.mime4j.codec.EncoderUtil;
import org.apache.james.mime4j.field.address.Address;
import org.apache.james.mime4j.field.address.Mailbox;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;
import org.apache.james.mime4j.util.MimeUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Fields {
    private static final Pattern FIELD_NAME_PATTERN = Pattern.compile("[\\x21-\\x39\\x3b-\\x7e]+");

    private Fields() {
    }

    public static ContentTypeField contentType(String contentType) {
        return (ContentTypeField) parse(ContentTypeField.PARSER, "Content-Type", contentType);
    }

    public static ContentTypeField contentType(String mimeType, Map<String, String> parameters) {
        if (!isValidMimeType(mimeType)) {
            throw new IllegalArgumentException();
        }
        if (parameters == null || parameters.isEmpty()) {
            return (ContentTypeField) parse(ContentTypeField.PARSER, "Content-Type", mimeType);
        }
        StringBuilder sb = new StringBuilder(mimeType);
        for (Map.Entry<String, String> entry : parameters.entrySet()) {
            sb.append("; ");
            sb.append(EncoderUtil.encodeHeaderParameter(entry.getKey(), entry.getValue()));
        }
        String contentType = sb.toString();
        return contentType(contentType);
    }

    public static ContentTransferEncodingField contentTransferEncoding(String contentTransferEncoding) {
        return (ContentTransferEncodingField) parse(ContentTransferEncodingField.PARSER, "Content-Transfer-Encoding", contentTransferEncoding);
    }

    public static ContentDispositionField contentDisposition(String contentDisposition) {
        return (ContentDispositionField) parse(ContentDispositionField.PARSER, "Content-Disposition", contentDisposition);
    }

    public static ContentDispositionField contentDisposition(String dispositionType, Map<String, String> parameters) {
        if (!isValidDispositionType(dispositionType)) {
            throw new IllegalArgumentException();
        }
        if (parameters == null || parameters.isEmpty()) {
            return (ContentDispositionField) parse(ContentDispositionField.PARSER, "Content-Disposition", dispositionType);
        }
        StringBuilder sb = new StringBuilder(dispositionType);
        for (Map.Entry<String, String> entry : parameters.entrySet()) {
            sb.append("; ");
            sb.append(EncoderUtil.encodeHeaderParameter(entry.getKey(), entry.getValue()));
        }
        String contentDisposition = sb.toString();
        return contentDisposition(contentDisposition);
    }

    public static ContentDispositionField contentDisposition(String dispositionType, String filename) {
        return contentDisposition(dispositionType, filename, -1L, null, null, null);
    }

    public static ContentDispositionField contentDisposition(String dispositionType, String filename, long size) {
        return contentDisposition(dispositionType, filename, size, null, null, null);
    }

    public static ContentDispositionField contentDisposition(String dispositionType, String filename, long size, Date creationDate, Date modificationDate, Date readDate) {
        Map<String, String> parameters = new HashMap<>();
        if (filename != null) {
            parameters.put("filename", filename);
        }
        if (size >= 0) {
            parameters.put("size", Long.toString(size));
        }
        if (creationDate != null) {
            parameters.put("creation-date", MimeUtil.formatDate(creationDate, null));
        }
        if (modificationDate != null) {
            parameters.put("modification-date", MimeUtil.formatDate(modificationDate, null));
        }
        if (readDate != null) {
            parameters.put("read-date", MimeUtil.formatDate(readDate, null));
        }
        return contentDisposition(dispositionType, parameters);
    }

    public static DateTimeField date(Date date) {
        return date0(FieldName.DATE, date, null);
    }

    public static DateTimeField date(String fieldName, Date date) {
        checkValidFieldName(fieldName);
        return date0(fieldName, date, null);
    }

    public static DateTimeField date(String fieldName, Date date, TimeZone zone) {
        checkValidFieldName(fieldName);
        return date0(fieldName, date, zone);
    }

    public static Field messageId(String hostname) {
        String fieldValue = MimeUtil.createUniqueMessageId(hostname);
        return parse(UnstructuredField.PARSER, FieldName.MESSAGE_ID, fieldValue);
    }

    public static UnstructuredField subject(String subject) {
        int usedCharacters = FieldName.SUBJECT.length() + 2;
        String fieldValue = EncoderUtil.encodeIfNecessary(subject, EncoderUtil.Usage.TEXT_TOKEN, usedCharacters);
        return (UnstructuredField) parse(UnstructuredField.PARSER, FieldName.SUBJECT, fieldValue);
    }

    public static MailboxField sender(Mailbox mailbox) {
        return mailbox0(FieldName.SENDER, mailbox);
    }

    public static MailboxListField from(Mailbox mailbox) {
        return mailboxList0(FieldName.FROM, Collections.singleton(mailbox));
    }

    public static MailboxListField from(Mailbox... mailboxes) {
        return mailboxList0(FieldName.FROM, Arrays.asList(mailboxes));
    }

    public static MailboxListField from(Iterable<Mailbox> mailboxes) {
        return mailboxList0(FieldName.FROM, mailboxes);
    }

    public static AddressListField to(Address address) {
        return addressList0(FieldName.TO, Collections.singleton(address));
    }

    public static AddressListField to(Address... addresses) {
        return addressList0(FieldName.TO, Arrays.asList(addresses));
    }

    public static AddressListField to(Iterable<Address> addresses) {
        return addressList0(FieldName.TO, addresses);
    }

    public static AddressListField cc(Address address) {
        return addressList0(FieldName.CC, Collections.singleton(address));
    }

    public static AddressListField cc(Address... addresses) {
        return addressList0(FieldName.CC, Arrays.asList(addresses));
    }

    public static AddressListField cc(Iterable<Address> addresses) {
        return addressList0(FieldName.CC, addresses);
    }

    public static AddressListField bcc(Address address) {
        return addressList0(FieldName.BCC, Collections.singleton(address));
    }

    public static AddressListField bcc(Address... addresses) {
        return addressList0(FieldName.BCC, Arrays.asList(addresses));
    }

    public static AddressListField bcc(Iterable<Address> addresses) {
        return addressList0(FieldName.BCC, addresses);
    }

    public static AddressListField replyTo(Address address) {
        return addressList0(FieldName.REPLY_TO, Collections.singleton(address));
    }

    public static AddressListField replyTo(Address... addresses) {
        return addressList0(FieldName.REPLY_TO, Arrays.asList(addresses));
    }

    public static AddressListField replyTo(Iterable<Address> addresses) {
        return addressList0(FieldName.REPLY_TO, addresses);
    }

    public static MailboxField mailbox(String fieldName, Mailbox mailbox) {
        checkValidFieldName(fieldName);
        return mailbox0(fieldName, mailbox);
    }

    public static MailboxListField mailboxList(String fieldName, Iterable<Mailbox> mailboxes) {
        checkValidFieldName(fieldName);
        return mailboxList0(fieldName, mailboxes);
    }

    public static AddressListField addressList(String fieldName, Iterable<Address> addresses) {
        checkValidFieldName(fieldName);
        return addressList0(fieldName, addresses);
    }

    private static DateTimeField date0(String fieldName, Date date, TimeZone zone) {
        String formattedDate = MimeUtil.formatDate(date, zone);
        return (DateTimeField) parse(DateTimeField.PARSER, fieldName, formattedDate);
    }

    private static MailboxField mailbox0(String fieldName, Mailbox mailbox) {
        String fieldValue = encodeAddresses(Collections.singleton(mailbox));
        return (MailboxField) parse(MailboxField.PARSER, fieldName, fieldValue);
    }

    private static MailboxListField mailboxList0(String fieldName, Iterable<Mailbox> mailboxes) {
        String fieldValue = encodeAddresses(mailboxes);
        return (MailboxListField) parse(MailboxListField.PARSER, fieldName, fieldValue);
    }

    private static AddressListField addressList0(String fieldName, Iterable<Address> addresses) {
        String fieldValue = encodeAddresses(addresses);
        return (AddressListField) parse(AddressListField.PARSER, fieldName, fieldValue);
    }

    private static void checkValidFieldName(String fieldName) {
        if (!FIELD_NAME_PATTERN.matcher(fieldName).matches()) {
            throw new IllegalArgumentException("Invalid field name");
        }
    }

    private static boolean isValidMimeType(String mimeType) {
        int idx;
        if (mimeType == null || (idx = mimeType.indexOf(47)) == -1) {
            return false;
        }
        String type = mimeType.substring(0, idx);
        String subType = mimeType.substring(idx + 1);
        return EncoderUtil.isToken(type) && EncoderUtil.isToken(subType);
    }

    private static boolean isValidDispositionType(String dispositionType) {
        if (dispositionType == null) {
            return false;
        }
        return EncoderUtil.isToken(dispositionType);
    }

    private static <F extends Field> F parse(FieldParser parser, String fieldName, String fieldBody) {
        String rawStr = MimeUtil.fold(fieldName + ": " + fieldBody, 0);
        ByteSequence raw = ContentUtil.encode(rawStr);
        return parser.parse(fieldName, fieldBody, raw);
    }

    private static String encodeAddresses(Iterable<? extends Address> addresses) {
        StringBuilder sb = new StringBuilder();
        for (Address address : addresses) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(address.getEncodedString());
        }
        return sb.toString();
    }
}
