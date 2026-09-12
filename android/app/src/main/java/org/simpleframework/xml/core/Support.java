package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.filter.PlatformFilter;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;
import org.simpleframework.xml.transform.Matcher;
import org.simpleframework.xml.transform.Transform;
import org.simpleframework.xml.transform.Transformer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Support implements Filter {
    private final DetailExtractor defaults;
    private final DetailExtractor details;
    private final Filter filter;
    private final Format format;
    private final InstanceFactory instances;
    private final LabelExtractor labels;
    private final Matcher matcher;
    private final ScannerFactory scanners;
    private final Transformer transform;

    public Support() {
        this(new PlatformFilter());
    }

    public Support(Filter filter) {
        this(filter, new EmptyMatcher());
    }

    public Support(Filter filter, Matcher matcher) {
        this(filter, matcher, new Format());
    }

    public Support(Filter filter, Matcher matcher, Format format) {
        this.defaults = new DetailExtractor(this, DefaultType.FIELD);
        this.transform = new Transformer(matcher);
        this.scanners = new ScannerFactory(this);
        this.details = new DetailExtractor(this);
        this.labels = new LabelExtractor(format);
        this.instances = new InstanceFactory();
        this.matcher = matcher;
        this.filter = filter;
        this.format = format;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String text) {
        return this.filter.replace(text);
    }

    public Style getStyle() {
        return this.format.getStyle();
    }

    public Format getFormat() {
        return this.format;
    }

    public Instance getInstance(Value value) {
        return this.instances.getInstance(value);
    }

    public Instance getInstance(Class type) {
        return this.instances.getInstance(type);
    }

    public Transform getTransform(Class type) throws Exception {
        return this.matcher.match(type);
    }

    public Label getLabel(Contact contact, Annotation label) throws Exception {
        return this.labels.getLabel(contact, label);
    }

    public List<Label> getLabels(Contact contact, Annotation label) throws Exception {
        return this.labels.getList(contact, label);
    }

    public Detail getDetail(Class type) {
        return getDetail(type, null);
    }

    public Detail getDetail(Class type, DefaultType access) {
        return access != null ? this.defaults.getDetail(type) : this.details.getDetail(type);
    }

    public ContactList getFields(Class type) throws Exception {
        return getFields(type, null);
    }

    public ContactList getFields(Class type, DefaultType access) throws Exception {
        return access != null ? this.defaults.getFields(type) : this.details.getFields(type);
    }

    public ContactList getMethods(Class type) throws Exception {
        return getMethods(type, null);
    }

    public ContactList getMethods(Class type, DefaultType access) throws Exception {
        return access != null ? this.defaults.getMethods(type) : this.details.getMethods(type);
    }

    public Scanner getScanner(Class type) throws Exception {
        return this.scanners.getInstance(type);
    }

    public Object read(String value, Class type) throws Exception {
        return this.transform.read(value, type);
    }

    public String write(Object value, Class type) throws Exception {
        return this.transform.write(value, type);
    }

    public boolean valid(Class type) throws Exception {
        return this.transform.valid(type);
    }

    public String getName(Class type) throws Exception {
        Scanner schema = getScanner(type);
        String name = schema.getName();
        return name != null ? name : getClassName(type);
    }

    private String getClassName(Class type) throws Exception {
        if (type.isArray()) {
            type = type.getComponentType();
        }
        String name = type.getSimpleName();
        return type.isPrimitive() ? name : Reflector.getName(name);
    }

    public boolean isPrimitive(Class type) throws Exception {
        if (type == String.class || type == Float.class || type == Double.class || type == Long.class || type == Integer.class || type == Boolean.class || type.isEnum() || type.isPrimitive()) {
            return true;
        }
        return this.transform.valid(type);
    }

    public boolean isContainer(Class type) {
        if (Collection.class.isAssignableFrom(type) || Map.class.isAssignableFrom(type)) {
            return true;
        }
        return type.isArray();
    }

    public static boolean isFloat(Class type) throws Exception {
        return type == Double.class || type == Float.class || type == Float.TYPE || type == Double.TYPE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isAssignable(Class cls, Class cls2) {
        if (cls.isPrimitive()) {
            cls = getPrimitive(cls);
        }
        boolean zIsPrimitive = cls2.isPrimitive();
        Class primitive = cls2;
        if (zIsPrimitive) {
            primitive = getPrimitive(cls2);
        }
        return primitive.isAssignableFrom(cls);
    }

    public static Class getPrimitive(Class type) {
        if (type == Double.TYPE) {
            return Double.class;
        }
        if (type == Float.TYPE) {
            return Float.class;
        }
        if (type == Integer.TYPE) {
            return Integer.class;
        }
        if (type == Long.TYPE) {
            return Long.class;
        }
        if (type == Boolean.TYPE) {
            return Boolean.class;
        }
        if (type == Character.TYPE) {
            return Character.class;
        }
        if (type == Short.TYPE) {
            return Short.class;
        }
        if (type == Byte.TYPE) {
            return Byte.class;
        }
        return type;
    }
}
