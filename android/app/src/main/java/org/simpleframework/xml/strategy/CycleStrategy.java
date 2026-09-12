package org.simpleframework.xml.strategy;

import java.util.Map;
import org.simpleframework.xml.stream.NodeMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CycleStrategy implements Strategy {
    private final Contract contract;
    private final ReadState read;
    private final WriteState write;

    public CycleStrategy() {
        this("id", Name.REFER);
    }

    public CycleStrategy(String mark, String refer) {
        this(mark, refer, Name.LABEL);
    }

    public CycleStrategy(String mark, String refer, String label) {
        this(mark, refer, label, Name.LENGTH);
    }

    public CycleStrategy(String mark, String refer, String label, String length) {
        this.contract = new Contract(mark, refer, label, length);
        this.write = new WriteState(this.contract);
        this.read = new ReadState(this.contract);
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public Value read(Type type, NodeMap node, Map map) throws Exception {
        ReadGraph graph = this.read.find(map);
        if (graph != null) {
            return graph.read(type, node);
        }
        return null;
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public boolean write(Type type, Object value, NodeMap node, Map map) {
        WriteGraph graph = this.write.find(map);
        if (graph != null) {
            return graph.write(type, value, node);
        }
        return false;
    }
}
