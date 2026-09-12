package net.hockeyapp.android.objects;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum CrashManagerUserInput {
    CrashManagerUserInputDontSend(0),
    CrashManagerUserInputSend(1),
    CrashManagerUserInputAlwaysSend(2);

    private final int mValue;

    CrashManagerUserInput(int value) {
        this.mValue = value;
    }

    public int getValue() {
        return this.mValue;
    }
}
