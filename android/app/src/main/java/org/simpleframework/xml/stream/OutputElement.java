package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OutputElement implements OutputNode {
    private String comment;
    private String name;
    private OutputNode parent;
    private String reference;
    private NamespaceMap scope;
    private String value;
    private NodeWriter writer;
    private OutputNodeMap table = new OutputNodeMap(this);
    private Mode mode = Mode.INHERIT;

    public OutputElement(OutputNode parent, NodeWriter writer, String name) {
        this.scope = new PrefixResolver(parent);
        this.writer = writer;
        this.parent = parent;
        this.name = name;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getPrefix() {
        return getPrefix(true);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getPrefix(boolean inherit) {
        String prefix = this.scope.getPrefix(this.reference);
        if (inherit && prefix == null) {
            return this.parent.getPrefix();
        }
        return prefix;
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
        return this.scope;
    }

    @Override // org.simpleframework.xml.stream.Node
    public OutputNode getParent() {
        return this.parent;
    }

    @Override // org.simpleframework.xml.stream.Node
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.stream.Node
    public String getValue() {
        return this.value;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getComment() {
        return this.comment;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public boolean isRoot() {
        return this.writer.isRoot(this);
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
    public OutputNodeMap getAttributes() {
        return this.table;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setValue(String value) {
        this.value = value;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setName(String name) {
        this.name = name;
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
    public OutputNode setAttribute(String name, String value) {
        return this.table.put(name, value);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public OutputNode getChild(String name) throws Exception {
        return this.writer.writeElement(this, name);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void remove() throws Exception {
        this.writer.remove(this);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void commit() throws Exception {
        this.writer.commit(this);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public boolean isCommitted() {
        return this.writer.isCommitted(this);
    }

    public String toString() {
        return String.format("element %s", this.name);
    }
}
