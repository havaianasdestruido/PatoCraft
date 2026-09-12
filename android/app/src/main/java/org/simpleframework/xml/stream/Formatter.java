package org.simpleframework.xml.stream;

import android.support.v4.view.MotionEventCompat;
import java.io.BufferedWriter;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Formatter {
    private OutputBuffer buffer = new OutputBuffer();
    private Indenter indenter;
    private Tag last;
    private String prolog;
    private Writer result;
    private static final char[] NAMESPACE = {'x', 'm', 'l', 'n', 's'};
    private static final char[] LESS = {'&', 'l', 't', ';'};
    private static final char[] GREATER = {'&', 'g', 't', ';'};
    private static final char[] DOUBLE = {'&', 'q', 'u', 'o', 't', ';'};
    private static final char[] SINGLE = {'&', 'a', 'p', 'o', 's', ';'};
    private static final char[] AND = {'&', 'a', 'm', 'p', ';'};
    private static final char[] OPEN = {'<', '!', '-', '-', ' '};
    private static final char[] CLOSE = {' ', '-', '-', '>'};

    private enum Tag {
        COMMENT,
        START,
        TEXT,
        END
    }

    public Formatter(Writer result, Format format) {
        this.result = new BufferedWriter(result, 1024);
        this.indenter = new Indenter(format);
        this.prolog = format.getProlog();
    }

    public void writeProlog() throws Exception {
        if (this.prolog != null) {
            write(this.prolog);
            write("\n");
        }
    }

    public void writeComment(String comment) throws Exception {
        String text = this.indenter.top();
        if (this.last == Tag.START) {
            append('>');
        }
        if (text != null) {
            append(text);
            append(OPEN);
            append(comment);
            append(CLOSE);
        }
        this.last = Tag.COMMENT;
    }

    public void writeStart(String name, String prefix) throws Exception {
        String text = this.indenter.push();
        if (this.last == Tag.START) {
            append('>');
        }
        flush();
        append(text);
        append('<');
        if (!isEmpty(prefix)) {
            append(prefix);
            append(':');
        }
        append(name);
        this.last = Tag.START;
    }

    public void writeAttribute(String name, String value, String prefix) throws Exception {
        if (this.last != Tag.START) {
            throw new NodeException("Start element required");
        }
        write(' ');
        write(name, prefix);
        write('=');
        write('\"');
        escape(value);
        write('\"');
    }

    public void writeNamespace(String reference, String prefix) throws Exception {
        if (this.last != Tag.START) {
            throw new NodeException("Start element required");
        }
        write(' ');
        write(NAMESPACE);
        if (!isEmpty(prefix)) {
            write(':');
            write(prefix);
        }
        write('=');
        write('\"');
        escape(reference);
        write('\"');
    }

    public void writeText(String text) throws Exception {
        writeText(text, Mode.ESCAPE);
    }

    public void writeText(String text, Mode mode) throws Exception {
        if (this.last == Tag.START) {
            write('>');
        }
        if (mode == Mode.DATA) {
            data(text);
        } else {
            escape(text);
        }
        this.last = Tag.TEXT;
    }

    public void writeEnd(String name, String prefix) throws Exception {
        String text = this.indenter.pop();
        if (this.last == Tag.START) {
            write('/');
            write('>');
        } else {
            if (this.last != Tag.TEXT) {
                write(text);
            }
            if (this.last != Tag.START) {
                write('<');
                write('/');
                write(name, prefix);
                write('>');
            }
        }
        this.last = Tag.END;
    }

    private void write(char ch) throws Exception {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(ch);
    }

    private void write(char[] plain) throws Exception {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(plain);
    }

    private void write(String plain) throws Exception {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(plain);
    }

    private void write(String plain, String prefix) throws Exception {
        this.buffer.write(this.result);
        this.buffer.clear();
        if (!isEmpty(prefix)) {
            this.result.write(prefix);
            this.result.write(58);
        }
        this.result.write(plain);
    }

    private void append(char ch) throws Exception {
        this.buffer.append(ch);
    }

    private void append(char[] plain) throws Exception {
        this.buffer.append(plain);
    }

    private void append(String plain) throws Exception {
        this.buffer.append(plain);
    }

    private void data(String value) throws Exception {
        write("<![CDATA[");
        write(value);
        write("]]>");
    }

    private void escape(String value) throws Exception {
        int size = value.length();
        for (int i = 0; i < size; i++) {
            escape(value.charAt(i));
        }
    }

    private void escape(char ch) throws Exception {
        char[] text = symbol(ch);
        if (text != null) {
            write(text);
        } else {
            write(ch);
        }
    }

    public void flush() throws Exception {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.flush();
    }

    private String unicode(char ch) {
        return Integer.toString(ch);
    }

    private boolean isEmpty(String value) {
        return value == null || value.length() == 0;
    }

    private boolean isText(char ch) {
        switch (ch) {
            case '\t':
            case '\n':
            case '\r':
            case ' ':
                return true;
            default:
                if (ch <= ' ' || ch > '~') {
                    return false;
                }
                return ch != 247;
        }
    }

    private char[] symbol(char ch) {
        switch (ch) {
            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                return DOUBLE;
            case '&':
                return AND;
            case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                return SINGLE;
            case '<':
                return LESS;
            case '>':
                return GREATER;
            default:
                return null;
        }
    }
}
