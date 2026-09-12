package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Path;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Introspector {
    private final Contact contact;
    private final Format format;
    private final Label label;
    private final Annotation marker;

    public Introspector(Contact contact, Label label, Format format) {
        this.marker = contact.getAnnotation();
        this.contact = contact;
        this.format = format;
        this.label = label;
    }

    public Contact getContact() {
        return this.contact;
    }

    public Type getDependent() throws Exception {
        return this.label.getDependent();
    }

    public String getEntry() throws Exception {
        Type depend = getDependent();
        Class<?> type = depend.getType();
        if (type.isArray()) {
            type = type.getComponentType();
        }
        return getName(type);
    }

    private String getName(Class type) throws Exception {
        String name = getRoot(type);
        return name != null ? name : Reflector.getName(type.getSimpleName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String getRoot(Class type) {
        while (type != null) {
            String name = getRoot(type, type);
            if (name == null) {
                type = type.getSuperclass();
            } else {
                return name;
            }
        }
        return null;
    }

    private String getRoot(Class<?> real, Class<?> type) {
        String name = type.getSimpleName();
        Root root = (Root) type.getAnnotation(Root.class);
        if (root != null) {
            String text = root.name();
            if (isEmpty(text)) {
                return Reflector.getName(name);
            }
            return text;
        }
        return null;
    }

    public String getName() throws Exception {
        String entry = this.label.getEntry();
        if (!this.label.isInline()) {
            String entry2 = getDefault();
            return entry2;
        }
        return entry;
    }

    private String getDefault() throws Exception {
        String name = this.label.getOverride();
        return !isEmpty(name) ? name : this.contact.getName();
    }

    public Expression getExpression() throws Exception {
        String path = getPath();
        return path != null ? new PathParser(path, this.contact, this.format) : new EmptyExpression(this.format);
    }

    public String getPath() throws Exception {
        Path path = (Path) this.contact.getAnnotation(Path.class);
        if (path == null) {
            return null;
        }
        return path.value();
    }

    public boolean isEmpty(String value) {
        return value == null || value.length() == 0;
    }

    public String toString() {
        return String.format("%s on %s", this.marker, this.contact);
    }
}
