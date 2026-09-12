package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Revision {
    private boolean equal = true;

    public double getDefault() {
        return 1.0d;
    }

    public boolean compare(Object expected, Object current) {
        if (current != null) {
            this.equal = current.equals(expected);
        } else if (expected != null) {
            this.equal = expected.equals(Double.valueOf(1.0d));
        }
        return this.equal;
    }

    public boolean isEqual() {
        return this.equal;
    }
}
