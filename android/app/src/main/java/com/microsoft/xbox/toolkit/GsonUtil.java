package com.microsoft.xbox.toolkit;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.stream.JsonWriter;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GsonUtil {

    public interface JsonBodyBuilder {
        void buildBody(JsonWriter jsonWriter) throws IOException;
    }

    public static <T> T deserializeJson(InputStream inputStream, Class<T> cls) {
        return (T) deserializeJson(createMinimumGsonBuilder().create(), inputStream, cls);
    }

    public static <T> T deserializeJson(String str, Class<T> cls) {
        return (T) deserializeJson(createMinimumGsonBuilder().create(), str, cls);
    }

    public static <T> T deserializeJson(InputStream inputStream, Class<T> cls, Type type, Object obj) {
        return (T) deserializeJson(createMinimumGsonBuilder().registerTypeAdapter(type, obj).create(), inputStream, cls);
    }

    public static <T> T deserializeJson(InputStream inputStream, Class<T> cls, Map<Type, Object> map) {
        GsonBuilder gsonBuilderCreateMinimumGsonBuilder = createMinimumGsonBuilder();
        for (Map.Entry<Type, Object> entry : map.entrySet()) {
            gsonBuilderCreateMinimumGsonBuilder.registerTypeAdapter(entry.getKey(), entry.getValue());
        }
        return (T) deserializeJson(gsonBuilderCreateMinimumGsonBuilder.create(), inputStream, cls);
    }

    public static <T> T deserializeJson(String str, Class<T> cls, Type type, Object obj) {
        return (T) deserializeJson(createMinimumGsonBuilder().registerTypeAdapter(type, obj).create(), str, cls);
    }

    public static <T> T deserializeJson(Gson gson, InputStream inputStream, Class<T> cls) throws Throwable {
        InputStreamReader inputStreamReader = null;
        BufferedReader bufferedReader = null;
        T t = null;
        try {
            InputStreamReader inputStreamReader2 = new InputStreamReader(inputStream);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                try {
                    t = (T) gson.fromJson((Reader) bufferedReader2, (Class) cls);
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception e) {
                        }
                    }
                    if (inputStreamReader2 != null) {
                        try {
                            inputStreamReader2.close();
                        } catch (Exception e2) {
                        }
                    }
                } catch (Exception e3) {
                    bufferedReader = bufferedReader2;
                    inputStreamReader = inputStreamReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e4) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (Exception e5) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    inputStreamReader = inputStreamReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e6) {
                        }
                    }
                    if (inputStreamReader == null) {
                        throw th;
                    }
                    try {
                        inputStreamReader.close();
                        throw th;
                    } catch (Exception e7) {
                        throw th;
                    }
                }
            } catch (Exception e8) {
                inputStreamReader = inputStreamReader2;
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = inputStreamReader2;
            }
        } catch (Exception e9) {
        } catch (Throwable th3) {
            th = th3;
        }
        return t;
    }

    public static <T> T deserializeJson(Gson gson, String str, Class<T> cls) {
        try {
            return (T) gson.fromJson(str, (Class) cls);
        } catch (Exception e) {
            return null;
        }
    }

    public static GsonBuilder createMinimumGsonBuilder() {
        return new GsonBuilder().excludeFieldsWithModifiers(128);
    }

    public static String toJsonString(Object obj) {
        Gson gson = new Gson();
        return gson.toJson(obj);
    }

    public static String buildJsonBody(JsonBodyBuilder builder) throws IOException {
        StringWriter out = new StringWriter();
        try {
            JsonWriter w = new JsonWriter(out);
            try {
                builder.buildBody(w);
                String string = out.toString();
                w.close();
                out.close();
                return string;
            } catch (Throwable th) {
                w.close();
                throw th;
            }
        } catch (Throwable th2) {
            out.close();
            throw th2;
        }
    }
}
