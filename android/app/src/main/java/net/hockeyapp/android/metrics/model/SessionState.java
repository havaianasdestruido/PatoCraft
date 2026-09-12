package net.hockeyapp.android.metrics.model;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum SessionState {
    START(0),
    END(1);

    private final int value;

    SessionState(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }
}
