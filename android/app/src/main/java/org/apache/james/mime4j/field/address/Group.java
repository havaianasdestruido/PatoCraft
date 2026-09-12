package org.apache.james.mime4j.field.address;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.apache.james.mime4j.codec.EncoderUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Group extends Address {
    private static final long serialVersionUID = 1;
    private final MailboxList mailboxList;
    private final String name;

    public Group(String name, Mailbox... mailboxes) {
        this(name, new MailboxList(Arrays.asList(mailboxes), true));
    }

    public Group(String name, Collection<Mailbox> mailboxes) {
        this(name, new MailboxList(new ArrayList(mailboxes), true));
    }

    public Group(String name, MailboxList mailboxes) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        if (mailboxes == null) {
            throw new IllegalArgumentException();
        }
        this.name = name;
        this.mailboxList = mailboxes;
    }

    public static Group parse(String rawGroupString) {
        Address address = Address.parse(rawGroupString);
        if (!(address instanceof Group)) {
            throw new IllegalArgumentException("Not a group address");
        }
        return (Group) address;
    }

    public String getName() {
        return this.name;
    }

    public MailboxList getMailboxes() {
        return this.mailboxList;
    }

    @Override // org.apache.james.mime4j.field.address.Address
    public String getDisplayString(boolean includeRoute) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append(':');
        boolean first = true;
        for (Mailbox mailbox : this.mailboxList) {
            if (first) {
                first = false;
            } else {
                sb.append(',');
            }
            sb.append(' ');
            sb.append(mailbox.getDisplayString(includeRoute));
        }
        sb.append(";");
        return sb.toString();
    }

    @Override // org.apache.james.mime4j.field.address.Address
    public String getEncodedString() {
        StringBuilder sb = new StringBuilder();
        sb.append(EncoderUtil.encodeAddressDisplayName(this.name));
        sb.append(':');
        boolean first = true;
        for (Mailbox mailbox : this.mailboxList) {
            if (first) {
                first = false;
            } else {
                sb.append(',');
            }
            sb.append(' ');
            sb.append(mailbox.getEncodedString());
        }
        sb.append(';');
        return sb.toString();
    }

    @Override // org.apache.james.mime4j.field.address.Address
    protected void doAddMailboxesTo(List<Mailbox> results) {
        for (Mailbox mailbox : this.mailboxList) {
            results.add(mailbox);
        }
    }
}
