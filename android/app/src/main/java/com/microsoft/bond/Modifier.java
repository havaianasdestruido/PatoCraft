package com.microsoft.bond;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum Modifier {
    Optional(0),
    Required(1),
    RequiredOptional(2),
    __INVALID_ENUM_VALUE(3);

    private final int value;

    Modifier(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static Modifier fromValue(int value) {
        switch (value) {
            case 0:
                return Optional;
            case 1:
                return Required;
            case 2:
                return RequiredOptional;
            default:
                return __INVALID_ENUM_VALUE;
        }
    }
}
