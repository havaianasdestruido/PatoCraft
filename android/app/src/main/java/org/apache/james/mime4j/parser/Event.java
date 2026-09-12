package org.apache.james.mime4j.parser;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class Event {
    private final String code;
    public static final Event MIME_BODY_PREMATURE_END = new Event("Body part ended prematurely. Boundary detected in header or EOF reached.");
    public static final Event HEADERS_PREMATURE_END = new Event("Unexpected end of headers detected. Higher level boundary detected or EOF reached.");
    public static final Event INALID_HEADER = new Event("Invalid header encountered");

    public Event(String code) {
        if (code == null) {
            throw new IllegalArgumentException("Code may not be null");
        }
        this.code = code;
    }

    public int hashCode() {
        return this.code.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Event)) {
            return false;
        }
        Event that = (Event) obj;
        return this.code.equals(that.code);
    }

    public String toString() {
        return this.code;
    }
}
