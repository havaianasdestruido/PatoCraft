package com.microsoft.onlineid.sts.request;

import com.microsoft.onlineid.sts.XmlSigner;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ISignableRequest {
    Element getParentOfSignatureNode();

    byte[] getSigningSessionKey();

    XmlSigner getXmlSigner();

    void setXmlSigner(XmlSigner xmlSigner);
}
