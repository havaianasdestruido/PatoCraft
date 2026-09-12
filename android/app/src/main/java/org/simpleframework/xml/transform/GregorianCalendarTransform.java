package org.simpleframework.xml.transform;

import java.util.Date;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class GregorianCalendarTransform implements Transform<GregorianCalendar> {
    private final DateTransform transform;

    public GregorianCalendarTransform() throws Exception {
        this(Date.class);
    }

    public GregorianCalendarTransform(Class type) throws Exception {
        this.transform = new DateTransform(type);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public GregorianCalendar read(String date) throws Exception {
        return read(this.transform.read(date));
    }

    private GregorianCalendar read(Date date) throws Exception {
        GregorianCalendar calendar = new GregorianCalendar();
        if (date != null) {
            calendar.setTime(date);
        }
        return calendar;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(GregorianCalendar date) throws Exception {
        return this.transform.write(date.getTime());
    }
}
