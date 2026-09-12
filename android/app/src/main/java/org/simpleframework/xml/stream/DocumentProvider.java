package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DocumentProvider implements Provider {
    private final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

    public DocumentProvider() {
        this.factory.setNamespaceAware(true);
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(InputStream source) throws Exception {
        return provide(new InputSource(source));
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(Reader source) throws Exception {
        return provide(new InputSource(source));
    }

    private EventReader provide(InputSource source) throws Exception {
        DocumentBuilder builder = this.factory.newDocumentBuilder();
        Document document = builder.parse(source);
        return new DocumentReader(document);
    }
}
