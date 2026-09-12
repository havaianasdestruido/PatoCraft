package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DefaultMatcher implements Matcher {
    private Matcher matcher;
    private Matcher primitive = new PrimitiveMatcher();
    private Matcher stock = new PackageMatcher();
    private Matcher array = new ArrayMatcher(this);

    public DefaultMatcher(Matcher matcher) {
        this.matcher = matcher;
    }

    @Override // org.simpleframework.xml.transform.Matcher
    public Transform match(Class type) throws Exception {
        Transform value = this.matcher.match(type);
        return value != null ? value : matchType(type);
    }

    private Transform matchType(Class type) throws Exception {
        if (type.isArray()) {
            return this.array.match(type);
        }
        if (type.isPrimitive()) {
            return this.primitive.match(type);
        }
        return this.stock.match(type);
    }
}
