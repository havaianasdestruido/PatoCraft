package com.googleplay.licensing;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface Obfuscator {
    String obfuscate(String str, String str2);

    String unobfuscate(String str, String str2) throws ValidationException;
}
