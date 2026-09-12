package com.microsoft.xbox.service.model.serialization;

import com.facebook.internal.ServerProtocol;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@Root(name = ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION)
public class Version {

    @Element
    public int latest;

    @Element
    public int min;

    @Element
    public String url;
}
