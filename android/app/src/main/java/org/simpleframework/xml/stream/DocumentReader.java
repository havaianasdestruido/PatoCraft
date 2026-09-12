package org.simpleframework.xml.stream;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DocumentReader implements EventReader {
    private static final String RESERVED = "xml";
    private EventNode peek;
    private NodeExtractor queue;
    private NodeStack stack = new NodeStack();

    public DocumentReader(Document document) {
        this.queue = new NodeExtractor(document);
        this.stack.push(document);
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
        org.w3c.dom.Node node = this.queue.peek();
        return node == null ? end() : read(node);
    }

    private EventNode read(org.w3c.dom.Node node) throws Exception {
        org.w3c.dom.Node parent = node.getParentNode();
        org.w3c.dom.Node top = this.stack.top();
        if (parent != top) {
            if (top != null) {
                this.stack.pop();
            }
            return end();
        }
        if (node != null) {
            this.queue.poll();
        }
        return convert(node);
    }

    private EventNode convert(org.w3c.dom.Node node) throws Exception {
        short type = node.getNodeType();
        if (type != 1) {
            return text(node);
        }
        if (node != null) {
            this.stack.push(node);
        }
        return start(node);
    }

    private Start start(org.w3c.dom.Node node) {
        Start event = new Start(node);
        if (event.isEmpty()) {
            return build(event);
        }
        return event;
    }

    private Start build(Start event) {
        NamedNodeMap list = event.getAttributes();
        int length = list.getLength();
        for (int i = 0; i < length; i++) {
            org.w3c.dom.Node node = list.item(i);
            Attribute value = attribute(node);
            if (!value.isReserved()) {
                event.add(value);
            }
        }
        return event;
    }

    private Entry attribute(org.w3c.dom.Node node) {
        return new Entry(node);
    }

    private Text text(org.w3c.dom.Node node) {
        return new Text(node);
    }

    private End end() {
        return new End();
    }

    private static class Entry extends EventAttribute {
        private final org.w3c.dom.Node node;

        public Entry(org.w3c.dom.Node node) {
            this.node = node;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getName() {
            return this.node.getLocalName();
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getValue() {
            return this.node.getNodeValue();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getPrefix() {
            return this.node.getPrefix();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getReference() {
            return this.node.getNamespaceURI();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public boolean isReserved() {
            String prefix = getPrefix();
            String name = getName();
            return prefix != null ? prefix.startsWith(DocumentReader.RESERVED) : name.startsWith(DocumentReader.RESERVED);
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public Object getSource() {
            return this.node;
        }
    }

    private static class Start extends EventElement {
        private final Element element;

        public Start(org.w3c.dom.Node element) {
            this.element = (Element) element;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getName() {
            return this.element.getLocalName();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getPrefix() {
            return this.element.getPrefix();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getReference() {
            return this.element.getNamespaceURI();
        }

        public NamedNodeMap getAttributes() {
            return this.element.getAttributes();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.element;
        }
    }

    private static class Text extends EventToken {
        private final org.w3c.dom.Node node;

        public Text(org.w3c.dom.Node node) {
            this.node = node;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isText() {
            return true;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public String getValue() {
            return this.node.getNodeValue();
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.node;
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
