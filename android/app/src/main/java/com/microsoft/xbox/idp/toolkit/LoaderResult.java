package com.microsoft.xbox.idp.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class LoaderResult<T> {
    private final T data;
    private final HttpError error;
    private final Exception exception;

    public abstract boolean isReleased();

    public abstract void release();

    protected LoaderResult(T data, HttpError error) {
        this.data = data;
        this.error = error;
        this.exception = null;
    }

    protected LoaderResult(Exception exception) {
        this.data = null;
        this.error = null;
        this.exception = exception;
    }

    public T getData() {
        return this.data;
    }

    public HttpError getError() {
        return this.error;
    }

    public Exception getException() {
        return this.exception;
    }

    public boolean hasData() {
        return this.data != null;
    }

    public boolean hasError() {
        return this.error != null;
    }

    public boolean hasException() {
        return this.exception != null;
    }
}
