package com.appsflyer;

import java.util.Map;

public class AppsFlyerLib {
    private static final AppsFlyerLib INSTANCE = new AppsFlyerLib();

    public static AppsFlyerLib getInstance() {
        return INSTANCE;
    }

    public void startTracking(android.content.Context context, String key) {
    }

    public void trackEvent(android.content.Context context, String eventName, Map<String, Object> values) {
    }
}