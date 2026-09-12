package org.simpleframework.xml.stream;

import java.io.Writer;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class NodeWriter {
    private final Set active;
    private final OutputStack stack;
    private final boolean verbose;
    private final Formatter writer;

    public NodeWriter(Writer result) {
        this(result, new Format());
    }

    public NodeWriter(Writer result, Format format) {
        this(result, format, false);
    }

    private NodeWriter(Writer result, Format format, boolean verbose) {
        this.writer = new Formatter(result, format);
        this.active = new HashSet();
        this.stack = new OutputStack(this.active);
        this.verbose = verbose;
    }

    public OutputNode writeRoot() throws Exception {
        OutputDocument root = new OutputDocument(this, this.stack);
        if (this.stack.isEmpty()) {
            this.writer.writeProlog();
        }
        return root;
    }

    public boolean isRoot(OutputNode node) {
        return this.stack.bottom() == node;
    }

    public boolean isCommitted(OutputNode node) {
        return !this.active.contains(node);
    }

    public void commit(OutputNode parent) throws Exception {
        if (this.stack.contains(parent)) {
            OutputNode top = this.stack.top();
            if (!isCommitted(top)) {
                writeStart(top);
            }
            while (this.stack.top() != parent) {
                writeEnd(this.stack.pop());
            }
            writeEnd(parent);
            this.stack.pop();
        }
    }

    public void remove(OutputNode node) throws Exception {
        if (this.stack.top() != node) {
            throw new NodeException("Cannot remove node");
        }
        this.stack.pop();
    }

    public OutputNode writeElement(OutputNode parent, String name) throws Exception {
        if (this.stack.isEmpty()) {
            return writeStart(parent, name);
        }
        if (this.stack.contains(parent)) {
            OutputNode top = this.stack.top();
            if (!isCommitted(top)) {
                writeStart(top);
            }
            while (this.stack.top() != parent) {
                writeEnd(this.stack.pop());
            }
            if (!this.stack.isEmpty()) {
                writeValue(parent);
            }
            return writeStart(parent, name);
        }
        return null;
    }

    private OutputNode writeStart(OutputNode parent, String name) throws Exception {
        OutputNode node = new OutputElement(parent, this, name);
        if (name == null) {
            throw new NodeException("Can not have a null name");
        }
        return this.stack.push(node);
    }

    private void writeStart(OutputNode node) throws Exception {
        writeComment(node);
        writeName(node);
        writeAttributes(node);
        writeNamespaces(node);
    }

    private void writeComment(OutputNode node) throws Exception {
        String comment = node.getComment();
        if (comment != null) {
            this.writer.writeComment(comment);
        }
    }

    private void writeName(OutputNode node) throws Exception {
        String prefix = node.getPrefix(this.verbose);
        String name = node.getName();
        if (name != null) {
            this.writer.writeStart(name, prefix);
        }
    }

    private void writeValue(OutputNode node) throws Exception {
        Mode mode = node.getMode();
        String value = node.getValue();
        if (value != null) {
            for (OutputNode next : this.stack) {
                if (mode != Mode.INHERIT) {
                    break;
                } else {
                    mode = next.getMode();
                }
            }
            this.writer.writeText(value, mode);
        }
        node.setValue(null);
    }

    private void writeEnd(OutputNode node) throws Exception {
        String name = node.getName();
        String prefix = node.getPrefix(this.verbose);
        String value = node.getValue();
        if (value != null) {
            writeValue(node);
        }
        if (name != null) {
            this.writer.writeEnd(name, prefix);
            this.writer.flush();
        }
    }

    private void writeAttributes(OutputNode node) throws Exception {
        NodeMap<OutputNode> map = node.getAttributes();
        for (String name : map) {
            OutputNode entry = (OutputNode) map.get(name);
            String value = entry.getValue();
            String prefix = entry.getPrefix(this.verbose);
            this.writer.writeAttribute(name, value, prefix);
        }
        this.active.remove(node);
    }

    private void writeNamespaces(OutputNode node) throws Exception {
        NamespaceMap map = node.getNamespaces();
        for (String name : map) {
            String prefix = map.getPrefix(name);
            this.writer.writeNamespace(name, prefix);
        }
    }
}
