package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class EnumTransform implements Transform<Enum> {
    private final Class type;

    public EnumTransform(Class type) {
        this.type = type;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Enum read(String value) throws Exception {
        return Enum.valueOf(this.type, value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Enum value) throws Exception {
        return value.name();
    }
}
