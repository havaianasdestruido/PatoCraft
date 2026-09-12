package com.microsoft.onlineid;

import com.appsflyer.MonitorMessages;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Strings;
import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Ticket implements Serializable {
    private static final long serialVersionUID = 1;
    private final Date _expiry;
    private final ISecurityScope _scope;
    private final String _value;

    public Ticket(ISecurityScope scope, Date expiry, String value) {
        Objects.verifyArgumentNotNull(scope, "scope");
        Objects.verifyArgumentNotNull(expiry, "expiry");
        Strings.verifyArgumentNotNullOrEmpty(value, MonitorMessages.VALUE);
        this._scope = scope;
        this._expiry = expiry;
        this._value = value;
    }

    public ISecurityScope getScope() {
        return this._scope;
    }

    public Date getExpiry() {
        return this._expiry;
    }

    public String getValue() {
        return this._value;
    }

    public int hashCode() {
        return Objects.hashCode(this._scope) + Objects.hashCode(this._expiry) + Objects.hashCode(this._value);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !(o instanceof Ticket)) {
            return false;
        }
        Ticket other = (Ticket) o;
        return Objects.equals(this._scope, other._scope) && Objects.equals(this._expiry, other._expiry) && Objects.equals(this._value, other._value);
    }

    public String toString() {
        return "Ticket{scope: " + this._scope + ", expiry: " + this._expiry + "}";
    }
}
