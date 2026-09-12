package android.support.v4.os;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class CancellationSignalCompatJellybean {
    CancellationSignalCompatJellybean() {
    }

    public static Object create() {
        return new android.os.CancellationSignal();
    }

    public static void cancel(Object cancellationSignalObj) {
        ((android.os.CancellationSignal) cancellationSignalObj).cancel();
    }
}
