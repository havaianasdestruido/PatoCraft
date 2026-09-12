package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Transient;
import org.simpleframework.xml.Version;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class FieldScanner extends ContactList {
    private final ContactMap done = new ContactMap();
    private final AnnotationFactory factory;
    private final Support support;

    public FieldScanner(Detail detail, Support support) throws Exception {
        this.factory = new AnnotationFactory(detail, support);
        this.support = support;
        scan(detail);
    }

    private void scan(Detail detail) throws Exception {
        DefaultType override = detail.getOverride();
        DefaultType access = detail.getAccess();
        Class base = detail.getSuper();
        if (base != null) {
            extend(base, override);
        }
        extract(detail, access);
        extract(detail);
        build();
    }

    private void extend(Class base, DefaultType access) throws Exception {
        ContactList list = this.support.getFields(base, access);
        if (list != null) {
            addAll(list);
        }
    }

    private void extract(Detail detail) {
        List<FieldDetail> fields = detail.getFields();
        for (FieldDetail entry : fields) {
            Annotation[] list = entry.getAnnotations();
            Field field = entry.getField();
            for (Annotation label : list) {
                scan(field, label, list);
            }
        }
    }

    private void extract(Detail detail, DefaultType access) throws Exception {
        List<FieldDetail> fields = detail.getFields();
        if (access == DefaultType.FIELD) {
            for (FieldDetail entry : fields) {
                Annotation[] list = entry.getAnnotations();
                Field field = entry.getField();
                Class<?> type = field.getType();
                if (!isStatic(field) && !isTransient(field)) {
                    process(field, type, list);
                }
            }
        }
    }

    private void scan(Field field, Annotation label, Annotation[] list) {
        if (label instanceof Attribute) {
            process(field, label, list);
        }
        if (label instanceof ElementUnion) {
            process(field, label, list);
        }
        if (label instanceof ElementListUnion) {
            process(field, label, list);
        }
        if (label instanceof ElementMapUnion) {
            process(field, label, list);
        }
        if (label instanceof ElementList) {
            process(field, label, list);
        }
        if (label instanceof ElementArray) {
            process(field, label, list);
        }
        if (label instanceof ElementMap) {
            process(field, label, list);
        }
        if (label instanceof Element) {
            process(field, label, list);
        }
        if (label instanceof Version) {
            process(field, label, list);
        }
        if (label instanceof Text) {
            process(field, label, list);
        }
        if (label instanceof Transient) {
            remove(field, label);
        }
    }

    private void process(Field field, Class type, Annotation[] list) throws Exception {
        Class[] dependents = Reflector.getDependents(field);
        Annotation label = this.factory.getInstance(type, dependents);
        if (label != null) {
            process(field, label, list);
        }
    }

    private void process(Field field, Annotation label, Annotation[] list) {
        Contact contact = new FieldContact(field, label, list);
        FieldKey key = new FieldKey(field);
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        insert(key, contact);
    }

    private void insert(Object key, Contact contact) {
        Contact existing = (Contact) this.done.remove(key);
        if (existing != null && isText(contact)) {
            contact = existing;
        }
        this.done.put(key, contact);
    }

    private boolean isText(Contact contact) {
        Annotation label = contact.getAnnotation();
        return label instanceof Text;
    }

    private void remove(Field field, Annotation label) {
        this.done.remove(new FieldKey(field));
    }

    private void build() {
        for (Contact contact : this.done) {
            add(contact);
        }
    }

    private boolean isStatic(Field field) {
        int modifier = field.getModifiers();
        return Modifier.isStatic(modifier);
    }

    private boolean isTransient(Field field) {
        int modifier = field.getModifiers();
        return Modifier.isTransient(modifier);
    }

    private static class FieldKey {
        private final String name;
        private final Class type;

        public FieldKey(Field field) {
            this.type = field.getDeclaringClass();
            this.name = field.getName();
        }

        public int hashCode() {
            return this.name.hashCode();
        }

        public boolean equals(Object value) {
            if (value instanceof FieldKey) {
                return equals((FieldKey) value);
            }
            return false;
        }

        private boolean equals(FieldKey other) {
            if (other.type != this.type) {
                return false;
            }
            return other.name.equals(this.name);
        }
    }
}
