package com.google.gson;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface InstanceCreator<T> {
    T createInstance(Type type);
}
