package net.hockeyapp.android;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class PrivateEventManager {
    public static final int EVENT_TYPE_UNCAUGHT_EXCEPTION = 1;
    private static List<HockeyEventListener> sEventListeners = new LinkedList();

    public interface HockeyEventListener {
        void onHockeyEvent(Event event);
    }

    public static void addEventListener(HockeyEventListener listener) {
        sEventListeners.add(listener);
    }

    static void postEvent(Event event) {
        for (HockeyEventListener listener : sEventListeners) {
            listener.onHockeyEvent(event);
        }
    }

    public static final class Event {
        private final int mType;

        protected Event(int type) {
            this.mType = type;
        }

        public int getType() {
            return this.mType;
        }
    }
}
