package com.microsoft.onlineid.internal.log;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class LogInstance {
    public static final String LogTag = "MSA";
    public static final int MaxLogLength = 4000;
    private boolean _isLoggingEnabled;
    private boolean _isRedactionEnabled;
    private boolean _isStackTraceLoggingEnabled;

    protected LogInstance(boolean isRedactionEnabled, boolean isLoggingEnabled, boolean isStackTraceLoggingEnabled) {
        this._isRedactionEnabled = true;
        this._isLoggingEnabled = false;
        this._isStackTraceLoggingEnabled = true;
        this._isRedactionEnabled = isRedactionEnabled;
        this._isLoggingEnabled = isLoggingEnabled;
        this._isStackTraceLoggingEnabled = isStackTraceLoggingEnabled;
    }

    protected LogInstance() {
        this._isRedactionEnabled = true;
        this._isLoggingEnabled = false;
        this._isStackTraceLoggingEnabled = true;
    }

    protected void setIsRedactionEnable(boolean isRedactionEnabled) {
        this._isRedactionEnabled = isRedactionEnabled;
    }

    protected void setIsLoggingEnabled(boolean isLoggingEnabled) {
        this._isLoggingEnabled = isLoggingEnabled;
    }

    protected void setIsStackTraceLoggingEnabled(boolean isStackTraceLoggingEnabled) {
        this._isStackTraceLoggingEnabled = isStackTraceLoggingEnabled;
    }

    protected void logInfo(String message) {
        Log.i(LogTag, message);
    }

    protected void logInfo(String message, Throwable throwable) {
        Log.i(LogTag, message, throwable);
    }

    protected void logWarning(String message) {
        Log.w(LogTag, message);
    }

    protected void logWarning(String message, Throwable throwable) {
        Log.w(LogTag, message, throwable);
    }

    protected void logError(String message) {
        Log.e(LogTag, message);
    }

    protected void logError(String message, Throwable throwable) {
        Log.e(LogTag, message, throwable);
    }

    protected boolean shouldRedact() {
        return this._isRedactionEnabled && this._isLoggingEnabled;
    }

    protected String getStackTraceInfo(String message, int stackTraceDepth) {
        if (this._isStackTraceLoggingEnabled) {
            StringBuilder returnValue = new StringBuilder();
            try {
                returnValue.append(message);
                StackTraceElement[] stackTraceInfo = Thread.currentThread().getStackTrace();
                int index = 0;
                for (StackTraceElement stackTraceElement : stackTraceInfo) {
                    index++;
                    if (stackTraceElement.getMethodName().contains("getStackTrace")) {
                        int index2 = index + stackTraceDepth;
                        returnValue.append(" ");
                        returnValue.append(stackTraceInfo[index2].getMethodName());
                        returnValue.append("()@");
                        returnValue.append(stackTraceInfo[index2].getFileName());
                        returnValue.append("_");
                        returnValue.append(stackTraceInfo[index2].getLineNumber());
                        break;
                    }
                }
            } catch (Exception e) {
                logWarning("Error in getStackTraceInfo", e);
            }
            return returnValue.toString();
        }
        return message;
    }

    protected void logMessage(String message, int loggingLevel, Throwable throwable) {
        logMessage(message, loggingLevel, throwable, 4);
    }

    protected void logMessage(String message, int loggingLevel, Throwable throwable, int stackTraceDepth) {
        if (message != null && this._isLoggingEnabled && Log.isLoggable(LogTag, loggingLevel)) {
            int len = message.length();
            int start = 0;
            while (start < len) {
                int end = Math.min(len, start + MaxLogLength);
                String messageWithStackTraceInfo = getStackTraceInfo(message.substring(start, end), stackTraceDepth);
                logMessageLevel(messageWithStackTraceInfo, loggingLevel, throwable);
                start = end;
            }
        }
    }

    private void logMessageLevel(String message, int loggingLevel, Throwable throwable) {
        switch (loggingLevel) {
            case 5:
                if (throwable == null) {
                    logWarning(message);
                } else {
                    logWarning(message, throwable);
                }
                break;
            case 6:
                if (throwable == null) {
                    logError(message);
                } else {
                    logError(message, throwable);
                }
                break;
            default:
                if (throwable == null) {
                    logInfo(message);
                } else {
                    logInfo(message, throwable);
                }
                break;
        }
    }

    protected void logRedactedMessage(IRedactable redactableMessage, int loggingLevel) {
        if (redactableMessage != null) {
            if (this._isRedactionEnabled) {
                logMessage(redactableMessage.getRedactedString(), loggingLevel, null, 4);
            } else {
                logMessage(redactableMessage.getUnredactedString(), loggingLevel, null, 4);
            }
        }
    }
}
