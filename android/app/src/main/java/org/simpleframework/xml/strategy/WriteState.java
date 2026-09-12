package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class WriteState extends WeakCache<WriteGraph> {
    private Contract contract;

    public WriteState(Contract contract) {
        this.contract = contract;
    }

    public WriteGraph find(Object map) {
        WriteGraph write = fetch(map);
        if (write == null) {
            WriteGraph write2 = new WriteGraph(this.contract);
            cache(map, write2);
            return write2;
        }
        return write;
    }
}
