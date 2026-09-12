package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class EmptyExpression implements Expression {
    private final List<String> list = new LinkedList();
    private final Style style;

    public EmptyExpression(Format format) {
        this.style = format.getStyle();
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this.list.iterator();
    }

    @Override // org.simpleframework.xml.core.Expression
    public int getIndex() {
        return 0;
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getPrefix() {
        return null;
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getFirst() {
        return null;
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getLast() {
        return null;
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getPath() {
        return "";
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getElement(String name) {
        return this.style.getElement(name);
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getAttribute(String name) {
        return this.style.getAttribute(name);
    }

    @Override // org.simpleframework.xml.core.Expression
    public Expression getPath(int from) {
        return null;
    }

    @Override // org.simpleframework.xml.core.Expression
    public Expression getPath(int from, int trim) {
        return null;
    }

    @Override // org.simpleframework.xml.core.Expression
    public boolean isAttribute() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Expression
    public boolean isPath() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Expression
    public boolean isEmpty() {
        return true;
    }
}
