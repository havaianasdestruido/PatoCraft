package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Structure {
    private final Instantiator factory;
    private final Model model;
    private final boolean primitive;
    private final Label text;
    private final Label version;

    public Structure(Instantiator factory, Model model, Label version, Label text, boolean primitive) {
        this.primitive = primitive;
        this.factory = factory;
        this.version = version;
        this.model = model;
        this.text = text;
    }

    public Instantiator getInstantiator() {
        return this.factory;
    }

    public Section getSection() {
        return new ModelSection(this.model);
    }

    public boolean isPrimitive() {
        return this.primitive;
    }

    public Version getRevision() {
        if (this.version == null) {
            return null;
        }
        Contact contact = this.version.getContact();
        return (Version) contact.getAnnotation(Version.class);
    }

    public Label getVersion() {
        return this.version;
    }

    public Label getText() {
        return this.text;
    }
}
