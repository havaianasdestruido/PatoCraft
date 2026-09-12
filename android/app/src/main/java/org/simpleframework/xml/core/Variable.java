package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Variable implements Label {
    private final Label label;
    private final Object value;

    public Variable(Label label, Object value) {
        this.label = label;
        this.value = value;
    }

    @Override // org.simpleframework.xml.core.Label
    public Label getLabel(Class type) {
        return this;
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getType(Class type) throws Exception {
        return this.label.getType(type);
    }

    @Override // org.simpleframework.xml.core.Label
    public String[] getNames() throws Exception {
        return this.label.getNames();
    }

    @Override // org.simpleframework.xml.core.Label
    public String[] getPaths() throws Exception {
        return this.label.getPaths();
    }

    public Object getValue() {
        return this.value;
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() throws Exception {
        return this.label.getDecorator();
    }

    @Override // org.simpleframework.xml.core.Label
    public Converter getConverter(Context context) throws Exception {
        Converter reader = this.label.getConverter(context);
        return reader instanceof Adapter ? reader : new Adapter(reader, this.label, this.value);
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) throws Exception {
        return this.label.getEmpty(context);
    }

    @Override // org.simpleframework.xml.core.Label
    public Contact getContact() {
        return this.label.getContact();
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getDependent() throws Exception {
        return this.label.getDependent();
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getKey() throws Exception {
        return this.label.getKey();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getEntry() throws Exception {
        return this.label.getEntry();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName() throws Exception {
        return this.label.getName();
    }

    @Override // org.simpleframework.xml.core.Label
    public Annotation getAnnotation() {
        return this.label.getAnnotation();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath() throws Exception {
        return this.label.getPath();
    }

    @Override // org.simpleframework.xml.core.Label
    public Expression getExpression() throws Exception {
        return this.label.getExpression();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getOverride() {
        return this.label.getOverride();
    }

    @Override // org.simpleframework.xml.core.Label
    public Class getType() {
        return this.label.getType();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.label.isData();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isInline() {
        return this.label.isInline();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isAttribute() {
        return this.label.isAttribute();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isCollection() {
        return this.label.isCollection();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isRequired() {
        return this.label.isRequired();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isText() {
        return this.label.isText();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isTextList() {
        return this.label.isTextList();
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isUnion() {
        return this.label.isUnion();
    }

    @Override // org.simpleframework.xml.core.Label
    public String toString() {
        return this.label.toString();
    }

    private static class Adapter implements Repeater {
        private final Label label;
        private final Converter reader;
        private final Object value;

        public Adapter(Converter reader, Label label, Object value) {
            this.reader = reader;
            this.value = value;
            this.label = label;
        }

        @Override // org.simpleframework.xml.core.Converter
        public Object read(InputNode node) throws Exception {
            return read(node, this.value);
        }

        @Override // org.simpleframework.xml.core.Repeater, org.simpleframework.xml.core.Converter
        public Object read(InputNode node, Object value) throws Exception {
            Position line = node.getPosition();
            String name = node.getName();
            if (this.reader instanceof Repeater) {
                Repeater repeat = (Repeater) this.reader;
                return repeat.read(node, value);
            }
            throw new PersistenceException("Element '%s' is already used with %s at %s", name, this.label, line);
        }

        @Override // org.simpleframework.xml.core.Converter
        public boolean validate(InputNode node) throws Exception {
            Position line = node.getPosition();
            String name = node.getName();
            if (this.reader instanceof Repeater) {
                Repeater repeat = (Repeater) this.reader;
                return repeat.validate(node);
            }
            throw new PersistenceException("Element '%s' declared twice at %s", name, line);
        }

        @Override // org.simpleframework.xml.core.Converter
        public void write(OutputNode node, Object value) throws Exception {
            write(node, value);
        }
    }
}
