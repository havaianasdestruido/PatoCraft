package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class NodeBuilder {
    private static Provider PROVIDER = ProviderFactory.getInstance();

    public static InputNode read(InputStream source) throws Exception {
        return read(PROVIDER.provide(source));
    }

    public static InputNode read(Reader source) throws Exception {
        return read(PROVIDER.provide(source));
    }

    private static InputNode read(EventReader source) throws Exception {
        return new NodeReader(source).readRoot();
    }

    public static OutputNode write(Writer result) throws Exception {
        return write(result, new Format());
    }

    public static OutputNode write(Writer result, Format format) throws Exception {
        return new NodeWriter(result, format).writeRoot();
    }
}
