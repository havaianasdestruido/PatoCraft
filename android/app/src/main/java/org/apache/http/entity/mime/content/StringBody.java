package org.apache.http.entity.mime.content;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.james.mime4j.field.ContentTypeField;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@NotThreadSafe
public class StringBody extends AbstractContentBody {
    private final Charset charset;
    private final byte[] content;

    public StringBody(String text, String mimeType, Charset charset) throws UnsupportedEncodingException {
        super(mimeType);
        if (text == null) {
            throw new IllegalArgumentException("Text may not be null");
        }
        charset = charset == null ? Charset.defaultCharset() : charset;
        this.content = text.getBytes(charset.name());
        this.charset = charset;
    }

    public StringBody(String text, Charset charset) throws UnsupportedEncodingException {
        this(text, ContentTypeField.TYPE_TEXT_PLAIN, charset);
    }

    public StringBody(String text) throws UnsupportedEncodingException {
        this(text, ContentTypeField.TYPE_TEXT_PLAIN, null);
    }

    public Reader getReader() {
        return new InputStreamReader(new ByteArrayInputStream(this.content), this.charset);
    }

    @Deprecated
    public void writeTo(OutputStream out, int mode) throws IOException {
        writeTo(out);
    }

    @Override // org.apache.james.mime4j.message.SingleBody
    public void writeTo(OutputStream out) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        InputStream in = new ByteArrayInputStream(this.content);
        byte[] tmp = new byte[4096];
        while (true) {
            int l = in.read(tmp);
            if (l != -1) {
                out.write(tmp, 0, l);
            } else {
                out.flush();
                return;
            }
        }
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getTransferEncoding() {
        return "8bit";
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getCharset() {
        return this.charset.name();
    }

    @Override // org.apache.http.entity.mime.content.AbstractContentBody, org.apache.james.mime4j.descriptor.ContentDescriptor
    public Map<String, String> getContentTypeParameters() {
        Map<String, String> map = new HashMap<>();
        map.put(ContentTypeField.PARAM_CHARSET, this.charset.name());
        return map;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public long getContentLength() {
        return this.content.length;
    }

    @Override // org.apache.http.entity.mime.content.ContentBody
    public String getFilename() {
        return null;
    }
}
