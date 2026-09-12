package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AsyncResult<T> {
    private final XLEException exception;
    private final T result;
    private final Object sender;
    private AsyncActionStatus status;

    public AsyncResult(T result, Object sender, XLEException exception) {
        this(result, sender, exception, exception == null ? AsyncActionStatus.SUCCESS : AsyncActionStatus.FAIL);
    }

    public AsyncResult(T result, Object sender, XLEException exception, AsyncActionStatus status) {
        this.sender = sender;
        this.exception = exception;
        this.result = result;
        this.status = status;
    }

    public Object getSender() {
        return this.sender;
    }

    public XLEException getException() {
        return this.exception;
    }

    public T getResult() {
        return this.result;
    }

    public AsyncActionStatus getStatus() {
        return this.status;
    }
}
