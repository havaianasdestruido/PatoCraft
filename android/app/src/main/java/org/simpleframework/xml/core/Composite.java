package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NamespaceMap;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Composite implements Converter {
    private final Context context;
    private final Criteria criteria;
    private final ObjectFactory factory;
    private final Primitive primitive;
    private final Revision revision;
    private final Type type;

    public Composite(Context context, Type type) {
        this(context, type, null);
    }

    public Composite(Context context, Type type, Class override) {
        this.factory = new ObjectFactory(context, type, override);
        this.primitive = new Primitive(context, type);
        this.criteria = new Collector();
        this.revision = new Revision();
        this.context = context;
        this.type = type;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node) throws Exception {
        Instance value = this.factory.getInstance(node);
        Class type = value.getType();
        if (value.isReference()) {
            return value.getInstance();
        }
        if (this.context.isPrimitive(type)) {
            return readPrimitive(node, value);
        }
        return read(node, value, type);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode node, Object source) throws Exception {
        Schema schema = this.context.getSchema(source.getClass());
        Caller caller = schema.getCaller();
        read(node, source, schema);
        this.criteria.commit(source);
        caller.validate(source);
        caller.commit(source);
        return readResolve(node, source, caller);
    }

    private Object read(InputNode node, Instance value, Class real) throws Exception {
        Schema schema = this.context.getSchema(real);
        Caller caller = schema.getCaller();
        Builder builder = read(schema, value);
        Object source = builder.read(node);
        caller.validate(source);
        caller.commit(source);
        value.setInstance(source);
        return readResolve(node, source, caller);
    }

    private Builder read(Schema schema, Instance value) throws Exception {
        Instantiator creator = schema.getInstantiator();
        return creator.isDefault() ? new Builder(this, this.criteria, schema, value) : new Injector(this, this.criteria, schema, value);
    }

    private Object readPrimitive(InputNode node, Instance value) throws Exception {
        Class type = value.getType();
        Object result = this.primitive.read(node, type);
        if (type != null) {
            value.setInstance(result);
        }
        return result;
    }

    private Object readResolve(InputNode node, Object source, Caller caller) throws Exception {
        if (source == null) {
            return source;
        }
        Position line = node.getPosition();
        Object value = caller.resolve(source);
        Class expect = this.type.getType();
        Class<?> cls = value.getClass();
        if (!expect.isAssignableFrom(cls)) {
            throw new ElementException("Type %s does not match %s at %s", cls, expect, line);
        }
        return value;
    }

    private void read(InputNode node, Object source, Schema schema) throws Exception {
        Section section = schema.getSection();
        readVersion(node, source, schema);
        readSection(node, source, section);
    }

    private void readSection(InputNode node, Object source, Section section) throws Exception {
        readText(node, source, section);
        readAttributes(node, source, section);
        readElements(node, source, section);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readVersion(InputNode node, Object source, Schema schema) throws Exception {
        Label label = schema.getVersion();
        Class expect = this.type.getType();
        if (label != null) {
            String name = label.getName();
            NodeMap<InputNode> map = node.getAttributes();
            InputNode value = (InputNode) map.remove(name);
            if (value != null) {
                readVersion(value, source, label);
                return;
            }
            Version version = this.context.getVersion(expect);
            Double start = Double.valueOf(this.revision.getDefault());
            Double expected = Double.valueOf(version.revision());
            this.criteria.set(label, start);
            this.revision.compare(expected, start);
        }
    }

    private void readVersion(InputNode node, Object source, Label label) throws Exception {
        Object value = readInstance(node, source, label);
        Class expect = this.type.getType();
        if (value != null) {
            Version version = this.context.getVersion(expect);
            Double actual = Double.valueOf(version.revision());
            if (!value.equals(this.revision)) {
                this.revision.compare(actual, value);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readAttributes(InputNode node, Object source, Section section) throws Exception {
        NodeMap<InputNode> list = node.getAttributes();
        LabelMap map = section.getAttributes();
        for (String name : list) {
            InputNode value = node.getAttribute(name);
            if (value != null) {
                readAttribute(value, source, section, map);
            }
        }
        validate(node, map, source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readElements(InputNode node, Object source, Section section) throws Exception {
        LabelMap map = section.getElements();
        InputNode child = node.getNext();
        while (child != null) {
            String name = child.getName();
            Section block = section.getSection(name);
            if (block != null) {
                readSection(child, source, block);
            } else {
                readElement(child, source, section, map);
            }
            child = node.getNext();
        }
        validate(node, map, source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readText(InputNode node, Object source, Section section) throws Exception {
        Label label = section.getText();
        if (label != null) {
            readInstance(node, source, label);
        }
    }

    private void readAttribute(InputNode node, Object source, Section section, LabelMap map) throws Exception {
        String name = node.getName();
        String path = section.getAttribute(name);
        Label label = map.getLabel(path);
        if (label == null) {
            Position line = node.getPosition();
            Class expect = this.context.getType(this.type, source);
            if (map.isStrict(this.context) && this.revision.isEqual()) {
                throw new AttributeException("Attribute '%s' does not have a match in %s at %s", path, expect, line);
            }
            return;
        }
        readInstance(node, source, label);
    }

    private void readElement(InputNode node, Object source, Section section, LabelMap map) throws Exception {
        String name = node.getName();
        String path = section.getPath(name);
        Label label = map.getLabel(path);
        if (label == null) {
            label = this.criteria.resolve(path);
        }
        if (label == null) {
            Position line = node.getPosition();
            Class expect = this.context.getType(this.type, source);
            if (map.isStrict(this.context) && this.revision.isEqual()) {
                throw new ElementException("Element '%s' does not have a match in %s at %s", path, expect, line);
            }
            node.skip();
            return;
        }
        readUnion(node, source, map, label);
    }

    private void readUnion(InputNode node, Object source, LabelMap map, Label label) throws Exception {
        Object value = readInstance(node, source, label);
        String[] list = label.getPaths();
        for (String key : list) {
            map.getLabel(key);
        }
        if (label.isInline()) {
            this.criteria.set(label, value);
        }
    }

    private Object readInstance(InputNode node, Object source, Label label) throws Exception {
        Object object = readVariable(node, source, label);
        if (object == null) {
            Position line = node.getPosition();
            Class expect = this.context.getType(this.type, source);
            if (label.isRequired() && this.revision.isEqual()) {
                throw new ValueRequiredException("Empty value for %s in %s at %s", label, expect, line);
            }
        } else if (object != label.getEmpty(this.context)) {
            this.criteria.set(label, object);
        }
        return object;
    }

    private Object readVariable(InputNode node, Object source, Label label) throws Exception {
        Object value;
        Converter reader = label.getConverter(this.context);
        if (label.isCollection()) {
            Variable variable = this.criteria.get(label);
            Contact contact = label.getContact();
            if (variable != null) {
                return reader.read(node, variable.getValue());
            }
            if (source != null && (value = contact.get(source)) != null) {
                return reader.read(node, value);
            }
        }
        return reader.read(node);
    }

    private void validate(InputNode node, LabelMap map, Object source) throws Exception {
        Class expect = this.context.getType(this.type, source);
        Position line = node.getPosition();
        for (Label label : map) {
            if (label.isRequired() && this.revision.isEqual()) {
                throw new ValueRequiredException("Unable to satisfy %s for %s at %s", label, expect, line);
            }
            Object value = label.getEmpty(this.context);
            if (value != null) {
                this.criteria.set(label, value);
            }
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode node) throws Exception {
        Instance value = this.factory.getInstance(node);
        if (value.isReference()) {
            return true;
        }
        value.setInstance(null);
        Class type = value.getType();
        return validate(node, type);
    }

    private boolean validate(InputNode node, Class type) throws Exception {
        Schema schema = this.context.getSchema(type);
        Section section = schema.getSection();
        validateText(node, schema);
        validateSection(node, section);
        return node.isElement();
    }

    private void validateSection(InputNode node, Section section) throws Exception {
        validateAttributes(node, section);
        validateElements(node, section);
    }

    private void validateAttributes(InputNode node, Section section) throws Exception {
        NodeMap<InputNode> list = node.getAttributes();
        LabelMap map = section.getAttributes();
        for (String name : list) {
            InputNode value = node.getAttribute(name);
            if (value != null) {
                validateAttribute(value, section, map);
            }
        }
        validate(node, map);
    }

    private void validateElements(InputNode node, Section section) throws Exception {
        LabelMap map = section.getElements();
        InputNode next = node.getNext();
        while (next != null) {
            String name = next.getName();
            Section child = section.getSection(name);
            if (child != null) {
                validateSection(next, child);
            } else {
                validateElement(next, section, map);
            }
            next = node.getNext();
        }
        validate(node, map);
    }

    private void validateText(InputNode node, Schema schema) throws Exception {
        Label label = schema.getText();
        if (label != null) {
            validate(node, label);
        }
    }

    private void validateAttribute(InputNode node, Section section, LabelMap map) throws Exception {
        Position line = node.getPosition();
        String name = node.getName();
        String path = section.getAttribute(name);
        Label label = map.getLabel(path);
        if (label == null) {
            Class expect = this.type.getType();
            if (map.isStrict(this.context) && this.revision.isEqual()) {
                throw new AttributeException("Attribute '%s' does not exist for %s at %s", path, expect, line);
            }
            return;
        }
        validate(node, label);
    }

    private void validateElement(InputNode node, Section section, LabelMap map) throws Exception {
        String name = node.getName();
        String path = section.getPath(name);
        Label label = map.getLabel(path);
        if (label == null) {
            label = this.criteria.resolve(path);
        }
        if (label == null) {
            Position line = node.getPosition();
            Class expect = this.type.getType();
            if (map.isStrict(this.context) && this.revision.isEqual()) {
                throw new ElementException("Element '%s' does not exist for %s at %s", path, expect, line);
            }
            node.skip();
            return;
        }
        validateUnion(node, map, label);
    }

    private void validateUnion(InputNode node, LabelMap map, Label label) throws Exception {
        String[] list = label.getPaths();
        for (String key : list) {
            map.getLabel(key);
        }
        if (label.isInline()) {
            this.criteria.set(label, null);
        }
        validate(node, label);
    }

    private void validate(InputNode node, Label label) throws Exception {
        Converter reader = label.getConverter(this.context);
        Position line = node.getPosition();
        Class expect = this.type.getType();
        boolean valid = reader.validate(node);
        if (!valid) {
            throw new PersistenceException("Invalid value for %s in %s at %s", label, expect, line);
        }
        this.criteria.set(label, null);
    }

    private void validate(InputNode node, LabelMap map) throws Exception {
        Position line = node.getPosition();
        for (Label label : map) {
            Class expect = this.type.getType();
            if (label.isRequired() && this.revision.isEqual()) {
                throw new ValueRequiredException("Unable to satisfy %s for %s at %s", label, expect, line);
            }
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode node, Object source) throws Exception {
        Schema schema = this.context.getSchema(source.getClass());
        Caller caller = schema.getCaller();
        try {
            if (schema.isPrimitive()) {
                this.primitive.write(node, source);
            } else {
                caller.persist(source);
                write(node, source, schema);
            }
        } finally {
            caller.complete(source);
        }
    }

    private void write(OutputNode node, Object source, Schema schema) throws Exception {
        Section section = schema.getSection();
        writeVersion(node, source, schema);
        writeSection(node, source, section);
    }

    private void writeSection(OutputNode node, Object source, Section section) throws Exception {
        NamespaceMap scope = node.getNamespaces();
        String prefix = section.getPrefix();
        if (prefix != null) {
            String reference = scope.getReference(prefix);
            if (reference == null) {
                throw new ElementException("Namespace prefix '%s' in %s is not in scope", prefix, this.type);
            }
            node.setReference(reference);
        }
        writeAttributes(node, source, section);
        writeElements(node, source, section);
        writeText(node, source, section);
    }

    private void writeVersion(OutputNode node, Object source, Schema schema) throws Exception {
        Version version = schema.getRevision();
        Label label = schema.getVersion();
        if (version != null) {
            Double start = Double.valueOf(this.revision.getDefault());
            Double value = Double.valueOf(version.revision());
            if (this.revision.compare(value, start)) {
                if (label.isRequired()) {
                    writeAttribute(node, value, label);
                    return;
                }
                return;
            }
            writeAttribute(node, value, label);
        }
    }

    private void writeAttributes(OutputNode node, Object source, Section section) throws Exception {
        LabelMap attributes = section.getAttributes();
        for (Label label : attributes) {
            Contact contact = label.getContact();
            Object value = contact.get(source);
            Class expect = this.context.getType(this.type, source);
            if (value == null) {
                value = label.getEmpty(this.context);
            }
            if (value == null && label.isRequired()) {
                throw new AttributeException("Value for %s is null in %s", label, expect);
            }
            writeAttribute(node, value, label);
        }
    }

    private void writeElements(OutputNode node, Object source, Section section) throws Exception {
        for (String name : section) {
            Section child = section.getSection(name);
            if (child != null) {
                OutputNode next = node.getChild(name);
                writeSection(next, source, child);
            } else {
                String path = section.getPath(name);
                Label label = section.getElement(path);
                Class expect = this.context.getType(this.type, source);
                Variable value = this.criteria.get(label);
                if (value != null) {
                    continue;
                } else {
                    if (label == null) {
                        throw new ElementException("Element '%s' not defined in %s", name, expect);
                    }
                    writeUnion(node, source, section, label);
                }
            }
        }
    }

    private void writeUnion(OutputNode node, Object source, Section section, Label label) throws Exception {
        Contact contact = label.getContact();
        Object value = contact.get(source);
        Class expect = this.context.getType(this.type, source);
        if (value == null && label.isRequired()) {
            throw new ElementException("Value for %s is null in %s", label, expect);
        }
        Object replace = writeReplace(value);
        if (replace != null) {
            writeElement(node, replace, label);
        }
        this.criteria.set(label, replace);
    }

    private Object writeReplace(Object source) throws Exception {
        if (source != null) {
            Caller caller = this.context.getCaller(source.getClass());
            return caller.replace(source);
        }
        return source;
    }

    private void writeText(OutputNode node, Object source, Section section) throws Exception {
        Label label = section.getText();
        if (label != null) {
            Contact contact = label.getContact();
            Object value = contact.get(source);
            Class expect = this.context.getType(this.type, source);
            if (value == null) {
                value = label.getEmpty(this.context);
            }
            if (value == null && label.isRequired()) {
                throw new TextException("Value for %s is null in %s", label, expect);
            }
            writeText(node, value, label);
        }
    }

    private void writeAttribute(OutputNode node, Object value, Label label) throws Exception {
        if (value != null) {
            Decorator decorator = label.getDecorator();
            String name = label.getName();
            String text = this.factory.getText(value);
            OutputNode done = node.setAttribute(name, text);
            decorator.decorate(done);
        }
    }

    private void writeElement(OutputNode node, Object value, Label label) throws Exception {
        if (value != null) {
            Class<?> cls = value.getClass();
            Label match = label.getLabel(cls);
            String name = match.getName();
            Type type = label.getType(cls);
            OutputNode next = node.getChild(name);
            if (!match.isInline()) {
                writeNamespaces(next, type, match);
            }
            if (match.isInline() || !isOverridden(next, value, type)) {
                Converter convert = match.getConverter(this.context);
                boolean data = match.isData();
                next.setData(data);
                writeElement(next, value, convert);
            }
        }
    }

    private void writeElement(OutputNode node, Object value, Converter convert) throws Exception {
        convert.write(node, value);
    }

    private void writeNamespaces(OutputNode node, Type type, Label label) throws Exception {
        Class expect = type.getType();
        Decorator primary = this.context.getDecorator(expect);
        Decorator decorator = label.getDecorator();
        decorator.decorate(node, primary);
    }

    private void writeText(OutputNode node, Object value, Label label) throws Exception {
        if (value != null && !label.isTextList()) {
            String text = this.factory.getText(value);
            boolean data = label.isData();
            node.setData(data);
            node.setValue(text);
        }
    }

    private boolean isOverridden(OutputNode node, Object value, Type type) throws Exception {
        return this.factory.setOverride(type, value, node);
    }

    private static class Builder {
        protected final Composite composite;
        protected final Criteria criteria;
        protected final Schema schema;
        protected final Instance value;

        public Builder(Composite composite, Criteria criteria, Schema schema, Instance value) {
            this.composite = composite;
            this.criteria = criteria;
            this.schema = schema;
            this.value = value;
        }

        public Object read(InputNode node) throws Exception {
            Object source = this.value.getInstance();
            Section section = this.schema.getSection();
            this.value.setInstance(source);
            this.composite.readVersion(node, source, this.schema);
            this.composite.readText(node, source, section);
            this.composite.readAttributes(node, source, section);
            this.composite.readElements(node, source, section);
            this.criteria.commit(source);
            return source;
        }
    }

    private class Injector extends Builder {
        private Injector(Composite composite, Criteria criteria, Schema schema, Instance value) {
            super(composite, criteria, schema, value);
        }

        @Override // org.simpleframework.xml.core.Composite.Builder
        public Object read(InputNode node) throws Exception {
            Section section = this.schema.getSection();
            this.composite.readVersion(node, (Object) null, this.schema);
            this.composite.readText(node, null, section);
            this.composite.readAttributes(node, null, section);
            this.composite.readElements(node, null, section);
            return readInject(node);
        }

        private Object readInject(InputNode node) throws Exception {
            Instantiator creator = this.schema.getInstantiator();
            Object source = creator.getInstance(this.criteria);
            this.value.setInstance(source);
            this.criteria.commit(source);
            return source;
        }
    }
}
