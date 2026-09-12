package com.microsoft.onlineid.internal.storage;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ObjectStreamSerializer<ObjectType> implements ISerializer<ObjectType> {
    @Override // com.microsoft.onlineid.internal.storage.ISerializer
    public ObjectType deserialize(String str) throws IOException {
        if (str == null) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str, 2)));
            try {
                try {
                    ObjectType objecttype = (ObjectType) objectInputStream.readObject();
                    objectInputStream.close();
                    return objecttype;
                } catch (Throwable th) {
                    objectInputStream.close();
                    throw th;
                }
            } catch (ClassCastException e) {
                throw new IOException(e);
            } catch (ClassNotFoundException e2) {
                throw new IOException(e2);
            }
        } catch (IllegalArgumentException e3) {
            throw new IOException(e3);
        }
    }

    @Override // com.microsoft.onlineid.internal.storage.ISerializer
    public Set<ObjectType> deserializeAll(Map<String, String> serializedMap) throws IOException {
        if (serializedMap.isEmpty()) {
            return Collections.emptySet();
        }
        Set<ObjectType> objects = new HashSet<>();
        for (String serialized : serializedMap.values()) {
            objects.add(deserialize(serialized));
        }
        return objects;
    }

    @Override // com.microsoft.onlineid.internal.storage.ISerializer
    public String serialize(ObjectType object) throws IOException {
        if (object == null) {
            return null;
        }
        ByteArrayOutputStream byteArray = new ByteArrayOutputStream();
        ObjectOutputStream output = new ObjectOutputStream(byteArray);
        try {
            output.writeObject(object);
            String serialized = Base64.encodeToString(byteArray.toByteArray(), 2);
            return serialized;
        } finally {
            output.close();
        }
    }

    @Override // com.microsoft.onlineid.internal.storage.ISerializer
    public Map<String, String> serializeAll(Map<String, ObjectType> objectMap) throws IOException {
        if (objectMap.isEmpty()) {
            return Collections.emptyMap();
        }
        Map<String, String> serializedMap = new HashMap<>();
        for (Map.Entry<String, ObjectType> entry : objectMap.entrySet()) {
            serializedMap.put(entry.getKey(), serialize(entry.getValue()));
        }
        return serializedMap;
    }
}
