package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IJsonSerializable {
    void serialize(Writer writer) throws IOException;
}
