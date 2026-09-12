package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
interface Creator {
    Object getInstance() throws Exception;

    Object getInstance(Criteria criteria) throws Exception;

    double getScore(Criteria criteria) throws Exception;

    Signature getSignature() throws Exception;

    Class getType() throws Exception;
}
