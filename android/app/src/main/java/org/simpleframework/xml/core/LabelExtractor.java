package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class LabelExtractor {
    private final Cache<LabelGroup> cache = new ConcurrentCache();
    private final Format format;

    public LabelExtractor(Format format) {
        this.format = format;
    }

    public Label getLabel(Contact contact, Annotation label) throws Exception {
        Object key = getKey(contact, label);
        LabelGroup list = getGroup(contact, label, key);
        if (list != null) {
            return list.getPrimary();
        }
        return null;
    }

    public List<Label> getList(Contact contact, Annotation label) throws Exception {
        Object key = getKey(contact, label);
        LabelGroup list = getGroup(contact, label, key);
        return list != null ? list.getList() : Collections.emptyList();
    }

    private LabelGroup getGroup(Contact contact, Annotation label, Object key) throws Exception {
        LabelGroup value = this.cache.fetch(key);
        if (value != null) {
            return value;
        }
        LabelGroup list = getLabels(contact, label);
        if (list != null) {
            this.cache.cache(key, list);
            return list;
        }
        return list;
    }

    private LabelGroup getLabels(Contact contact, Annotation label) throws Exception {
        if (label instanceof ElementUnion) {
            return getUnion(contact, label);
        }
        if (label instanceof ElementListUnion) {
            return getUnion(contact, label);
        }
        if (label instanceof ElementMapUnion) {
            return getUnion(contact, label);
        }
        return getSingle(contact, label);
    }

    private LabelGroup getSingle(Contact contact, Annotation label) throws Exception {
        Label value = getLabel(contact, label, null);
        if (value != null) {
            value = new CacheLabel(value);
        }
        return new LabelGroup(value);
    }

    private LabelGroup getUnion(Contact contact, Annotation label) throws Exception {
        Annotation[] list = getAnnotations(label);
        if (list.length <= 0) {
            return null;
        }
        List<Label> labels = new LinkedList<>();
        for (Annotation value : list) {
            Label entry = getLabel(contact, label, value);
            if (entry != null) {
                entry = new CacheLabel(entry);
            }
            labels.add(entry);
        }
        return new LabelGroup(labels);
    }

    private Annotation[] getAnnotations(Annotation label) throws Exception {
        Method[] list = label.annotationType().getDeclaredMethods();
        if (list.length <= 0) {
            return new Annotation[0];
        }
        Method method = list[0];
        Object value = method.invoke(label, new Object[0]);
        return (Annotation[]) value;
    }

    private Label getLabel(Contact contact, Annotation label, Annotation entry) throws Exception {
        Constructor factory = getConstructor(label);
        return entry != null ? (Label) factory.newInstance(contact, label, entry, this.format) : (Label) factory.newInstance(contact, label, this.format);
    }

    private Object getKey(Contact contact, Annotation label) {
        return new LabelKey(contact, label);
    }

    private Constructor getConstructor(Annotation label) throws Exception {
        LabelBuilder builder = getBuilder(label);
        Constructor factory = builder.getConstructor();
        if (!factory.isAccessible()) {
            factory.setAccessible(true);
        }
        return factory;
    }

    private LabelBuilder getBuilder(Annotation label) throws Exception {
        if (label instanceof Element) {
            return new LabelBuilder(ElementLabel.class, Element.class);
        }
        if (label instanceof ElementList) {
            return new LabelBuilder(ElementListLabel.class, ElementList.class);
        }
        if (label instanceof ElementArray) {
            return new LabelBuilder(ElementArrayLabel.class, ElementArray.class);
        }
        if (label instanceof ElementMap) {
            return new LabelBuilder(ElementMapLabel.class, ElementMap.class);
        }
        if (label instanceof ElementUnion) {
            return new LabelBuilder(ElementUnionLabel.class, ElementUnion.class, Element.class);
        }
        if (label instanceof ElementListUnion) {
            return new LabelBuilder(ElementListUnionLabel.class, ElementListUnion.class, ElementList.class);
        }
        if (label instanceof ElementMapUnion) {
            return new LabelBuilder(ElementMapUnionLabel.class, ElementMapUnion.class, ElementMap.class);
        }
        if (label instanceof Attribute) {
            return new LabelBuilder(AttributeLabel.class, Attribute.class);
        }
        if (label instanceof Version) {
            return new LabelBuilder(VersionLabel.class, Version.class);
        }
        if (label instanceof Text) {
            return new LabelBuilder(TextLabel.class, Text.class);
        }
        throw new PersistenceException("Annotation %s not supported", label);
    }

    private static class LabelBuilder {
        private final Class entry;
        private final Class label;
        private final Class type;

        public LabelBuilder(Class type, Class label) {
            this(type, label, null);
        }

        public LabelBuilder(Class type, Class label, Class entry) {
            this.entry = entry;
            this.label = label;
            this.type = type;
        }

        public Constructor getConstructor() throws Exception {
            return this.entry != null ? getConstructor(this.label, this.entry) : getConstructor(this.label);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Constructor getConstructor(Class label) throws Exception {
            return this.type.getConstructor(Contact.class, label, Format.class);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Constructor getConstructor(Class label, Class entry) throws Exception {
            return this.type.getConstructor(Contact.class, label, entry, Format.class);
        }
    }
}
