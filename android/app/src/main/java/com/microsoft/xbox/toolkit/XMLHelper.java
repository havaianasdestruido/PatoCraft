package com.microsoft.xbox.toolkit;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringWriter;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.convert.AnnotationStrategy;
import org.simpleframework.xml.core.Persister;
import org.simpleframework.xml.strategy.Strategy;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XMLHelper {
    private static final int XML_WAIT_TIMEOUT_MS = 1000;
    private static XMLHelper instance = new XMLHelper();
    private Serializer serializer;

    public static XMLHelper instance() {
        return instance;
    }

    private XMLHelper() {
        this.serializer = null;
        Strategy strategy = new AnnotationStrategy();
        this.serializer = new Persister(strategy);
    }

    public <T> T load(InputStream inputStream, Class<T> cls) throws XLEException {
        if (ThreadManager.UIThread != Thread.currentThread()) {
            BackgroundThreadWaitor.getInstance().waitForReady(XML_WAIT_TIMEOUT_MS);
        }
        new TimeMonitor();
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            try {
                Thread.currentThread().setContextClassLoader(cls.getClassLoader());
                return (T) this.serializer.read((Class) cls, inputStream, false);
            } finally {
                Thread.currentThread().setContextClassLoader(contextClassLoader);
            }
        } catch (Exception e) {
            throw new XLEException(9L, e.toString());
        }
    }

    public <T> String save(T output) throws XLEException {
        new TimeMonitor();
        StringWriter writer = new StringWriter();
        try {
            this.serializer.write(output, writer);
            return writer.toString();
        } catch (Exception e) {
            throw new XLEException(9L, e.toString());
        }
    }

    public <T> void save(T output, OutputStream outStream) throws XLEException {
        new TimeMonitor();
        try {
            this.serializer.write(output, outStream);
        } catch (Exception e) {
            throw new XLEException(9L, e.toString());
        }
    }
}
