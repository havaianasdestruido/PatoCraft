package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.LimitedCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ExpressionBuilder {
    private final Cache<Expression> cache = new LimitedCache();
    private final Format format;
    private final Class type;

    public ExpressionBuilder(Detail detail, Support support) {
        this.format = support.getFormat();
        this.type = detail.getType();
    }

    public Expression build(String path) throws Exception {
        Expression expression = this.cache.fetch(path);
        if (expression == null) {
            return create(path);
        }
        return expression;
    }

    private Expression create(String path) throws Exception {
        Type detail = new ClassType(this.type);
        Expression expression = new PathParser(path, detail, this.format);
        if (this.cache != null) {
            this.cache.cache(path, expression);
        }
        return expression;
    }
}
