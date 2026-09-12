package com.microsoft.cll.android;

import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventBatcher {
    private StringBuilder eventString;
    private final String newLine;
    private int numberOfEvents;
    private int size;

    public EventBatcher(int size) {
        this.newLine = CharsetUtil.CRLF;
        this.size = size;
        this.eventString = new StringBuilder(size);
        this.numberOfEvents = 0;
    }

    public EventBatcher() {
        this.newLine = CharsetUtil.CRLF;
        this.size = SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES);
        this.eventString = new StringBuilder(this.size);
        this.numberOfEvents = 0;
    }

    protected boolean canAddToBatch(String serializedEvent) {
        return (this.eventString.length() + CharsetUtil.CRLF.length()) + serializedEvent.length() <= this.size && this.numberOfEvents < SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSPERPOST);
    }

    public boolean tryAddingEventToBatch(String serializedEvent) {
        if (!canAddToBatch(serializedEvent)) {
            return false;
        }
        this.eventString.append(serializedEvent).append(CharsetUtil.CRLF);
        this.numberOfEvents++;
        return true;
    }

    public String getBatchedEvents() {
        String batchedEvents = this.eventString.toString();
        this.eventString.setLength(0);
        this.numberOfEvents = 0;
        return batchedEvents;
    }
}
