package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ConstructorScanner {
    private Signature primary;
    private Support support;
    private List<Signature> signatures = new ArrayList();
    private ParameterMap registry = new ParameterMap();

    public ConstructorScanner(Detail detail, Support support) throws Exception {
        this.support = support;
        scan(detail);
    }

    public Signature getSignature() {
        return this.primary;
    }

    public List<Signature> getSignatures() {
        return new ArrayList(this.signatures);
    }

    public ParameterMap getParameters() {
        return this.registry;
    }

    private void scan(Detail detail) throws Exception {
        Constructor[] array = detail.getConstructors();
        if (!detail.isInstantiable()) {
            throw new ConstructorException("Can not construct inner %s", detail);
        }
        for (Constructor factory : array) {
            if (!detail.isPrimitive()) {
                scan(factory);
            }
        }
    }

    private void scan(Constructor factory) throws Exception {
        SignatureScanner scanner = new SignatureScanner(factory, this.registry, this.support);
        if (scanner.isValid()) {
            List<Signature> list = scanner.getSignatures();
            for (Signature signature : list) {
                int size = signature.size();
                if (size == 0) {
                    this.primary = signature;
                }
                this.signatures.add(signature);
            }
        }
    }
}
