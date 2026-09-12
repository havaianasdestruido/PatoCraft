package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OutputAttribute implements OutputNode {
    private String name;
    private String reference;
    private NamespaceMap scope;
    private OutputNode source;
    private String value;

    public OutputAttribute(OutputNode source, String name, String value) {
        this.scope = source.getNamespaces();
        this.source = source;
        this.value = value;
        this.name = name;
    }

    @Override // org.simpleframework.xml.stream.Node
    public String getValue() {
        return this.value;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setValue(String value) {
        this.value = value;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setName(String name) {
        this.name = name;
    }

    @Override // org.simpleframework.xml.stream.Node
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.stream.Node
    public OutputNode getParent() {
        return this.source;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public NodeMap<OutputNode> getAttributes() {
        return new OutputNodeMap(this);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public OutputNode getChild(String name) {
        return null;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getComment() {
        return null;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setComment(String comment) {
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public Mode getMode() {
        return Mode.INHERIT;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setMode(Mode mode) {
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void setData(boolean data) {
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getPrefix() {
        return this.scope.getPrefix(this.reference);
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public String getPrefix(boolean inherit) {
        return this.scope.getPrefix(this.reference);
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

    @Override // org.simpleframework.xml.stream.OutputNode
    public OutputNode setAttribute(String name, String value) {
        return null;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void remove() {
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public void commit() {
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public boolean isRoot() {
        return false;
    }

    @Override // org.simpleframework.xml.stream.OutputNode
    public boolean isCommitted() {
        return true;
    }

    public String toString() {
        return String.format("attribute %s='%s'", this.name, this.value);
    }
}
