package com.microsoft.xbox.toolkit;

import android.util.Pair;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TcuiHttpUtil {
    public static <T> T getResponseSync(HttpCall httpCall, final Class<T> cls) throws XLEException {
        final AtomicReference atomicReference = new AtomicReference();
        atomicReference.set(new Pair(false, null));
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.toolkit.TcuiHttpUtil.1
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public void processResponse(int httpStatus, InputStream stream, HttpHeaders headers) throws Exception {
                Object objDeserializeJson = (httpStatus >= 200 || httpStatus <= 299) ? GsonUtil.deserializeJson(stream, cls) : null;
                synchronized (atomicReference) {
                    atomicReference.set(new Pair(true, objDeserializeJson));
                    atomicReference.notify();
                }
            }
        });
        synchronized (atomicReference) {
            while (!((Boolean) ((Pair) atomicReference.get()).first).booleanValue()) {
                try {
                    atomicReference.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        return (T) ((Pair) atomicReference.get()).second;
    }

    public static boolean getResponseSyncSucceeded(HttpCall httpCall, final List<Integer> acceptableStatusCodes) {
        final AtomicReference<Boolean> notifier = new AtomicReference<>();
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.toolkit.TcuiHttpUtil.2
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public void processResponse(int httpStatus, InputStream stream, HttpHeaders headers) throws Exception {
                synchronized (notifier) {
                    notifier.set(Boolean.valueOf(acceptableStatusCodes.contains(Integer.valueOf(httpStatus))));
                    notifier.notify();
                }
            }
        });
        synchronized (notifier) {
            while (notifier.get() == null) {
                try {
                    notifier.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        return notifier.get().booleanValue();
    }

    public static String getResponseBodySync(HttpCall httpCall) throws XLEException {
        final AtomicReference<Pair<Boolean, String>> notifier = new AtomicReference<>();
        notifier.set(new Pair<>(false, null));
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.toolkit.TcuiHttpUtil.3
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public void processResponse(int httpStatus, InputStream stream, HttpHeaders headers) throws Exception {
                if (httpStatus < 200 || httpStatus > 299) {
                    synchronized (notifier) {
                        notifier.set(new Pair(true, null));
                        notifier.notify();
                    }
                    return;
                }
                String responseBody = null;
                try {
                    BufferedReader reader = new BufferedReader(new InputStreamReader(stream, HttpURLConnectionBuilder.DEFAULT_CHARSET), 4096);
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = reader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(line + "\n");
                        }
                    }
                    responseBody = sb.toString();
                } catch (IOException ioe) {
                    XLEAssert.assertTrue("Failed to read ShortCircuitProfileMessage string - " + ioe.getMessage(), false);
                }
                synchronized (notifier) {
                    notifier.set(new Pair(true, responseBody));
                    notifier.notify();
                }
            }
        });
        synchronized (notifier) {
            while (!((Boolean) notifier.get().first).booleanValue()) {
                try {
                    notifier.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        return (String) notifier.get().second;
    }

    public static <T> void throwIfNullOrFalse(T result) throws XLEException {
        if (result == null && !Boolean.getBoolean(result.toString())) {
            throw new XLEException(2L);
        }
    }
}
