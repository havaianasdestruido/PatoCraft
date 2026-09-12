package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.stream.Format;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class GroupExtractor implements Group {
    private final ExtractorFactory factory;
    private final Annotation label;
    private final LabelMap elements = new LabelMap();
    private final Registry registry = new Registry(this.elements);

    public GroupExtractor(Contact contact, Annotation label, Format format) throws Exception {
        this.factory = new ExtractorFactory(contact, label, format);
        this.label = label;
        extract();
    }

    public String[] getNames() throws Exception {
        return this.elements.getKeys();
    }

    public String[] getPaths() throws Exception {
        return this.elements.getPaths();
    }

    @Override // org.simpleframework.xml.core.Group
    public LabelMap getElements() throws Exception {
        return this.elements.getLabels();
    }

    @Override // org.simpleframework.xml.core.Group
    public Label getLabel(Class type) {
        return this.registry.resolve(type);
    }

    @Override // org.simpleframework.xml.core.Group
    public Label getText() {
        return this.registry.resolveText();
    }

    public boolean isValid(Class type) {
        return this.registry.resolve(type) != null;
    }

    public boolean isDeclared(Class type) {
        return this.registry.containsKey(type);
    }

    @Override // org.simpleframework.xml.core.Group
    public boolean isInline() {
        for (Label label : this.registry) {
            if (!label.isInline()) {
                return false;
            }
        }
        return !this.registry.isEmpty();
    }

    @Override // org.simpleframework.xml.core.Group
    public boolean isTextList() {
        return this.registry.isText();
    }

    private void extract() throws Exception {
        Extractor extractor = this.factory.getInstance();
        if (extractor != null) {
            extract(extractor);
        }
    }

    private void extract(Extractor extractor) throws Exception {
        Annotation[] list = extractor.getAnnotations();
        for (Annotation label : list) {
            extract(extractor, label);
        }
    }

    private void extract(Extractor extractor, Annotation value) throws Exception {
        Label label = extractor.getLabel(value);
        Class type = extractor.getType(value);
        if (this.registry != null) {
            this.registry.register(type, label);
        }
    }

    @Override // org.simpleframework.xml.core.Group
    public String toString() {
        return this.label.toString();
    }

    private static class Registry extends LinkedHashMap<Class, Label> implements Iterable<Label> {
        private LabelMap elements;
        private Label text;

        public Registry(LabelMap elements) {
            this.elements = elements;
        }

        public boolean isText() {
            return this.text != null;
        }

        @Override // java.lang.Iterable
        public Iterator<Label> iterator() {
            return values().iterator();
        }

        public Label resolveText() {
            return resolveText(String.class);
        }

        public Label resolve(Class type) {
            Label label = resolveText(type);
            if (label == null) {
                return resolveElement(type);
            }
            return label;
        }

        private Label resolveText(Class type) {
            if (this.text == null || type != String.class) {
                return null;
            }
            return this.text;
        }

        private Label resolveElement(Class type) {
            while (type != null) {
                Label label = get(type);
                if (label == null) {
                    type = type.getSuperclass();
                } else {
                    return label;
                }
            }
            return null;
        }

        public void register(Class type, Label label) throws Exception {
            Label cache = new CacheLabel(label);
            registerElement(type, cache);
            registerText(cache);
        }

        private void registerElement(Class type, Label label) throws Exception {
            String name = label.getName();
            if (!this.elements.containsKey(name)) {
                this.elements.put(name, label);
            }
            if (!containsKey(type)) {
                put(type, label);
            }
        }

        private void registerText(Label label) throws Exception {
            Contact contact = label.getContact();
            Text value = (Text) contact.getAnnotation(Text.class);
            if (value != null) {
                this.text = new TextListLabel(label, value);
            }
        }
    }
}
