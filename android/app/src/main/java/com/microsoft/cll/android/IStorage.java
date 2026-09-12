package com.microsoft.cll.android;

import com.microsoft.telemetry.IJsonSerializable;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IStorage {
    void add(Tuple<String, List<String>> tuple) throws Exception;

    void add(IJsonSerializable iJsonSerializable) throws Exception;

    boolean canAdd(Tuple<String, List<String>> tuple);

    boolean canAdd(IJsonSerializable iJsonSerializable);

    void close();

    void discard();

    List<Tuple<String, List<String>>> drain();

    long size();
}
