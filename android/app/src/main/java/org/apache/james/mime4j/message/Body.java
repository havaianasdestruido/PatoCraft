package org.apache.james.mime4j.message;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface Body extends Disposable {
    Entity getParent();

    void setParent(Entity entity);
}
