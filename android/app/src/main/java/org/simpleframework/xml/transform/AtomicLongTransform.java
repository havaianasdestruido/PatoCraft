package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AtomicLongTransform implements Transform<AtomicLong> {
    AtomicLongTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public AtomicLong read(String value) {
        Long number = Long.valueOf(value);
        return new AtomicLong(number.longValue());
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(AtomicLong value) {
        return value.toString();
    }
}
