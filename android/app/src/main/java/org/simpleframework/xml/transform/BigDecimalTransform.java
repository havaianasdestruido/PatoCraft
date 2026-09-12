package org.simpleframework.xml.transform;

import java.math.BigDecimal;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class BigDecimalTransform implements Transform<BigDecimal> {
    BigDecimalTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public BigDecimal read(String value) {
        return new BigDecimal(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(BigDecimal value) {
        return value.toString();
    }
}
