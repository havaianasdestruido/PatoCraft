package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEAssert {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !XLEAssert.class.desiredAssertionStatus();
    }

    public static void assertTrue(String message, boolean condition) {
        if (!$assertionsDisabled && !condition) {
            throw new AssertionError();
        }
    }

    public static void assertIsUIThread() {
        assertTrue(Thread.currentThread() == ThreadManager.UIThread);
    }

    public static void assertIsNotUIThread() {
        assertTrue(Thread.currentThread() != ThreadManager.UIThread);
    }

    public static void assertTrue(boolean condition) {
        assertTrue(null, condition);
    }

    public static void assertNotNull(Object object) {
        assertTrue(null, object != null);
    }

    public static void assertNull(Object object) {
        assertTrue(null, object == null);
    }

    public static void assertNotNull(String message, Object object) {
        assertTrue(message, object != null);
    }

    public static void assertFalse(String message, boolean condition) {
        assertTrue(message, !condition);
    }

    public static void fail(String message) {
        assertTrue(message, false);
    }

    private static String getCallerLocation() {
        StackTraceElement[] elements = Thread.currentThread().getStackTrace();
        int depth = 0;
        while (depth < elements.length && (!elements[depth].getClassName().equals(XLEAssert.class.getName()) || !elements[depth].getMethodName().equals("getCallerLocation"))) {
            depth++;
        }
        while (depth < elements.length && elements[depth].getClassName().equals(XLEAssert.class.getName())) {
            depth++;
        }
        if (depth < elements.length) {
            return elements[depth].toString();
        }
        return "unknown";
    }
}
