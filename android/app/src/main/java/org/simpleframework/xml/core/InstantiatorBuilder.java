package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class InstantiatorBuilder {
    private Detail detail;
    private Instantiator factory;
    private Scanner scanner;
    private List<Creator> options = new ArrayList();
    private Comparer comparer = new Comparer();
    private LabelMap attributes = new LabelMap();
    private LabelMap elements = new LabelMap();
    private LabelMap texts = new LabelMap();

    public InstantiatorBuilder(Scanner scanner, Detail detail) {
        this.scanner = scanner;
        this.detail = detail;
    }

    public Instantiator build() throws Exception {
        if (this.factory == null) {
            populate(this.detail);
            build(this.detail);
            validate(this.detail);
        }
        return this.factory;
    }

    private Instantiator build(Detail detail) throws Exception {
        if (this.factory == null) {
            this.factory = create(detail);
        }
        return this.factory;
    }

    private Instantiator create(Detail detail) throws Exception {
        Signature primary = this.scanner.getSignature();
        ParameterMap registry = this.scanner.getParameters();
        Creator creator = null;
        if (primary != null) {
            creator = new SignatureCreator(primary);
        }
        return new ClassInstantiator(this.options, creator, registry, detail);
    }

    private Creator create(Signature signature) {
        Creator creator = new SignatureCreator(signature);
        if (signature != null) {
            this.options.add(creator);
        }
        return creator;
    }

    private Parameter create(Parameter original) throws Exception {
        Label label = resolve(original);
        if (label != null) {
            return new CacheParameter(original, label);
        }
        return null;
    }

    private void populate(Detail detail) throws Exception {
        List<Signature> list = this.scanner.getSignatures();
        for (Signature signature : list) {
            populate(signature);
        }
    }

    private void populate(Signature signature) throws Exception {
        Signature substitute = new Signature(signature);
        for (Parameter parameter : signature) {
            Parameter replace = create(parameter);
            if (replace != null) {
                substitute.add(replace);
            }
        }
        create(substitute);
    }

    private void validate(Detail detail) throws Exception {
        ParameterMap registry = this.scanner.getParameters();
        List<Parameter> list = registry.getAll();
        for (Parameter parameter : list) {
            Label label = resolve(parameter);
            String path = parameter.getPath();
            if (label == null) {
                throw new ConstructorException("Parameter '%s' does not have a match in %s", path, detail);
            }
            validateParameter(label, parameter);
        }
        validateConstructors();
    }

    private void validateParameter(Label label, Parameter parameter) throws Exception {
        Contact contact = label.getContact();
        String name = parameter.getName();
        Class expect = parameter.getType();
        Class actual = contact.getType();
        if (!Support.isAssignable(expect, actual)) {
            throw new ConstructorException("Type is not compatible with %s for '%s' in %s", label, name, parameter);
        }
        validateNames(label, parameter);
        validateAnnotations(label, parameter);
    }

    private void validateNames(Label label, Parameter parameter) throws Exception {
        String require;
        String[] options = label.getNames();
        String name = parameter.getName();
        if (!contains(options, name) && name != (require = label.getName())) {
            if (name == null || require == null) {
                throw new ConstructorException("Annotation does not match %s for '%s' in %s", label, name, parameter);
            }
            if (!name.equals(require)) {
                throw new ConstructorException("Annotation does not match %s for '%s' in %s", label, name, parameter);
            }
        }
    }

    private void validateAnnotations(Label label, Parameter parameter) throws Exception {
        Annotation field = label.getAnnotation();
        Annotation argument = parameter.getAnnotation();
        String name = parameter.getName();
        if (!this.comparer.equals(field, argument)) {
            Class<? extends Annotation> clsAnnotationType = field.annotationType();
            Class<? extends Annotation> clsAnnotationType2 = argument.annotationType();
            if (!clsAnnotationType.equals(clsAnnotationType2)) {
                throw new ConstructorException("Annotation %s does not match %s for '%s' in %s", clsAnnotationType2, clsAnnotationType, name, parameter);
            }
        }
    }

    private void validateConstructors() throws Exception {
        List<Creator> list = this.factory.getCreators();
        if (this.factory.isDefault()) {
            validateConstructors(this.elements);
            validateConstructors(this.attributes);
        }
        if (!list.isEmpty()) {
            validateConstructors(this.elements, list);
            validateConstructors(this.attributes, list);
        }
    }

    private void validateConstructors(LabelMap map) throws Exception {
        for (Label label : map) {
            if (label != null) {
                Contact contact = label.getContact();
                if (contact.isReadOnly()) {
                    throw new ConstructorException("Default constructor can not accept read only %s in %s", label, this.detail);
                }
            }
        }
    }

    private void validateConstructors(LabelMap map, List<Creator> list) throws Exception {
        for (Label label : map) {
            if (label != null) {
                validateConstructor(label, list);
            }
        }
        if (list.isEmpty()) {
            throw new ConstructorException("No constructor accepts all read only values in %s", this.detail);
        }
    }

    private void validateConstructor(Label label, List<Creator> list) throws Exception {
        Iterator<Creator> iterator = list.iterator();
        while (iterator.hasNext()) {
            Creator instantiator = iterator.next();
            Signature signature = instantiator.getSignature();
            Contact contact = label.getContact();
            Object key = label.getKey();
            if (contact.isReadOnly()) {
                Parameter value = signature.get(key);
                if (value == null) {
                    iterator.remove();
                }
            }
        }
    }

    public void register(Label label) throws Exception {
        if (label.isAttribute()) {
            register(label, this.attributes);
        } else if (label.isText()) {
            register(label, this.texts);
        } else {
            register(label, this.elements);
        }
    }

    private void register(Label label, LabelMap map) throws Exception {
        String name = label.getName();
        String path = label.getPath();
        if (map.containsKey(name)) {
            Label current = map.get(name);
            String key = current.getPath();
            if (!key.equals(name)) {
                map.remove(name);
            }
        } else {
            map.put(name, label);
        }
        map.put(path, label);
    }

    private Label resolve(Parameter parameter) throws Exception {
        if (parameter.isAttribute()) {
            return resolve(parameter, this.attributes);
        }
        if (parameter.isText()) {
            return resolve(parameter, this.texts);
        }
        return resolve(parameter, this.elements);
    }

    private Label resolve(Parameter parameter, LabelMap map) throws Exception {
        String name = parameter.getName();
        String path = parameter.getPath();
        Label label = map.get(path);
        return label == null ? map.get(name) : label;
    }

    private boolean contains(String[] list, String value) throws Exception {
        for (String entry : list) {
            if (entry == value || entry.equals(value)) {
                return true;
            }
        }
        return false;
    }
}
