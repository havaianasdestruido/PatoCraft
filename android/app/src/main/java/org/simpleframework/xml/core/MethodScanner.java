package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedHashMap;
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
class MethodScanner extends ContactList {
    private final Detail detail;
    private final MethodPartFactory factory;
    private final PartMap read;
    private final Support support;
    private final PartMap write;

    public MethodScanner(Detail detail, Support support) throws Exception {
        this.factory = new MethodPartFactory(detail, support);
        this.write = new PartMap();
        this.read = new PartMap();
        this.support = support;
        this.detail = detail;
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
        validate();
    }

    private void extend(Class base, DefaultType access) throws Exception {
        ContactList list = this.support.getMethods(base, access);
        for (Contact contact : list) {
            process((MethodContact) contact);
        }
    }

    private void extract(Detail detail) throws Exception {
        List<MethodDetail> methods = detail.getMethods();
        for (MethodDetail entry : methods) {
            Annotation[] list = entry.getAnnotations();
            Method method = entry.getMethod();
            for (Annotation label : list) {
                scan(method, label, list);
            }
        }
    }

    private void extract(Detail detail, DefaultType access) throws Exception {
        List<MethodDetail> methods = detail.getMethods();
        if (access == DefaultType.PROPERTY) {
            for (MethodDetail entry : methods) {
                Annotation[] list = entry.getAnnotations();
                Method method = entry.getMethod();
                Class value = this.factory.getType(method);
                if (value != null) {
                    process(method, list);
                }
            }
        }
    }

    private void scan(Method method, Annotation label, Annotation[] list) throws Exception {
        if (label instanceof Attribute) {
            process(method, label, list);
        }
        if (label instanceof ElementUnion) {
            process(method, label, list);
        }
        if (label instanceof ElementListUnion) {
            process(method, label, list);
        }
        if (label instanceof ElementMapUnion) {
            process(method, label, list);
        }
        if (label instanceof ElementList) {
            process(method, label, list);
        }
        if (label instanceof ElementArray) {
            process(method, label, list);
        }
        if (label instanceof ElementMap) {
            process(method, label, list);
        }
        if (label instanceof Element) {
            process(method, label, list);
        }
        if (label instanceof Version) {
            process(method, label, list);
        }
        if (label instanceof Text) {
            process(method, label, list);
        }
        if (label instanceof Transient) {
            remove(method, label, list);
        }
    }

    private void process(Method method, Annotation label, Annotation[] list) throws Exception {
        MethodPart part = this.factory.getInstance(method, label, list);
        MethodType type = part.getMethodType();
        if (type == MethodType.GET) {
            process(part, this.read);
        }
        if (type == MethodType.IS) {
            process(part, this.read);
        }
        if (type == MethodType.SET) {
            process(part, this.write);
        }
    }

    private void process(Method method, Annotation[] list) throws Exception {
        MethodPart part = this.factory.getInstance(method, list);
        MethodType type = part.getMethodType();
        if (type == MethodType.GET) {
            process(part, this.read);
        }
        if (type == MethodType.IS) {
            process(part, this.read);
        }
        if (type == MethodType.SET) {
            process(part, this.write);
        }
    }

    private void process(MethodPart method, PartMap map) {
        String name = method.getName();
        if (name != null) {
            map.put(name, method);
        }
    }

    private void process(MethodContact contact) {
        MethodPart get = contact.getRead();
        MethodPart set = contact.getWrite();
        if (set != null) {
            insert(set, this.write);
        }
        insert(get, this.read);
    }

    private void insert(MethodPart method, PartMap map) {
        String name = method.getName();
        MethodPart existing = (MethodPart) map.remove(name);
        if (existing != null && isText(method)) {
            method = existing;
        }
        map.put(name, method);
    }

    private boolean isText(MethodPart method) {
        Annotation label = method.getAnnotation();
        return label instanceof Text;
    }

    private void remove(Method method, Annotation label, Annotation[] list) throws Exception {
        MethodPart part = this.factory.getInstance(method, label, list);
        MethodType type = part.getMethodType();
        if (type == MethodType.GET) {
            remove(part, this.read);
        }
        if (type == MethodType.IS) {
            remove(part, this.read);
        }
        if (type == MethodType.SET) {
            remove(part, this.write);
        }
    }

    private void remove(MethodPart part, PartMap map) throws Exception {
        String name = part.getName();
        if (name != null) {
            map.remove(name);
        }
    }

    private void build() throws Exception {
        for (String name : this.read) {
            MethodPart part = this.read.get(name);
            if (part != null) {
                build(part, name);
            }
        }
    }

    private void build(MethodPart read, String name) throws Exception {
        MethodPart match = this.write.take(name);
        if (match != null) {
            build(read, match);
        } else {
            build(read);
        }
    }

    private void build(MethodPart read) throws Exception {
        add(new MethodContact(read));
    }

    private void build(MethodPart read, MethodPart write) throws Exception {
        Annotation label = read.getAnnotation();
        String name = read.getName();
        if (!write.getAnnotation().equals(label)) {
            throw new MethodException("Annotations do not match for '%s' in %s", name, this.detail);
        }
        Class type = read.getType();
        if (type != write.getType()) {
            throw new MethodException("Method types do not match for %s in %s", name, type);
        }
        add(new MethodContact(read, write));
    }

    private void validate() throws Exception {
        for (String name : this.write) {
            MethodPart part = this.write.get(name);
            if (part != null) {
                validate(part, name);
            }
        }
    }

    private void validate(MethodPart write, String name) throws Exception {
        MethodPart match = this.read.take(name);
        Method method = write.getMethod();
        if (match == null) {
            throw new MethodException("No matching get method for %s in %s", method, this.detail);
        }
    }

    private static class PartMap extends LinkedHashMap<String, MethodPart> implements Iterable<String> {
        private PartMap() {
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return keySet().iterator();
        }

        public MethodPart take(String name) {
            return (MethodPart) remove(name);
        }
    }
}
