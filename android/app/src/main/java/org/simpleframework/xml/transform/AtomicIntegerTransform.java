package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AtomicIntegerTransform implements Transform<AtomicInteger> {
    AtomicIntegerTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public AtomicInteger read(String value) {
        Integer number = Integer.valueOf(value);
        return new AtomicInteger(number.intValue());
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(AtomicInteger value) {
        return value.toString();
    }
}
