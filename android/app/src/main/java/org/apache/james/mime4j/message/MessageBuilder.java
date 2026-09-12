package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.InputStream;
import java.util.Stack;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.codec.Base64InputStream;
import org.apache.james.mime4j.codec.QuotedPrintableInputStream;
import org.apache.james.mime4j.descriptor.BodyDescriptor;
import org.apache.james.mime4j.field.AbstractField;
import org.apache.james.mime4j.parser.ContentHandler;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.storage.StorageProvider;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.MimeUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MessageBuilder implements ContentHandler {
    private final BodyFactory bodyFactory;
    private final Entity entity;
    private Stack<Object> stack;

    public MessageBuilder(Entity entity) {
        this.stack = new Stack<>();
        this.entity = entity;
        this.bodyFactory = new BodyFactory();
    }

    public MessageBuilder(Entity entity, StorageProvider storageProvider) {
        this.stack = new Stack<>();
        this.entity = entity;
        this.bodyFactory = new BodyFactory(storageProvider);
    }

    private void expect(Class<?> c) {
        if (!c.isInstance(this.stack.peek())) {
            throw new IllegalStateException("Internal stack error: Expected '" + c.getName() + "' found '" + this.stack.peek().getClass().getName() + "'");
        }
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startMessage() throws MimeException {
        if (this.stack.isEmpty()) {
            this.stack.push(this.entity);
            return;
        }
        expect(Entity.class);
        Message m = new Message();
        ((Entity) this.stack.peek()).setBody(m);
        this.stack.push(m);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endMessage() throws MimeException {
        expect(Message.class);
        this.stack.pop();
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startHeader() throws MimeException {
        this.stack.push(new Header());
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void field(Field field) throws MimeException {
        expect(Header.class);
        Field parsedField = AbstractField.parse(field.getRaw());
        ((Header) this.stack.peek()).addField(parsedField);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endHeader() throws MimeException {
        expect(Header.class);
        Header h = (Header) this.stack.pop();
        expect(Entity.class);
        ((Entity) this.stack.peek()).setHeader(h);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startMultipart(BodyDescriptor bd) throws MimeException {
        expect(Entity.class);
        Entity e = (Entity) this.stack.peek();
        String subType = bd.getSubType();
        Multipart multiPart = new Multipart(subType);
        e.setBody(multiPart);
        this.stack.push(multiPart);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void body(BodyDescriptor bd, InputStream is) throws MimeException, IOException {
        InputStream decodedStream;
        Body body;
        expect(Entity.class);
        String enc = bd.getTransferEncoding();
        if (MimeUtil.ENC_BASE64.equals(enc)) {
            decodedStream = new Base64InputStream(is);
        } else if (MimeUtil.ENC_QUOTED_PRINTABLE.equals(enc)) {
            decodedStream = new QuotedPrintableInputStream(is);
        } else {
            decodedStream = is;
        }
        if (bd.getMimeType().startsWith("text/")) {
            body = this.bodyFactory.textBody(decodedStream, bd.getCharset());
        } else {
            body = this.bodyFactory.binaryBody(decodedStream);
        }
        Entity entity = (Entity) this.stack.peek();
        entity.setBody(body);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endMultipart() throws MimeException {
        this.stack.pop();
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startBodyPart() throws MimeException {
        expect(Multipart.class);
        BodyPart bodyPart = new BodyPart();
        ((Multipart) this.stack.peek()).addBodyPart(bodyPart);
        this.stack.push(bodyPart);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endBodyPart() throws MimeException {
        expect(BodyPart.class);
        this.stack.pop();
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void epilogue(InputStream is) throws MimeException, IOException {
        expect(Multipart.class);
        ByteSequence bytes = loadStream(is);
        ((Multipart) this.stack.peek()).setEpilogueRaw(bytes);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void preamble(InputStream is) throws MimeException, IOException {
        expect(Multipart.class);
        ByteSequence bytes = loadStream(is);
        ((Multipart) this.stack.peek()).setPreambleRaw(bytes);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void raw(InputStream is) throws MimeException, IOException {
        throw new UnsupportedOperationException("Not supported");
    }

    private static ByteSequence loadStream(InputStream in) throws IOException {
        ByteArrayBuffer bab = new ByteArrayBuffer(64);
        while (true) {
            int b = in.read();
            if (b != -1) {
                bab.append(b);
            } else {
                return bab;
            }
        }
    }
}
