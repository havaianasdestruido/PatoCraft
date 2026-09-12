package org.simpleframework.xml.transform;

import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class LocaleTransform implements Transform<Locale> {
    private final Pattern pattern = Pattern.compile("_");

    @Override // org.simpleframework.xml.transform.Transform
    public Locale read(String locale) throws Exception {
        String[] list = this.pattern.split(locale);
        if (list.length < 1) {
            throw new InvalidFormatException("Invalid locale %s", locale);
        }
        return read(list);
    }

    private Locale read(String[] locale) throws Exception {
        String[] list = new String[3];
        list[0] = "";
        list[1] = "";
        list[2] = "";
        for (int i = 0; i < list.length; i++) {
            if (i < locale.length) {
                list[i] = locale[i];
            }
        }
        return new Locale(list[0], list[1], list[2]);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Locale locale) {
        return locale.toString();
    }
}
