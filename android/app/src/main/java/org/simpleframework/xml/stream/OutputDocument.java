package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OutputDocument implements OutputNode {
    private String comment;
    private String name;
    private String reference;
    private OutputStack stack;
    private String value;
    private NodeWriter writer;
    private OutputNodeMap table = new OutputNodeMap(this);
    private Mode mode = Mode.INHERIT;

    public OutputDocument(NodeWriter writer, OutputStack stack) {
        this.writer = writer;
        this.stack = stack;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getPrefix() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getPrefix(boolean inherit) {
        return null;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getReference() {
        return this.reference;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setReference(String reference) {
        this.reference = reference;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public NamespaceMap getNamespaces() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.Node
    public OutputNode getParent() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.Node
    public String getName() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.Node
    public String getValue() throws Exception {
        return this.value;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getComment() {
        return this.comment;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public boolean isRoot() {
        return true;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public Mode getMode() {
        return this.mode;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setMode(Mode mode) {
        this.mode = mode;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public OutputNode setAttribute(String name, String value) {
        return this.table.put(name, value);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public NodeMap<OutputNode> getAttributes() {
        return this.table;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setName(String name) {
        this.name = name;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setValue(String value) {
        this.value = value;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setData(boolean data) {
        if (data) {
            this.mode = Mode.DATA;
        } else {
            this.mode = Mode.ESCAPE;
        }
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public OutputNode getChild(String name) throws Exception {
        return this.writer.writeElement(this, name);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void remove() throws Exception {
        if (this.stack.isEmpty()) {
            throw new NodeException("No root node");
        }
        this.stack.bottom().remove();
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void commit() throws Exception {
        if (this.stack.isEmpty()) {
            throw new NodeException("No root node");
        }
        this.stack.bottom().commit();
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public boolean isCommitted() {
        return this.stack.isEmpty();
    }
}
