package org.simpleframework.xml.transform;

import java.io.File;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class FileTransform implements Transform<File> {
    FileTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public File read(String path) {
        return new File(path);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(File path) {
        return path.getPath();
    }
}
