package com.microsoft.onlineid.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.analytics.StandardExceptionParser;
import com.microsoft.onlineid.sts.StsError;
import com.microsoft.onlineid.sts.exception.StsException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MsaExceptionParser extends StandardExceptionParser {
    public MsaExceptionParser(Context context, Collection<String> additionalPackages) {
        super(context, additionalPackages);
    }

    protected String getDescription(Throwable cause, StackTraceElement position, String threadName) {
        StsError error;
        List<String> parts = new ArrayList<>();
        parts.add(cause.getClass().getSimpleName());
        if ((cause instanceof StsException) && (error = ((StsException) cause).getError()) != null) {
            parts.add("[" + error.getOriginalErrorMessage() + "]");
        }
        parts.add(getStackLocationDescription(position));
        parts.add("{" + threadName + "}");
        return TextUtils.join(" ", parts);
    }

    private String getStackLocationDescription(StackTraceElement position) {
        String className = position.getClassName();
        int lastPeriod = className.lastIndexOf(46);
        String simpleClassName = lastPeriod >= 0 ? className.substring(lastPeriod + 1) : className;
        String location = simpleClassName + ":" + position.getMethodName();
        if (position.getLineNumber() > 0) {
            location = location + ":" + position.getLineNumber();
        }
        return "(@" + location + ")";
    }
}
