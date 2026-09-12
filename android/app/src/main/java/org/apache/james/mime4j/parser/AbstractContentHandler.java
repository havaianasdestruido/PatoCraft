package org.apache.james.mime4j.parser;

import java.io.IOException;
import java.io.InputStream;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.descriptor.BodyDescriptor;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractContentHandler implements ContentHandler {
    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endMultipart() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startMultipart(BodyDescriptor bd) throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void body(BodyDescriptor bd, InputStream is) throws MimeException, IOException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endBodyPart() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endHeader() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endMessage() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void epilogue(InputStream is) throws MimeException, IOException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void field(Field field) throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void preamble(InputStream is) throws MimeException, IOException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startBodyPart() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startHeader() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startMessage() throws MimeException {
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void raw(InputStream is) throws MimeException, IOException {
    }
}
