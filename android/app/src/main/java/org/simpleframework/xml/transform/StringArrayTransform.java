package org.simpleframework.xml.transform;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class StringArrayTransform implements Transform<String[]> {
    private final Pattern pattern;
    private final String token;

    public StringArrayTransform() {
        this(",");
    }

    public StringArrayTransform(String token) {
        this.pattern = Pattern.compile(token);
        this.token = token;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String[] read(String value) {
        return read(value, this.token);
    }

    private String[] read(String value, String token) {
        String[] list = this.pattern.split(value);
        for (int i = 0; i < list.length; i++) {
            String text = list[i];
            if (text != null) {
                list[i] = text.trim();
            }
        }
        return list;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(String[] list) {
        return write(list, this.token);
    }

    private String write(String[] list, String token) {
        StringBuilder text = new StringBuilder();
        for (String item : list) {
            if (item != null) {
                if (text.length() > 0) {
                    text.append(token);
                    text.append(' ');
                }
                text.append(item);
            }
        }
        return text.toString();
    }
}
