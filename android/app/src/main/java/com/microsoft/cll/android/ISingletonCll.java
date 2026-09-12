package com.microsoft.cll.android;

import com.microsoft.telemetry.Base;
import java.util.EnumSet;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ISingletonCll {
    void SubscribeCllEvents(ICllEvents iCllEvents);

    String getAppUserId();

    void log(Base base, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> enumSet, double d, List<String> list);

    void pause();

    void resume();

    void send();

    void setAppUserId(String str);

    void setDebugVerbosity(Verbosity verbosity);

    void setEndpointUrl(String str);

    void setExperimentId(String str);

    void setXuidCallback(ITicketCallback iTicketCallback);

    void start();

    void stop();

    void synchronize();

    void useLegacyCS(boolean z);
}
