package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class StringTextBody extends TextBody {
    private final Charset charset;
    private final String text;

    public StringTextBody(String text, Charset charset) {
        this.text = text;
        this.charset = charset;
    }

    @Override // org.apache.james.mime4j.message.TextBody
    public String getMimeCharset() {
        return CharsetUtil.toMimeCharset(this.charset.name());
    }

    @Override // org.apache.james.mime4j.message.TextBody
    public Reader getReader() throws IOException {
        return new StringReader(this.text);
    }

    @Override // org.apache.james.mime4j.message.SingleBody
    public void writeTo(OutputStream out) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException();
        }
        Reader reader = new StringReader(this.text);
        Writer writer = new OutputStreamWriter(out, this.charset);
        char[] buffer = new char[1024];
        while (true) {
            int nChars = reader.read(buffer);
            if (nChars != -1) {
                writer.write(buffer, 0, nChars);
            } else {
                reader.close();
                writer.flush();
                return;
            }
        }
    }

    @Override // org.apache.james.mime4j.message.SingleBody
    public StringTextBody copy() {
        return new StringTextBody(this.text, this.charset);
    }
}
