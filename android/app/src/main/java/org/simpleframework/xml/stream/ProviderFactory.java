package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
final class ProviderFactory {
    ProviderFactory() {
    }

    public static Provider getInstance() {
        try {
            return new StreamProvider();
        } catch (Throwable th) {
            try {
                return new PullProvider();
            } catch (Throwable th2) {
                return new DocumentProvider();
            }
        }
    }
}
