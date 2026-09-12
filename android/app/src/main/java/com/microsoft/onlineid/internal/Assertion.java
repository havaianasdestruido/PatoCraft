package com.microsoft.onlineid.internal;

import com.microsoft.onlineid.internal.configuration.Settings;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Assertion {
    public static void check(boolean assertionExpression) throws AssertionError {
        check(assertionExpression, "");
    }

    public static void check(boolean assertionExpression, Object errorMessage) throws AssertionError {
        if (!assertionExpression && Settings.isDebugBuild()) {
            throw new AssertionError(errorMessage);
        }
    }
}
