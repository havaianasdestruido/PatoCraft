.class Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
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
        "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/model/Profile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/idp/model/Profile$1;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;-><init>()V

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
    .line 87
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 8
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
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
    .line 104
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 105
    .local v0, "g":Lcom/google/gson/Gson;
    const-class v4, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    invoke-virtual {v0, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    .line 106
    .local v3, "settings":[Lcom/microsoft/xbox/idp/model/Profile$Setting;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/microsoft/xbox/idp/model/Profile$SettingId;Ljava/lang/String;>;"
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 108
    .local v2, "s":Lcom/microsoft/xbox/idp/model/Profile$Setting;
    iget-object v6, v2, Lcom/microsoft/xbox/idp/model/Profile$Setting;->id:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    iget-object v7, v2, Lcom/microsoft/xbox/idp/model/Profile$Setting;->value:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "s":Lcom/microsoft/xbox/idp/model/Profile$Setting;
    :cond_0
    return-object v1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 7
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Lcom/microsoft/xbox/idp/model/Profile$SettingId;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    .line 91
    .local v4, "settings":[Lcom/microsoft/xbox/idp/model/Profile$Setting;
    const/4 v2, -0x1

    .line 92
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/microsoft/xbox/idp/model/Profile$SettingId;Ljava/lang/String;>;"
    new-instance v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/model/Profile$Setting;-><init>()V

    .line 94
    .local v3, "s":Lcom/microsoft/xbox/idp/model/Profile$Setting;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    iput-object v5, v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;->id:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;->value:Ljava/lang/String;

    .line 96
    add-int/lit8 v2, v2, 0x1

    aput-object v3, v4, v2

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/microsoft/xbox/idp/model/Profile$SettingId;Ljava/lang/String;>;"
    .end local v3    # "s":Lcom/microsoft/xbox/idp/model/Profile$Setting;
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 99
    .local v1, "g":Lcom/google/gson/Gson;
    const-class v5, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    invoke-virtual {v1, v4, v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 100
    return-void
.end method
