package org.apache.http.entity.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.List;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.james.mime4j.field.ContentTypeField;
import org.apache.james.mime4j.message.Body;
import org.apache.james.mime4j.message.BodyPart;
import org.apache.james.mime4j.message.Entity;
import org.apache.james.mime4j.message.Header;
import org.apache.james.mime4j.message.MessageWriter;
import org.apache.james.mime4j.message.Multipart;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@NotThreadSafe
public class HttpMultipart extends Multipart {
    private static final ByteArrayBuffer CR_LF = encode(MIME.DEFAULT_CHARSET, CharsetUtil.CRLF);
    private static final ByteArrayBuffer TWO_DASHES = encode(MIME.DEFAULT_CHARSET, "--");
    private HttpMultipartMode mode;

    private static ByteArrayBuffer encode(Charset charset, String string) {
        ByteBuffer encoded = charset.encode(CharBuffer.wrap(string));
        ByteArrayBuffer bab = new ByteArrayBuffer(encoded.remaining());
        bab.append(encoded.array(), encoded.position(), encoded.remaining());
        return bab;
    }

    private static void writeBytes(ByteArrayBuffer b, OutputStream out) throws IOException {
        out.write(b.buffer(), 0, b.length());
    }

    private static void writeBytes(ByteSequence b, OutputStream out) throws IOException {
        if (b instanceof ByteArrayBuffer) {
            writeBytes((ByteArrayBuffer) b, out);
        } else {
            out.write(b.toByteArray());
        }
    }

    public HttpMultipart(String subType) {
        super(subType);
        this.mode = HttpMultipartMode.STRICT;
    }

    public HttpMultipartMode getMode() {
        return this.mode;
    }

    public void setMode(HttpMultipartMode mode) {
        this.mode = mode;
    }

    protected Charset getCharset() {
        Entity e = getParent();
        ContentTypeField cField = (ContentTypeField) e.getHeader().getField("Content-Type");
        switch (this.mode) {
            case STRICT:
                Charset charset = MIME.DEFAULT_CHARSET;
                return charset;
            case BROWSER_COMPATIBLE:
                if (cField.getCharset() != null) {
                    Charset charset2 = CharsetUtil.getCharset(cField.getCharset());
                    return charset2;
                }
                Charset charset3 = CharsetUtil.getCharset("ISO-8859-1");
                return charset3;
            default:
                return null;
        }
    }

    protected String getBoundary() {
        Entity e = getParent();
        ContentTypeField cField = (ContentTypeField) e.getHeader().getField("Content-Type");
        return cField.getBoundary();
    }

    private void doWriteTo(HttpMultipartMode mode, OutputStream out, boolean writeContent) throws IOException {
        List<BodyPart> bodyParts = getBodyParts();
        Charset charset = getCharset();
        ByteArrayBuffer boundary = encode(charset, getBoundary());
        switch (mode) {
            case STRICT:
                String preamble = getPreamble();
                if (preamble != null && preamble.length() != 0) {
                    ByteArrayBuffer b = encode(charset, preamble);
                    writeBytes(b, out);
                    writeBytes(CR_LF, out);
                }
                for (int i = 0; i < bodyParts.size(); i++) {
                    writeBytes(TWO_DASHES, out);
                    writeBytes(boundary, out);
                    writeBytes(CR_LF, out);
                    BodyPart part = bodyParts.get(i);
                    Header header = part.getHeader();
                    List<Field> fields = header.getFields();
                    for (Field field : fields) {
                        writeBytes(field.getRaw(), out);
                        writeBytes(CR_LF, out);
                    }
                    writeBytes(CR_LF, out);
                    if (writeContent) {
                        MessageWriter.DEFAULT.writeBody(part.getBody(), out);
                    }
                    writeBytes(CR_LF, out);
                }
                writeBytes(TWO_DASHES, out);
                writeBytes(boundary, out);
                writeBytes(TWO_DASHES, out);
                writeBytes(CR_LF, out);
                String epilogue = getEpilogue();
                if (epilogue != null && epilogue.length() != 0) {
                    ByteArrayBuffer b2 = encode(charset, epilogue);
                    writeBytes(b2, out);
                    writeBytes(CR_LF, out);
                    break;
                }
                break;
            case BROWSER_COMPATIBLE:
                for (int i2 = 0; i2 < bodyParts.size(); i2++) {
                    writeBytes(TWO_DASHES, out);
                    writeBytes(boundary, out);
                    writeBytes(CR_LF, out);
                    BodyPart part2 = bodyParts.get(i2);
                    Field cd = part2.getHeader().getField("Content-Disposition");
                    writeBytes(encode(charset, cd.getName() + ": " + cd.getBody()), out);
                    writeBytes(CR_LF, out);
                    writeBytes(CR_LF, out);
                    if (writeContent) {
                        MessageWriter.DEFAULT.writeBody(part2.getBody(), out);
                    }
                    writeBytes(CR_LF, out);
                }
                writeBytes(TWO_DASHES, out);
                writeBytes(boundary, out);
                writeBytes(TWO_DASHES, out);
                writeBytes(CR_LF, out);
                break;
        }
    }

    public void writeTo(OutputStream out) throws IOException {
        doWriteTo(this.mode, out, true);
    }

    public long getTotalLength() {
        List<BodyPart> bodyParts = getBodyParts();
        long contentLen = 0;
        for (int i = 0; i < bodyParts.size(); i++) {
            BodyPart part = bodyParts.get(i);
            Body body = part.getBody();
            if (body instanceof ContentBody) {
                long len = ((ContentBody) body).getContentLength();
                if (len >= 0) {
                    contentLen += len;
                } else {
                    return -1L;
                }
            } else {
                return -1L;
            }
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            doWriteTo(this.mode, out, false);
            byte[] extra = out.toByteArray();
            return ((long) extra.length) + contentLen;
        } catch (IOException e) {
            return -1L;
        }
    }
}
