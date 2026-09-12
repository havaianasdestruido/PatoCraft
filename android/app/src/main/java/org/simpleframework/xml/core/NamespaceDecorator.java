package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.stream.NamespaceMap;
import org.simpleframework.xml.stream.OutputNode;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class NamespaceDecorator implements Decorator {
    private Namespace primary;
    private List<Namespace> scope = new ArrayList();

    public void set(Namespace namespace) {
        if (namespace != null) {
            add(namespace);
        }
        this.primary = namespace;
    }

    public void add(Namespace namespace) {
        this.scope.add(namespace);
    }

    @Override // org.simpleframework.xml.core.Decorator
    public void decorate(OutputNode node) {
        decorate(node, null);
    }

    @Override // org.simpleframework.xml.core.Decorator
    public void decorate(OutputNode node, Decorator decorator) {
        if (decorator != null) {
            decorator.decorate(node);
        }
        scope(node);
        namespace(node);
    }

    private void scope(OutputNode node) {
        NamespaceMap map = node.getNamespaces();
        for (Namespace next : this.scope) {
            String reference = next.reference();
            String prefix = next.prefix();
            map.setReference(reference, prefix);
        }
    }

    private void namespace(OutputNode node) {
        if (this.primary != null) {
            String reference = this.primary.reference();
            node.setReference(reference);
        }
    }
}
