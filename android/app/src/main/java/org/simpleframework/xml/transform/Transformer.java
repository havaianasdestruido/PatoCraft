package org.simpleframework.xml.transform;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Transformer {
    private final Cache<Transform> cache = new ConcurrentCache();
    private final Cache<Object> error = new ConcurrentCache();
    private final Matcher matcher;

    public Transformer(Matcher matcher) {
        this.matcher = new DefaultMatcher(matcher);
    }

    public Object read(String value, Class type) throws Exception {
        Transform transform = lookup(type);
        if (transform == null) {
            throw new TransformException("Transform of %s not supported", type);
        }
        return transform.read(value);
    }

    public String write(Object value, Class type) throws Exception {
        Transform transform = lookup(type);
        if (transform == null) {
            throw new TransformException("Transform of %s not supported", type);
        }
        return transform.write(value);
    }

    public boolean valid(Class type) throws Exception {
        return lookup(type) != null;
    }

    private Transform lookup(Class type) throws Exception {
        if (!this.error.contains(type)) {
            Transform transform = this.cache.fetch(type);
            if (transform == null) {
                return match(type);
            }
            return transform;
        }
        return null;
    }

    private Transform match(Class type) throws Exception {
        Transform transform = this.matcher.match(type);
        if (transform != null) {
            this.cache.cache(type, transform);
        } else {
            this.error.cache(type, this);
        }
        return transform;
    }
}
