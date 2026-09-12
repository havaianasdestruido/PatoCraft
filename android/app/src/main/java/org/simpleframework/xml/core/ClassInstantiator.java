package org.simpleframework.xml.core;

import com.microsoft.cll.android.EventEnums;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ClassInstantiator implements Instantiator {
    private final List<Creator> creators;
    private final Detail detail;
    private final Creator primary;
    private final ParameterMap registry;

    public ClassInstantiator(List<Creator> creators, Creator primary, ParameterMap registry, Detail detail) {
        this.creators = creators;
        this.registry = registry;
        this.primary = primary;
        this.detail = detail;
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public boolean isDefault() {
        int count = this.creators.size();
        return count <= 1 && this.primary != null;
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public Object getInstance() throws Exception {
        return this.primary.getInstance();
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public Object getInstance(Criteria criteria) throws Exception {
        Creator creator = getCreator(criteria);
        if (creator == null) {
            throw new PersistenceException("Constructor not matched for %s", this.detail);
        }
        return creator.getInstance(criteria);
    }

    private Creator getCreator(Criteria criteria) throws Exception {
        Creator result = this.primary;
        double max = EventEnums.SampleRate_0_percent;
        for (Creator instantiator : this.creators) {
            double score = instantiator.getScore(criteria);
            if (score > max) {
                result = instantiator;
                max = score;
            }
        }
        return result;
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public Parameter getParameter(String name) {
        return this.registry.get(name);
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public List<Parameter> getParameters() {
        return this.registry.getAll();
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public List<Creator> getCreators() {
        return new ArrayList(this.creators);
    }

    public String toString() {
        return String.format("creator for %s", this.detail);
    }
}
