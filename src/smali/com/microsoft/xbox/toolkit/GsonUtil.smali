.class public Lcom/microsoft/xbox/toolkit/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/GsonUtil$JsonBodyBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildJsonBody(Lcom/microsoft/xbox/toolkit/GsonUtil$JsonBodyBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "builder"    # Lcom/microsoft/xbox/toolkit/GsonUtil$JsonBodyBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 142
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    .local v1, "w":Lcom/google/gson/stream/JsonWriter;
    :try_start_1
    invoke-interface {p0, v1}, Lcom/microsoft/xbox/toolkit/GsonUtil$JsonBodyBuilder;->buildBody(Lcom/google/gson/stream/JsonWriter;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 147
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 145
    return-object v2

    .line 147
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    .end local v1    # "w":Lcom/google/gson/stream/JsonWriter;
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    throw v2
.end method

.method public static createMinimumGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x80

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static deserializeJson(Lcom/google/gson/Gson;Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "gson"    # Lcom/google/gson/Gson;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 97
    .local v2, "iReader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 98
    .local v0, "bReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 100
    .local v4, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .local v3, "iReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .local v1, "bReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {p0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 105
    if-eqz v1, :cond_0

    .line 107
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 111
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 113
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 118
    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_1
    return-object v4

    .line 114
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 115
    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 103
    :catch_1
    move-exception v5

    .line 105
    :goto_2
    if-eqz v0, :cond_2

    .line 107
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 111
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 113
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 114
    :catch_2
    move-exception v5

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_3

    .line 107
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 111
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 113
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 115
    :cond_4
    :goto_6
    throw v5

    .line 108
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v5

    goto :goto_3

    :catch_5
    move-exception v6

    goto :goto_5

    .line 114
    :catch_6
    move-exception v6

    goto :goto_6

    .line 105
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 103
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v5

    move-object v2, v3

    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v5

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "iReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "iReader":Ljava/io/InputStreamReader;
    :cond_5
    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "iReader":Ljava/io/InputStreamReader;
    .restart local v2    # "iReader":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public static deserializeJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "gson"    # Lcom/google/gson/Gson;
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 125
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/GsonUtil;->createMinimumGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 41
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Lcom/google/gson/Gson;Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p2, "typeForAdapter"    # Ljava/lang/reflect/Type;
    .param p3, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/GsonUtil;->createMinimumGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 69
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Lcom/google/gson/Gson;Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "adapters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/GsonUtil;->createMinimumGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 74
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Type;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Type;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Lcom/google/gson/Gson;Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static deserializeJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/GsonUtil;->createMinimumGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 54
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static deserializeJson(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p2, "typeForAdapter"    # Ljava/lang/reflect/Type;
    .param p3, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/GsonUtil;->createMinimumGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 92
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 136
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
