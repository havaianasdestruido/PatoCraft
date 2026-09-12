package com.microsoft.xbox.idp.toolkit;

import java.io.InputStream;
import java.util.Scanner;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class HttpError {
    private static final String INPUT_START_TOKEN = "\\A";
    private final int errorCode;
    private final String errorMessage;
    private final int httpStatus;

    public HttpError(int errorCode, int httpStatus, String errorMessage) {
        this.errorCode = errorCode;
        this.httpStatus = httpStatus;
        this.errorMessage = errorMessage;
    }

    public HttpError(int errorCode, int httpStatus, InputStream stream) {
        this.errorCode = errorCode;
        this.httpStatus = httpStatus;
        Scanner errorScanner = new Scanner(stream).useDelimiter(INPUT_START_TOKEN);
        this.errorMessage = errorScanner.hasNext() ? errorScanner.next() : "";
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public int getHttpStatus() {
        return this.httpStatus;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("errorCode: ").append(this.errorCode).append(", httpStatus: ").append(this.httpStatus).append(", errorMessage: ").append(this.errorMessage);
        return sb.toString();
    }
}
