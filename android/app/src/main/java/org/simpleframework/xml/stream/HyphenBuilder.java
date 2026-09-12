package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class HyphenBuilder implements Style {
    HyphenBuilder() {
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String name) {
        if (name != null) {
            return new Parser(name).process();
        }
        return null;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String name) {
        if (name != null) {
            return new Parser(name).process();
        }
        return null;
    }

    private class Parser extends Splitter {
        private Parser(String source) {
            super(source);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void parse(char[] text, int off, int len) {
            text[off] = toLower(text[off]);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void commit(char[] text, int off, int len) {
            this.builder.append(text, off, len);
            if (off + len < this.count) {
                this.builder.append('-');
            }
        }
    }
}
