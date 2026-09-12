package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CamelCaseBuilder implements Style {
    protected final boolean attribute;
    protected final boolean element;

    public CamelCaseBuilder(boolean element, boolean attribute) {
        this.attribute = attribute;
        this.element = element;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String name) {
        if (name != null) {
            return new Attribute(name).process();
        }
        return null;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String name) {
        if (name != null) {
            return new Element(name).process();
        }
        return null;
    }

    private class Attribute extends Splitter {
        private boolean capital;

        private Attribute(String source) {
            super(source);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void parse(char[] text, int off, int len) {
            if (CamelCaseBuilder.this.attribute || this.capital) {
                text[off] = toUpper(text[off]);
            }
            this.capital = true;
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void commit(char[] text, int off, int len) {
            this.builder.append(text, off, len);
        }
    }

    private class Element extends Attribute {
        private boolean capital;

        private Element(String source) {
            super(source);
        }

        @Override // org.simpleframework.xml.stream.CamelCaseBuilder.Attribute, org.simpleframework.xml.stream.Splitter
        protected void parse(char[] text, int off, int len) {
            if (CamelCaseBuilder.this.element || this.capital) {
                text[off] = toUpper(text[off]);
            }
            this.capital = true;
        }
    }
}
