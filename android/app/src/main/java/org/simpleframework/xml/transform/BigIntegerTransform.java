package org.simpleframework.xml.transform;

import java.math.BigInteger;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class BigIntegerTransform implements Transform<BigInteger> {
    BigIntegerTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public BigInteger read(String value) {
        return new BigInteger(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(BigInteger value) {
        return value.toString();
    }
}
