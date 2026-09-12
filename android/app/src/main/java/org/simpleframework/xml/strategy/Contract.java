package org.simpleframework.xml.strategy;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Contract {
    private String label;
    private String length;
    private String mark;
    private String refer;

    public Contract(String mark, String refer, String label, String length) {
        this.length = length;
        this.label = label;
        this.refer = refer;
        this.mark = mark;
    }

    public String getLabel() {
        return this.label;
    }

    public String getReference() {
        return this.refer;
    }

    public String getIdentity() {
        return this.mark;
    }

    public String getLength() {
        return this.length;
    }
}
