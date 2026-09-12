package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Source implements Context {
    private TemplateEngine engine;
    private Filter filter;
    private Session session;
    private Strategy strategy;
    private Support support;

    public Source(Strategy strategy, Support support, Session session) {
        this.filter = new TemplateFilter(this, support);
        this.engine = new TemplateEngine(this.filter);
        this.strategy = strategy;
        this.support = support;
        this.session = session;
    }

    @Override // org.simpleframework.xml.core.Context
    public boolean isStrict() {
        return this.session.isStrict();
    }

    @Override // org.simpleframework.xml.core.Context
    public Session getSession() {
        return this.session;
    }

    @Override // org.simpleframework.xml.core.Context
    public Support getSupport() {
        return this.support;
    }

    @Override // org.simpleframework.xml.core.Context
    public Style getStyle() {
        return this.support.getStyle();
    }

    @Override // org.simpleframework.xml.core.Context
    public boolean isFloat(Class type) throws Exception {
        Support support = this.support;
        return Support.isFloat(type);
    }

    @Override // org.simpleframework.xml.core.Context
    public boolean isFloat(Type type) throws Exception {
        return isFloat(type.getType());
    }

    @Override // org.simpleframework.xml.core.Context
    public boolean isPrimitive(Class type) throws Exception {
        return this.support.isPrimitive(type);
    }

    @Override // org.simpleframework.xml.core.Context
    public boolean isPrimitive(Type type) throws Exception {
        return isPrimitive(type.getType());
    }

    @Override // org.simpleframework.xml.core.Context
    public Instance getInstance(Class type) {
        return this.support.getInstance(type);
    }

    @Override // org.simpleframework.xml.core.Context
    public Instance getInstance(Value value) {
        return this.support.getInstance(value);
    }

    @Override // org.simpleframework.xml.core.Context
    public String getName(Class type) throws Exception {
        return this.support.getName(type);
    }

    @Override // org.simpleframework.xml.core.Context
    public Version getVersion(Class type) throws Exception {
        return getScanner(type).getRevision();
    }

    private Scanner getScanner(Class type) throws Exception {
        return this.support.getScanner(type);
    }

    @Override // org.simpleframework.xml.core.Context
    public Decorator getDecorator(Class type) throws Exception {
        return getScanner(type).getDecorator();
    }

    @Override // org.simpleframework.xml.core.Context
    public Caller getCaller(Class type) throws Exception {
        return getScanner(type).getCaller(this);
    }

    @Override // org.simpleframework.xml.core.Context
    public Schema getSchema(Class type) throws Exception {
        Scanner schema = getScanner(type);
        if (schema == null) {
            throw new PersistenceException("Invalid schema class %s", type);
        }
        return new ClassSchema(schema, this);
    }

    @Override // org.simpleframework.xml.core.Context
    public Object getAttribute(Object key) {
        return this.session.get(key);
    }

    @Override // org.simpleframework.xml.core.Context
    public Value getOverride(Type type, InputNode node) throws Exception {
        NodeMap<InputNode> map = node.getAttributes();
        if (map == null) {
            throw new PersistenceException("No attributes for %s", node);
        }
        return this.strategy.read(type, map, this.session);
    }

    @Override // org.simpleframework.xml.core.Context
    public boolean setOverride(Type type, Object value, OutputNode node) throws Exception {
        NodeMap<OutputNode> map = node.getAttributes();
        if (map == null) {
            throw new PersistenceException("No attributes for %s", node);
        }
        return this.strategy.write(type, value, map, this.session);
    }

    @Override // org.simpleframework.xml.core.Context
    public Class getType(Type type, Object value) {
        return value != null ? value.getClass() : type.getType();
    }

    @Override // org.simpleframework.xml.core.Context
    public String getProperty(String text) {
        return this.engine.process(text);
    }
}
