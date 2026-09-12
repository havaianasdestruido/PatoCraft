package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ArrayMatcher implements Matcher {
    private final Matcher primary;

    public ArrayMatcher(Matcher primary) {
        this.primary = primary;
    }

    @Override // org.simpleframework.xml.transform.Matcher
    public Transform match(Class type) throws Exception {
        Class<?> componentType = type.getComponentType();
        if (componentType == Character.TYPE) {
            return new CharacterArrayTransform(componentType);
        }
        if (componentType == Character.class) {
            return new CharacterArrayTransform(componentType);
        }
        if (componentType == String.class) {
            return new StringArrayTransform();
        }
        return matchArray(componentType);
    }

    private Transform matchArray(Class entry) throws Exception {
        Transform transform = this.primary.match(entry);
        if (transform == null) {
            return null;
        }
        return new ArrayTransform(transform, entry);
    }
}
