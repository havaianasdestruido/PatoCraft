package org.simpleframework.xml.core;

import com.microsoft.cll.android.EventEnums;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class SignatureCreator implements Creator {
    private final List<Parameter> list;
    private final Signature signature;
    private final Class type;

    public SignatureCreator(Signature signature) {
        this.type = signature.getType();
        this.list = signature.getAll();
        this.signature = signature;
    }

    @Override // org.simpleframework.xml.core.Creator
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.core.Creator
    public Signature getSignature() {
        return this.signature;
    }

    @Override // org.simpleframework.xml.core.Creator
    public Object getInstance() throws Exception {
        return this.signature.create();
    }

    @Override // org.simpleframework.xml.core.Creator
    public Object getInstance(Criteria criteria) throws Exception {
        Object[] values = this.list.toArray();
        for (int i = 0; i < this.list.size(); i++) {
            values[i] = getVariable(criteria, i);
        }
        return this.signature.create(values);
    }

    private Object getVariable(Criteria criteria, int index) throws Exception {
        Parameter parameter = this.list.get(index);
        Object key = parameter.getKey();
        Variable variable = criteria.remove(key);
        if (variable != null) {
            return variable.getValue();
        }
        return null;
    }

    @Override // org.simpleframework.xml.core.Creator
    public double getScore(Criteria criteria) throws Exception {
        Signature match = this.signature.copy();
        for (Object key : criteria) {
            Parameter parameter = match.get(key);
            Variable label = criteria.get(key);
            Contact contact = label.getContact();
            if (parameter != null) {
                Object value = label.getValue();
                Class<?> cls = value.getClass();
                Class actual = parameter.getType();
                if (!Support.isAssignable(cls, actual)) {
                    return -1.0d;
                }
            }
            if (contact.isReadOnly() && parameter == null) {
                return -1.0d;
            }
        }
        return getPercentage(criteria);
    }

    private double getPercentage(Criteria criteria) throws Exception {
        double score = EventEnums.SampleRate_0_percent;
        for (Parameter value : this.list) {
            Object key = value.getKey();
            Label label = criteria.get(key);
            if (label == null) {
                if (value.isRequired() || value.isPrimitive()) {
                    return -1.0d;
                }
            } else {
                score += 1.0d;
            }
        }
        return getAdjustment(score);
    }

    private double getAdjustment(double score) {
        double adjustment = ((double) this.list.size()) / 1000.0d;
        return score > EventEnums.SampleRate_0_percent ? (score / ((double) this.list.size())) + adjustment : score / ((double) this.list.size());
    }

    public String toString() {
        return this.signature.toString();
    }
}
