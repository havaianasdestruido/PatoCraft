package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Indenter {
    private Cache cache;
    private int count;
    private int indent;
    private int index;

    public Indenter() {
        this(new Format());
    }

    public Indenter(Format format) {
        this(format, 16);
    }

    private Indenter(Format format, int size) {
        this.indent = format.getIndent();
        this.cache = new Cache(size);
    }

    public String top() {
        return indent(this.index);
    }

    public String push() {
        int i = this.index;
        this.index = i + 1;
        String text = indent(i);
        if (this.indent > 0) {
            this.count += this.indent;
        }
        return text;
    }

    public String pop() {
        int i = this.index - 1;
        this.index = i;
        String text = indent(i);
        if (this.indent > 0) {
            this.count -= this.indent;
        }
        return text;
    }

    private String indent(int index) {
        if (this.indent > 0) {
            String text = this.cache.get(index);
            if (text == null) {
                text = create();
                this.cache.set(index, text);
            }
            if (this.cache.size() > 0) {
                return text;
            }
        }
        return "";
    }

    private String create() {
        char[] text = new char[this.count + 1];
        if (this.count <= 0) {
            return "\n";
        }
        text[0] = '\n';
        for (int i = 1; i <= this.count; i++) {
            text[i] = ' ';
        }
        return new String(text);
    }

    private static class Cache {
        private int count;
        private String[] list;

        public Cache(int size) {
            this.list = new String[size];
        }

        public int size() {
            return this.count;
        }

        public void set(int index, String text) {
            if (index >= this.list.length) {
                resize(index * 2);
            }
            if (index > this.count) {
                this.count = index;
            }
            this.list[index] = text;
        }

        public String get(int index) {
            if (index < this.list.length) {
                return this.list[index];
            }
            return null;
        }

        private void resize(int size) {
            String[] temp = new String[size];
            for (int i = 0; i < this.list.length; i++) {
                temp[i] = this.list[i];
            }
            this.list = temp;
        }
    }
}
