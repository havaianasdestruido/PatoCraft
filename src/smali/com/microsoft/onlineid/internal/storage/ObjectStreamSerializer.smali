.class public Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;
.super Ljava/lang/Object;
.source "ObjectStreamSerializer.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/storage/ISerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/onlineid/internal/storage/ISerializer",
        "<TObjectType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;, "Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer<TObjectType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "serialized"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;, "Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer<TObjectType;>;"
    const/4 v3, 0x0

    .line 34
    .local v3, "object":Ljava/lang/Object;, "TObjectType;"
    if-eqz p1, :cond_0

    .line 39
    const/4 v5, 0x2

    :try_start_0
    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    .local v0, "data":[B
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v2, "input":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 51
    .local v4, "tmp":Ljava/lang/Object;, "TObjectType;"
    move-object v3, v4

    .line 63
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 66
    .end local v0    # "data":[B
    .end local v2    # "input":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;, "TObjectType;"
    .end local v4    # "tmp":Ljava/lang/Object;, "TObjectType;"
    :cond_0
    return-object v3

    .line 41
    .restart local v3    # "object":Ljava/lang/Object;, "TObjectType;"
    :catch_0
    move-exception v1

    .line 43
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 53
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "data":[B
    .restart local v2    # "input":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    throw v5

    .line 57
    :catch_2
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/ClassCastException;
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public deserializeAll(Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<TObjectType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;, "Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer<TObjectType;>;"
    .local p1, "serializedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v0, "objects":Ljava/util/Set;, "Ljava/util/Set<TObjectType;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "serialized":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObjectType;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;, "Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer<TObjectType;>;"
    .local p1, "object":Ljava/lang/Object;, "TObjectType;"
    const/4 v2, 0x0

    .line 100
    .local v2, "serialized":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v0, "byteArray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v1, "output":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 112
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 114
    .end local v0    # "byteArray":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "output":Ljava/io/ObjectOutputStream;
    :cond_0
    return-object v2

    .line 110
    .restart local v0    # "byteArray":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "output":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    throw v3
.end method

.method public serializeAll(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TObjectType;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;, "Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer<TObjectType;>;"
    .local p1, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TObjectType;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 136
    :cond_0
    return-object v1

    .line 130
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v1, "serializedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TObjectType;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
