package org.simpleframework.xml.transform;

import java.net.URL;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class URLTransform implements Transform<URL> {
    URLTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public URL read(String target) throws Exception {
        return new URL(target);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(URL target) throws Exception {
        return target.toString();
    }
}
