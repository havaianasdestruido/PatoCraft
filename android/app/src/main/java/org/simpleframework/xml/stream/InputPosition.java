package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class InputPosition implements Position {
    private EventNode source;

    public InputPosition(EventNode source) {
        this.source = source;
    }

    @Override // org.simpleframework.xml.stream.Position
    public int getLine() {
        return this.source.getLine();
    }

    @Override // org.simpleframework.xml.stream.Position
    public String toString() {
        return String.format("line %s", Integer.valueOf(getLine()));
    }
}
