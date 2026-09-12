package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class PullProvider implements Provider {
    private final XmlPullParserFactory factory = XmlPullParserFactory.newInstance();

    public PullProvider() throws Exception {
        this.factory.setNamespaceAware(true);
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(InputStream source) throws Exception {
        XmlPullParser parser = this.factory.newPullParser();
        if (source != null) {
            parser.setInput(source, null);
        }
        return new PullReader(parser);
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(Reader source) throws Exception {
        XmlPullParser parser = this.factory.newPullParser();
        if (source != null) {
            parser.setInput(source);
        }
        return new PullReader(parser);
    }
}
