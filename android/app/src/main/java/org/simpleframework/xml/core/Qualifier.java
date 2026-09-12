package org.simpleframework.xml.core;

import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.stream.OutputNode;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Qualifier implements Decorator {
    private NamespaceDecorator decorator = new NamespaceDecorator();

    public Qualifier(Contact contact) {
        scan(contact);
    }

    @Override // org.simpleframework.xml.core.Decorator
    public void decorate(OutputNode node) {
        this.decorator.decorate(node);
    }

    @Override // org.simpleframework.xml.core.Decorator
    public void decorate(OutputNode node, Decorator secondary) {
        this.decorator.decorate(node, secondary);
    }

    private void scan(Contact contact) {
        namespace(contact);
        scope(contact);
    }

    private void namespace(Contact contact) {
        Namespace primary = (Namespace) contact.getAnnotation(Namespace.class);
        if (primary != null) {
            this.decorator.set(primary);
            this.decorator.add(primary);
        }
    }

    private void scope(Contact contact) {
        NamespaceList scope = (NamespaceList) contact.getAnnotation(NamespaceList.class);
        if (scope != null) {
            Namespace[] arr$ = scope.value();
            for (Namespace name : arr$) {
                this.decorator.add(name);
            }
        }
    }
}
