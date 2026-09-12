package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class TextList implements Repeater {
    private final CollectionFactory factory;
    private final Primitive primitive;
    private final Type type = new ClassType(String.class);

    public TextList(Context context, Type list, Label label) {
        this.factory = new CollectionFactory(context, list);
        this.primitive = new Primitive(context, this.type);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Instance value = this.factory.getInstance(node);
        Object data = value.getInstance();
        return value.isReference() ? value.getInstance() : read(node, data);
    }

    @Override // org.simpleframework.xml.core.Repeater, org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object result) throws Exception {
        Collection list = (Collection) result;
        Object value = this.primitive.read(node);
        if (value != null) {
            list.add(value);
        }
        return result;
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        return true;
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object object) throws Exception {
        Collection list = (Collection) object;
        OutputNode parent = node.getParent();
        for (Object item : list) {
            this.primitive.write(parent, item);
        }
    }
}
