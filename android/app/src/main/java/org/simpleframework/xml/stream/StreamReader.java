package org.simpleframework.xml.stream;

import java.util.Iterator;
import javax.xml.stream.Location;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class StreamReader implements EventReader {
    private EventNode peek;
    private XMLEventReader reader;

    public StreamReader(XMLEventReader reader) {
        this.reader = reader;
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode peek() throws Exception {
        if (this.peek == null) {
            this.peek = next();
        }
        return this.peek;
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode next() throws Exception {
        EventNode next = this.peek;
        if (next == null) {
            return read();
        }
        this.peek = null;
        return next;
    }

    private EventNode read() throws Exception {
        XMLEvent event = this.reader.nextEvent();
        if (!event.isEndDocument()) {
            if (event.isStartElement()) {
                return start(event);
            }
            if (event.isCharacters()) {
                return text(event);
            }
            if (event.isEndElement()) {
                return end();
            }
            return read();
        }
        return null;
    }

    private Start start(XMLEvent event) {
        Start node = new Start(event);
        if (node.isEmpty()) {
            return build(node);
        }
        return node;
    }

    private Start build(Start event) {
        Iterator<javax.xml.stream.events.Attribute> list = event.getAttributes();
        while (list.hasNext()) {
            javax.xml.stream.events.Attribute node = list.next();
            Entry entry = attribute(node);
            if (!entry.isReserved()) {
                event.add(entry);
            }
        }
        return event;
    }

    private Entry attribute(javax.xml.stream.events.Attribute entry) {
        return new Entry(entry);
    }

    private Text text(XMLEvent event) {
        return new Text(event);
    }

    private End end() {
        return new End();
    }

    private static class Entry extends EventAttribute {
        private final javax.xml.stream.events.Attribute entry;

        public Entry(javax.xml.stream.events.Attribute entry) {
            this.entry = entry;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getName() {
            return this.entry.getName().getLocalPart();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getPrefix() {
            return this.entry.getName().getPrefix();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getReference() {
            return this.entry.getName().getNamespaceURI();
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getValue() {
            return this.entry.getValue();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public boolean isReserved() {
            return false;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public Object getSource() {
            return this.entry;
        }
    }

    private static class Start extends EventElement {
        private final StartElement element;
        private final Location location;

        public Start(XMLEvent event) {
            this.element = event.asStartElement();
            this.location = event.getLocation();
        }

        @Override // org.simpleframework.xml.stream.EventElement, org.simpleframework.xml.stream.EventNode
        public int getLine() {
            return this.location.getLineNumber();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getName() {
            return this.element.getName().getLocalPart();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getPrefix() {
            return this.element.getName().getPrefix();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getReference() {
            return this.element.getName().getNamespaceURI();
        }

        public Iterator<javax.xml.stream.events.Attribute> getAttributes() {
            return this.element.getAttributes();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.element;
        }
    }

    private static class Text extends EventToken {
        private final Characters text;

        public Text(XMLEvent event) {
            this.text = event.asCharacters();
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isText() {
            return true;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public String getValue() {
            return this.text.getData();
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.text;
        }
    }

    private static class End extends EventToken {
        private End() {
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isEnd() {
            return true;
        }
    }
}
