package org.simpleframework.xml.core;

import org.simpleframework.xml.Order;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ModelAssembler {
    private final ExpressionBuilder builder;
    private final Detail detail;
    private final Format format;

    public ModelAssembler(ExpressionBuilder builder, Detail detail, Support support) throws Exception {
        this.format = support.getFormat();
        this.builder = builder;
        this.detail = detail;
    }

    public void assemble(Model model, Order order) throws Exception {
        assembleElements(model, order);
        assembleAttributes(model, order);
    }

    private void assembleElements(Model model, Order order) throws Exception {
        String[] arr$ = order.elements();
        for (String value : arr$) {
            Expression path = this.builder.build(value);
            if (path.isAttribute()) {
                throw new PathException("Ordered element '%s' references an attribute in %s", path, this.detail);
            }
            registerElements(model, path);
        }
    }

    private void assembleAttributes(Model model, Order order) throws Exception {
        String[] arr$ = order.attributes();
        for (String value : arr$) {
            Expression path = this.builder.build(value);
            if (!path.isAttribute() && path.isPath()) {
                throw new PathException("Ordered attribute '%s' references an element in %s", path, this.detail);
            }
            if (!path.isPath()) {
                Style style = this.format.getStyle();
                String name = style.getAttribute(value);
                model.registerAttribute(name);
            } else {
                registerAttributes(model, path);
            }
        }
    }

    private void registerAttributes(Model model, Expression path) throws Exception {
        String prefix = path.getPrefix();
        String name = path.getFirst();
        int index = path.getIndex();
        if (path.isPath()) {
            Model next = model.register(name, prefix, index);
            Expression child = path.getPath(1);
            if (next == null) {
                throw new PathException("Element '%s' does not exist in %s", name, this.detail);
            }
            registerAttributes(next, child);
            return;
        }
        registerAttribute(model, path);
    }

    private void registerAttribute(Model model, Expression path) throws Exception {
        String name = path.getFirst();
        if (name != null) {
            model.registerAttribute(name);
        }
    }

    private void registerElements(Model model, Expression path) throws Exception {
        String prefix = path.getPrefix();
        String name = path.getFirst();
        int index = path.getIndex();
        if (name != null) {
            Model next = model.register(name, prefix, index);
            Expression child = path.getPath(1);
            if (path.isPath()) {
                registerElements(next, child);
            }
        }
        registerElement(model, path);
    }

    private void registerElement(Model model, Expression path) throws Exception {
        String prefix = path.getPrefix();
        String name = path.getFirst();
        int index = path.getIndex();
        if (index > 1) {
            Model previous = model.lookup(name, index - 1);
            if (previous == null) {
                throw new PathException("Ordered element '%s' in path '%s' is out of sequence for %s", name, path, this.detail);
            }
        }
        model.register(name, prefix, index);
    }
}
