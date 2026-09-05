.class Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
        "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/model/Privacy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/idp/model/Privacy$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 7
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
            "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    .line 91
    .local v2, "settings":[Lcom/microsoft/xbox/idp/model/Privacy$Setting;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/microsoft/xbox/idp/model/Privacy$Key;Lcom/microsoft/xbox/idp/model/Privacy$Value;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 93
    .local v1, "s":Lcom/microsoft/xbox/idp/model/Privacy$Setting;
    iget-object v5, v1, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->setting:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->value:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, v1, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->setting:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    iget-object v6, v1, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->value:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "s":Lcom/microsoft/xbox/idp/model/Privacy$Setting;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 6
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
            "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Lcom/microsoft/xbox/idp/model/Privacy$Key;Lcom/microsoft/xbox/idp/model/Privacy$Value;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    new-array v3, v4, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    .line 78
    .local v3, "settings":[Lcom/microsoft/xbox/idp/model/Privacy$Setting;
    const/4 v1, -0x1

    .line 79
    .local v1, "idx":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/microsoft/xbox/idp/model/Privacy$Key;Lcom/microsoft/xbox/idp/model/Privacy$Value;>;"
    new-instance v2, Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/model/Privacy$Setting;-><init>()V

    .line 81
    .local v2, "s":Lcom/microsoft/xbox/idp/model/Privacy$Setting;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    iput-object v4, v2, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->setting:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    iput-object v4, v2, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->value:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 83
    add-int/lit8 v1, v1, 0x1

    aput-object v2, v3, v1

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/microsoft/xbox/idp/model/Privacy$Key;Lcom/microsoft/xbox/idp/model/Privacy$Value;>;"
    .end local v2    # "s":Lcom/microsoft/xbox/idp/model/Privacy$Setting;
    :cond_0
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-virtual {v4, v3, v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 86
    return-void
.end method
