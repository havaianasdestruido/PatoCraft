package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEException extends Exception {
    private long errorCode;
    private boolean isHandled;
    private Object userObject;

    public XLEException(long errorCode) {
        this(errorCode, null, null, null);
    }

    public XLEException(long errorCode, String message) {
        this(errorCode, message, null, null);
    }

    public XLEException(long errorCode, Throwable innerException) {
        this(errorCode, null, innerException, null);
    }

    public XLEException(long errorCode, String message, Throwable innerException) {
        this(errorCode, null, innerException, null);
    }

    public XLEException(long errorCode, String message, Throwable innerException, Object userObject) {
        super(message, innerException);
        this.errorCode = errorCode;
        this.userObject = userObject;
        this.isHandled = false;
    }

    public long getErrorCode() {
        return this.errorCode;
    }

    public Object getUserObject() {
        return this.userObject;
    }

    public void setIsHandled(boolean isHandled) {
        this.isHandled = isHandled;
    }

    public boolean getIsHandled() {
        return this.isHandled;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(String.format("XLEException ErrorCode: %d; ErrorMessage: %s \n\n", Long.valueOf(this.errorCode), getMessage()));
        if (getCause() != null) {
            builder.append(String.format("\t Cause ErrorMessage: %s, StackTrace: ", getCause().toString()));
            for (StackTraceElement elem : getCause().getStackTrace()) {
                builder.append("\n\n \t " + elem.toString());
            }
        }
        return builder.toString();
    }
}
