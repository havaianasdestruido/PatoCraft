package org.apache.james.mime4j.descriptor;

import org.apache.james.mime4j.parser.Field;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface MutableBodyDescriptor extends BodyDescriptor {
    void addField(Field field);
}
