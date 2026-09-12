package org.simpleframework.xml.transform;

import java.util.Currency;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CurrencyTransform implements Transform<Currency> {
    CurrencyTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public Currency read(String symbol) {
        return Currency.getInstance(symbol);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Currency currency) {
        return currency.toString();
    }
}
