.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;
.super Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCJsonBase;
.source "UTCAccessibilityInfoModel.java"


# instance fields
.field private info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCJsonBase;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-void
.end method

.method public getInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    return-object v0
.end method

.method public setInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->info:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 10

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->getInfo()Ljava/util/HashMap;

    move-result-object v3

    .line 37
    .local v3, "objects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, ""

    .line 39
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 40
    .local v2, "gsonb":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 42
    .local v1, "gson":Lcom/google/gson/Gson;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 46
    :goto_0
    return-object v4

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/google/gson/JsonIOException;
    const-string v5, "UTCJsonSerializer"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in json serialization"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
