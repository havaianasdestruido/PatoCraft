package com.microsoft.onlineid.internal.storage;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
interface ISerializer<ObjectType> {
    ObjectType deserialize(String str) throws IOException;

    Set<ObjectType> deserializeAll(Map<String, String> map) throws IOException;

    String serialize(ObjectType objecttype) throws IOException;

    Map<String, String> serializeAll(Map<String, ObjectType> map) throws IOException;
}
