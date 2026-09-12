package com.microsoft.onlineid.internal.ui;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IWebPropertyProvider {
    String getProperty(PropertyBag.Key key);

    boolean handlesProperty(PropertyBag.Key key);

    void setProperty(PropertyBag.Key key, String str);
}
