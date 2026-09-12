package com.microsoft.onlineid.internal.log;

import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Redactor {
    protected static final String RedactedStringEmptyReplacement = "";
    protected static final String RedactedStringNullReplacement = "(null)";
    protected static final String RedactedStringReplacement = "*(%d)*";
    protected static final String RedactedStringStarReplacement = "***";

    private enum RedactionType {
        Email,
        Password,
        String
    }

    public static boolean shouldRedact() {
        return Logger.shouldRedact();
    }

    public static String redactEmail(String str) {
        return doRedact(str, RedactionType.Email);
    }

    public static String redactPassword(String str) {
        return doRedact(str, RedactionType.Password);
    }

    public static String redactString(String str) {
        return doRedact(str, RedactionType.String);
    }

    private static String doRedact(String stringToRedact, RedactionType type) {
        if (stringToRedact == null) {
            return RedactedStringNullReplacement;
        }
        if (stringToRedact.isEmpty()) {
            return "";
        }
        switch (type) {
            case Email:
                String redactedStr = String.format(Locale.getDefault(), RedactedStringReplacement, Integer.valueOf(stringToRedact.length()));
                return redactedStr;
            case Password:
                return RedactedStringStarReplacement;
            case String:
                String redactedStr2 = String.format(Locale.getDefault(), RedactedStringReplacement, Integer.valueOf(stringToRedact.length()));
                return redactedStr2;
            default:
                return RedactedStringStarReplacement;
        }
    }
}
