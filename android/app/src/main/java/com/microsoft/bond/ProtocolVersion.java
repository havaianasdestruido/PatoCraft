package com.microsoft.bond;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum ProtocolVersion {
    ONE(1),
    TWO(2);

    private short value;

    ProtocolVersion(int value) {
        this.value = (short) value;
    }

    public short getValue() {
        return this.value;
    }

    public static ProtocolVersion fromValue(short value) {
        switch (value) {
            case 1:
                return ONE;
            case 2:
                return TWO;
            default:
                return null;
        }
    }
}
