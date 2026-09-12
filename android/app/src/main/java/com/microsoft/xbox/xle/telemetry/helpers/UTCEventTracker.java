package com.microsoft.xbox.xle.telemetry.helpers;

import com.microsoft.xbox.idp.telemetry.helpers.UTCLog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCEventTracker {

    public interface UTCEventDelegate {
        void call();
    }

    public interface UTCStringEventDelegate {
        String call();
    }

    public static void callTrackWrapper(UTCEventDelegate delegate) {
        try {
            delegate.call();
        } catch (Exception ex) {
            UTCLog.log(ex.getMessage(), new Object[0]);
        }
    }

    public static String callStringTrackWrapper(UTCStringEventDelegate delegate) {
        try {
            return delegate.call();
        } catch (Exception ex) {
            UTCLog.log(ex.getMessage(), new Object[0]);
            return null;
        }
    }
}
