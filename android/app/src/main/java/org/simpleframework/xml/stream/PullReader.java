package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PullReader implements EventReader {
    private XmlPullParser parser;
    private EventNode peek;

    public PullReader(XmlPullParser parser) {
        this.parser = parser;
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
        int event = this.parser.next();
        if (event != 1) {
            if (event == 2) {
                return start();
            }
            if (event == 4) {
                return text();
            }
            if (event == 3) {
                return end();
            }
            return read();
        }
        return null;
    }

    private Text text() throws Exception {
        return new Text(this.parser);
    }

    private Start start() throws Exception {
        Start event = new Start(this.parser);
        if (event.isEmpty()) {
            return build(event);
        }
        return event;
    }

    private Start build(Start event) throws Exception {
        int count = this.parser.getAttributeCount();
        for (int i = 0; i < count; i++) {
            Entry entry = attribute(i);
            if (!entry.isReserved()) {
                event.add(entry);
            }
        }
        return event;
    }

    private Entry attribute(int index) throws Exception {
        return new Entry(this.parser, index);
    }

    private End end() throws Exception {
        return new End();
    }

    private static class Entry extends EventAttribute {
        private final String name;
        private final String prefix;
        private final String reference;
        private final XmlPullParser source;
        private final String value;

        public Entry(XmlPullParser source, int index) {
            this.reference = source.getAttributeNamespace(index);
            this.prefix = source.getAttributePrefix(index);
            this.value = source.getAttributeValue(index);
            this.name = source.getAttributeName(index);
            this.source = source;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getName() {
            return this.name;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getValue() {
            return this.value;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public boolean isReserved() {
            return false;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getReference() {
            return this.reference;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getPrefix() {
            return this.prefix;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public Object getSource() {
            return this.source;
        }
    }

    private static class Start extends EventElement {
        private final int line;
        private final String name;
        private final String prefix;
        private final String reference;
        private final XmlPullParser source;

        public Start(XmlPullParser source) {
            this.reference = source.getNamespace();
            this.line = source.getLineNumber();
            this.prefix = source.getPrefix();
            this.name = source.getName();
            this.source = source;
        }

        @Override // org.simpleframework.xml.stream.EventElement, org.simpleframework.xml.stream.EventNode
        public int getLine() {
            return this.line;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getName() {
            return this.name;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getReference() {
            return this.reference;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getPrefix() {
            return this.prefix;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.source;
        }
    }

    private static class Text extends EventToken {
        private final XmlPullParser source;
        private final String text;

        public Text(XmlPullParser source) {
            this.text = source.getText();
            this.source = source;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isText() {
            return true;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public String getValue() {
            return this.text;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.source;
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
