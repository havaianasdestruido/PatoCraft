package org.simpleframework.xml.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.filter.PlatformFilter;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.TreeStrategy;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeBuilder;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.transform.Matcher;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Persister implements Serializer {
    private final Format format;
    private final SessionManager manager;
    private final Strategy strategy;
    private final Support support;

    public Persister() {
        this(new HashMap());
    }

    public Persister(Format format) {
        this(new TreeStrategy(), format);
    }

    public Persister(Map filter) {
        this(new PlatformFilter(filter));
    }

    public Persister(Map filter, Format format) {
        this(new PlatformFilter(filter));
    }

    public Persister(Filter filter) {
        this(new TreeStrategy(), filter);
    }

    public Persister(Filter filter, Format format) {
        this(new TreeStrategy(), filter, format);
    }

    public Persister(Matcher matcher) {
        this(new TreeStrategy(), matcher);
    }

    public Persister(Matcher matcher, Format format) {
        this(new TreeStrategy(), matcher, format);
    }

    public Persister(Strategy strategy) {
        this(strategy, new HashMap());
    }

    public Persister(Strategy strategy, Format format) {
        this(strategy, new HashMap(), format);
    }

    public Persister(Filter filter, Matcher matcher) {
        this(new TreeStrategy(), filter, matcher);
    }

    public Persister(Filter filter, Matcher matcher, Format format) {
        this(new TreeStrategy(), filter, matcher, format);
    }

    public Persister(Strategy strategy, Map data) {
        this(strategy, new PlatformFilter(data));
    }

    public Persister(Strategy strategy, Map data, Format format) {
        this(strategy, new PlatformFilter(data), format);
    }

    public Persister(Strategy strategy, Filter filter) {
        this(strategy, filter, new Format());
    }

    public Persister(Strategy strategy, Filter filter, Format format) {
        this(strategy, filter, new EmptyMatcher(), format);
    }

    public Persister(Strategy strategy, Matcher matcher) {
        this(strategy, new PlatformFilter(), matcher);
    }

    public Persister(Strategy strategy, Matcher matcher, Format format) {
        this(strategy, new PlatformFilter(), matcher, format);
    }

    public Persister(Strategy strategy, Filter filter, Matcher matcher) {
        this(strategy, filter, matcher, new Format());
    }

    public Persister(Strategy strategy, Filter filter, Matcher matcher, Format format) {
        this.support = new Support(filter, matcher, format);
        this.manager = new SessionManager();
        this.strategy = strategy;
        this.format = format;
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, String str) throws Exception {
        return (T) read((Class) cls, str, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, File file) throws Exception {
        return (T) read((Class) cls, file, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, InputStream inputStream) throws Exception {
        return (T) read((Class) cls, inputStream, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, Reader reader) throws Exception {
        return (T) read((Class) cls, reader, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, InputNode inputNode) throws Exception {
        return (T) read((Class) cls, inputNode, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, String str, boolean z) throws Exception {
        return (T) read((Class) cls, (Reader) new StringReader(str), z);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, File file, boolean z) throws Exception {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return (T) read((Class) cls, (InputStream) fileInputStream, z);
        } finally {
            fileInputStream.close();
        }
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, InputStream inputStream, boolean z) throws Exception {
        return (T) read((Class) cls, NodeBuilder.read(inputStream), z);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, Reader reader, boolean z) throws Exception {
        return (T) read((Class) cls, NodeBuilder.read(reader), z);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(Class<? extends T> cls, InputNode inputNode, boolean z) throws Exception {
        try {
            return (T) read((Class) cls, inputNode, this.manager.open(z));
        } finally {
            this.manager.close();
        }
    }

    private <T> T read(Class<? extends T> cls, InputNode inputNode, Session session) throws Exception {
        return (T) read((Class) cls, inputNode, (Context) new Source(this.strategy, this.support, session));
    }

    private <T> T read(Class<? extends T> cls, InputNode inputNode, Context context) throws Exception {
        return (T) new Traverser(context).read(inputNode, (Class) cls);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, String str) throws Exception {
        return (T) read((Object) t, str, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, File file) throws Exception {
        return (T) read((Object) t, file, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, InputStream inputStream) throws Exception {
        return (T) read((Object) t, inputStream, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, Reader reader) throws Exception {
        return (T) read((Object) t, reader, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, InputNode inputNode) throws Exception {
        return (T) read((Object) t, inputNode, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, String str, boolean z) throws Exception {
        return (T) read(t, new StringReader(str), z);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, File file, boolean z) throws Exception {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return (T) read(t, fileInputStream, z);
        } finally {
            fileInputStream.close();
        }
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, InputStream inputStream, boolean z) throws Exception {
        return (T) read(t, NodeBuilder.read(inputStream), z);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, Reader reader, boolean z) throws Exception {
        return (T) read(t, NodeBuilder.read(reader), z);
    }

    @Override // org.simpleframework.xml.Serializer
    public <T> T read(T t, InputNode inputNode, boolean z) throws Exception {
        try {
            return (T) read(t, inputNode, this.manager.open(z));
        } finally {
            this.manager.close();
        }
    }

    private <T> T read(T t, InputNode inputNode, Session session) throws Exception {
        return (T) read(t, inputNode, new Source(this.strategy, this.support, session));
    }

    private <T> T read(T t, InputNode inputNode, Context context) throws Exception {
        return (T) new Traverser(context).read(inputNode, t);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, String source) throws Exception {
        return validate(type, source, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, File source) throws Exception {
        return validate(type, source, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, InputStream source) throws Exception {
        return validate(type, source, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, Reader source) throws Exception {
        return validate(type, source, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, InputNode source) throws Exception {
        return validate(type, source, true);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, String source, boolean strict) throws Exception {
        return validate(type, new StringReader(source), strict);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, File source, boolean strict) throws Exception {
        InputStream file = new FileInputStream(source);
        try {
            return validate(type, file, strict);
        } finally {
            file.close();
        }
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, InputStream source, boolean strict) throws Exception {
        return validate(type, NodeBuilder.read(source), strict);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, Reader source, boolean strict) throws Exception {
        return validate(type, NodeBuilder.read(source), strict);
    }

    @Override // org.simpleframework.xml.Serializer
    public boolean validate(Class type, InputNode node, boolean strict) throws Exception {
        Session session = this.manager.open(strict);
        try {
            return validate(type, node, session);
        } finally {
            this.manager.close();
        }
    }

    private boolean validate(Class type, InputNode node, Session session) throws Exception {
        return validate(type, node, new Source(this.strategy, this.support, session));
    }

    private boolean validate(Class type, InputNode node, Context context) throws Exception {
        return new Traverser(context).validate(node, type);
    }

    @Override // org.simpleframework.xml.Serializer
    public void write(Object source, OutputNode root) throws Exception {
        Session session = this.manager.open();
        try {
            write(source, root, session);
        } finally {
            this.manager.close();
        }
    }

    private void write(Object source, OutputNode root, Session session) throws Exception {
        write(source, root, new Source(this.strategy, this.support, session));
    }

    private void write(Object source, OutputNode node, Context context) throws Exception {
        new Traverser(context).write(node, source);
    }

    @Override // org.simpleframework.xml.Serializer
    public void write(Object source, File out) throws Exception {
        OutputStream file = new FileOutputStream(out);
        try {
            write(source, file);
        } finally {
            file.close();
        }
    }

    @Override // org.simpleframework.xml.Serializer
    public void write(Object source, OutputStream out) throws Exception {
        write(source, out, "utf-8");
    }

    public void write(Object source, OutputStream out, String charset) throws Exception {
        write(source, new OutputStreamWriter(out, charset));
    }

    @Override // org.simpleframework.xml.Serializer
    public void write(Object source, Writer out) throws Exception {
        write(source, NodeBuilder.write(out, this.format));
    }
}
