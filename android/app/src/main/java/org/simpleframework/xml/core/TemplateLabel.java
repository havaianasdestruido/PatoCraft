package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
abstract class TemplateLabel implements Label {
    private final KeyBuilder builder = new KeyBuilder(this);

    protected TemplateLabel() {
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getType(Class type) throws Exception {
        return getContact();
    }

    @Override // org.simpleframework.xml.core.Label
    public Label getLabel(Class type) throws Exception {
        return this;
    }

    @Override // org.simpleframework.xml.core.Label
    public String[] getNames() throws Exception {
        String path = getPath();
        String name = getName();
        return new String[]{path, name};
    }

    @Override // org.simpleframework.xml.core.Label
    public String[] getPaths() throws Exception {
        String path = getPath();
        return new String[]{path};
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getKey() throws Exception {
        return this.builder.getKey();
    }

    @Override // org.simpleframework.xml.core.Label
    public String getEntry() throws Exception {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public Type getDependent() throws Exception {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isAttribute() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isCollection() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isInline() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isText() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isTextList() {
        return false;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isUnion() {
        return false;
    }
}
