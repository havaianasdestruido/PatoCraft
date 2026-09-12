package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CharacterTransform implements Transform<Character> {
    CharacterTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Character read(String value) throws Exception {
        if (value.length() != 1) {
            throw new InvalidFormatException("Cannot convert '%s' to a character", value);
        }
        return Character.valueOf(value.charAt(0));
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Character value) throws Exception {
        return value.toString();
    }
}
