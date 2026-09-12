package org.apache.james.mime4j.field.address;

import java.io.StringReader;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.james.mime4j.codec.EncoderUtil;
import org.apache.james.mime4j.field.address.parser.AddressListParser;
import org.apache.james.mime4j.field.address.parser.ParseException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Mailbox extends Address {
    private static final DomainList EMPTY_ROUTE_LIST = new DomainList(Collections.emptyList(), true);
    private static final long serialVersionUID = 1;
    private final String domain;
    private final String localPart;
    private final String name;
    private final DomainList route;

    public Mailbox(String localPart, String domain) {
        this(null, null, localPart, domain);
    }

    public Mailbox(DomainList route, String localPart, String domain) {
        this(null, route, localPart, domain);
    }

    public Mailbox(String name, String localPart, String domain) {
        this(name, null, localPart, domain);
    }

    public Mailbox(String name, DomainList route, String localPart, String domain) {
        if (localPart == null || localPart.length() == 0) {
            throw new IllegalArgumentException();
        }
        this.name = (name == null || name.length() == 0) ? null : name;
        this.route = route == null ? EMPTY_ROUTE_LIST : route;
        this.localPart = localPart;
        this.domain = (domain == null || domain.length() == 0) ? null : domain;
    }

    Mailbox(String name, Mailbox baseMailbox) {
        this(name, baseMailbox.getRoute(), baseMailbox.getLocalPart(), baseMailbox.getDomain());
    }

    public static Mailbox parse(String rawMailboxString) {
        AddressListParser parser = new AddressListParser(new StringReader(rawMailboxString));
        try {
            return Builder.getInstance().buildMailbox(parser.parseMailbox());
        } catch (ParseException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public String getName() {
        return this.name;
    }

    public DomainList getRoute() {
        return this.route;
    }

    public String getLocalPart() {
        return this.localPart;
    }

    public String getDomain() {
        return this.domain;
    }

    public String getAddress() {
        return this.domain == null ? this.localPart : this.localPart + '@' + this.domain;
    }

    @Override // org.apache.james.mime4j.field.address.Address
    public String getDisplayString(boolean includeRoute) {
        boolean includeRoute2 = includeRoute & (this.route != null);
        boolean includeAngleBrackets = this.name != null || includeRoute2;
        StringBuilder sb = new StringBuilder();
        if (this.name != null) {
            sb.append(this.name);
            sb.append(' ');
        }
        if (includeAngleBrackets) {
            sb.append('<');
        }
        if (includeRoute2) {
            sb.append(this.route.toRouteString());
            sb.append(':');
        }
        sb.append(this.localPart);
        if (this.domain != null) {
            sb.append('@');
            sb.append(this.domain);
        }
        if (includeAngleBrackets) {
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // org.apache.james.mime4j.field.address.Address
    public String getEncodedString() {
        StringBuilder sb = new StringBuilder();
        if (this.name != null) {
            sb.append(EncoderUtil.encodeAddressDisplayName(this.name));
            sb.append(" <");
        }
        sb.append(EncoderUtil.encodeAddressLocalPart(this.localPart));
        if (this.domain != null) {
            sb.append('@');
            sb.append(this.domain);
        }
        if (this.name != null) {
            sb.append('>');
        }
        return sb.toString();
    }

    public int hashCode() {
        return getCanonicalizedAddress().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Mailbox)) {
            return false;
        }
        Mailbox other = (Mailbox) obj;
        return getCanonicalizedAddress().equals(other.getCanonicalizedAddress());
    }

    @Override // org.apache.james.mime4j.field.address.Address
    protected final void doAddMailboxesTo(List<Mailbox> results) {
        results.add(this);
    }

    private Object getCanonicalizedAddress() {
        return this.domain == null ? this.localPart : this.localPart + '@' + this.domain.toLowerCase(Locale.US);
    }
}
