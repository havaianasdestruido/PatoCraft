package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ReadState extends WeakCache<ReadGraph> {
    private final Contract contract;
    private final Loader loader = new Loader();

    public ReadState(Contract contract) {
        this.contract = contract;
    }

    public ReadGraph find(Object map) throws Exception {
        ReadGraph read = fetch(map);
        return read != null ? read : create(map);
    }

    private ReadGraph create(Object map) throws Exception {
        ReadGraph read = fetch(map);
        if (read == null) {
            ReadGraph read2 = new ReadGraph(this.contract, this.loader);
            cache(map, read2);
            return read2;
        }
        return read;
    }
}
