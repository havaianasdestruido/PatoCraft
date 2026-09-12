package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class TemplateEngine {
    private Filter filter;
    private int off;
    private Template source = new Template();
    private Template name = new Template();
    private Template text = new Template();

    public TemplateEngine(Filter filter) {
        this.filter = filter;
    }

    public String process(String value) {
        if (value.indexOf(36) >= 0) {
            try {
                this.source.append(value);
                parse();
                value = this.text.toString();
            } finally {
                clear();
            }
        }
        return value;
    }

    private void parse() {
        while (this.off < this.source.count) {
            char[] cArr = this.source.buf;
            int i = this.off;
            this.off = i + 1;
            char next = cArr[i];
            if (next == '$' && this.off < this.source.count) {
                char[] cArr2 = this.source.buf;
                int i2 = this.off;
                this.off = i2 + 1;
                if (cArr2[i2] == '{') {
                    name();
                } else {
                    this.off--;
                }
            }
            this.text.append(next);
        }
    }

    private void name() {
        while (this.off < this.source.count) {
            char[] cArr = this.source.buf;
            int i = this.off;
            this.off = i + 1;
            char next = cArr[i];
            if (next == '}') {
                replace();
                break;
            }
            this.name.append(next);
        }
        if (this.name.length() > 0) {
            this.text.append("${");
            this.text.append(this.name);
        }
    }

    private void replace() {
        if (this.name.length() > 0) {
            replace(this.name);
        }
        this.name.clear();
    }

    private void replace(Template name) {
        replace(name.toString());
    }

    private void replace(String name) {
        String value = this.filter.replace(name);
        if (value == null) {
            this.text.append("${");
            this.text.append(name);
            this.text.append("}");
            return;
        }
        this.text.append(value);
    }

    public void clear() {
        this.name.clear();
        this.text.clear();
        this.source.clear();
        this.off = 0;
    }
}
