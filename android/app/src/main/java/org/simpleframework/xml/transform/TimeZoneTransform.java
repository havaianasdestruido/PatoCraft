package org.simpleframework.xml.transform;

import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class TimeZoneTransform implements Transform<TimeZone> {
    TimeZoneTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public TimeZone read(String zone) {
        return TimeZone.getTimeZone(zone);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(TimeZone zone) {
        return zone.getID();
    }
}
