package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class StreamProvider implements Provider {
    private final XMLInputFactory factory = XMLInputFactory.newInstance();

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(InputStream source) throws Exception {
        return provide(this.factory.createXMLEventReader(source));
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(Reader source) throws Exception {
        return provide(this.factory.createXMLEventReader(source));
    }

    private EventReader provide(XMLEventReader source) throws Exception {
        return new StreamReader(source);
    }
}
