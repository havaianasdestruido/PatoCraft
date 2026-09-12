package org.simpleframework.xml.transform;

import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DateTransform<T extends Date> implements Transform<T> {
    private final DateFactory<T> factory;

    public DateTransform(Class<T> type) throws Exception {
        this.factory = new DateFactory<>(type);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public synchronized T read(String str) throws Exception {
        return (T) this.factory.getInstance(Long.valueOf(DateType.getDate(str).getTime()));
    }

    @Override // org.simpleframework.xml.transform.Transform
    public synchronized String write(T date) throws Exception {
        return DateType.getText(date);
    }
}
