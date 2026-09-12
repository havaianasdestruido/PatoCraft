package org.apache.james.mime4j.parser;

import org.apache.james.mime4j.MimeException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MimeParseEventException extends MimeException {
    private static final long serialVersionUID = 4632991604246852302L;
    private final Event event;

    public MimeParseEventException(Event event) {
        super(event.toString());
        this.event = event;
    }

    public Event getEvent() {
        return this.event;
    }
}
