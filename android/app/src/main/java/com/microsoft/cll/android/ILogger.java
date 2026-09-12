package com.microsoft.cll.android;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ILogger {
    void error(String str, String str2);

    Verbosity getVerbosity();

    void info(String str, String str2);

    void setVerbosity(Verbosity verbosity);

    void warn(String str, String str2);
}
