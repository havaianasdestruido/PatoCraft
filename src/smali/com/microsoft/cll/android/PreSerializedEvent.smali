.class public Lcom/microsoft/cll/android/PreSerializedEvent;
.super Lcom/microsoft/telemetry/Data;
.source "PreSerializedEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidCll-PreSerializedEvent"


# instance fields
.field public serializedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;
    .param p3, "partBName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/microsoft/telemetry/Data;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/microsoft/cll/android/PreSerializedEvent;->serializedData:Ljava/lang/String;

    move-object v0, p0

    .line 26
    check-cast v0, Lcom/microsoft/telemetry/Data;

    .line 27
    .local v0, "baseData":Lcom/microsoft/telemetry/Data;
    new-instance v1, Lcom/microsoft/telemetry/Domain;

    invoke-direct {v1}, Lcom/microsoft/telemetry/Domain;-><init>()V

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Data;->setBaseData(Lcom/microsoft/telemetry/Domain;)V

    .line 28
    invoke-virtual {v0}, Lcom/microsoft/telemetry/Data;->getBaseData()Lcom/microsoft/telemetry/Domain;

    move-result-object v1

    iput-object p3, v1, Lcom/microsoft/telemetry/Domain;->QualifiedName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/microsoft/cll/android/PreSerializedEvent;->QualifiedName:Ljava/lang/String;

    .line 32
    if-eqz p4, :cond_0

    .line 34
    iget-object v1, p0, Lcom/microsoft/cll/android/PreSerializedEvent;->Attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p4}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static createFromDynamicEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/cll/android/PreSerializedEvent;
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventData"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/microsoft/cll/android/PreSerializedEvent;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/microsoft/cll/android/PreSerializedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static createFromStaticEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Lcom/microsoft/cll/android/PreSerializedEvent;
    .locals 5
    .param p0, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p1, "event"    # LMicrosoft/Telemetry/Base;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->getPartCName(LMicrosoft/Telemetry/Base;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "eventName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->getPartBName(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "partBName":Ljava/lang/String;
    invoke-static {p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->getAttributes(LMicrosoft/Telemetry/Base;)Ljava/util/Map;

    move-result-object v0

    .line 56
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {p1, v3}, LMicrosoft/Telemetry/Base;->setBaseType(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-static {p0, p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->serializeEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "eventData":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/cll/android/PreSerializedEvent;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/microsoft/cll/android/PreSerializedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v4
.end method

.method private static getAttributes(LMicrosoft/Telemetry/Base;)Ljava/util/Map;
    .locals 3
    .param p0, "event"    # LMicrosoft/Telemetry/Base;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, LMicrosoft/Telemetry/Base;->getSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 91
    return-object v0
.end method

.method private static getPartBName(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;
    .locals 4
    .param p0, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p1, "event"    # LMicrosoft/Telemetry/Base;

    .prologue
    .line 74
    const-string v1, ""

    .line 77
    .local v1, "partBName":Ljava/lang/String;
    :try_start_0
    check-cast p1, LMicrosoft/Telemetry/Data;

    .end local p1    # "event":LMicrosoft/Telemetry/Base;
    invoke-virtual {p1}, LMicrosoft/Telemetry/Data;->getBaseData()Lcom/microsoft/bond/BondSerializable;

    move-result-object v2

    check-cast v2, LMicrosoft/Telemetry/Domain;

    invoke-virtual {v2}, LMicrosoft/Telemetry/Domain;->getSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getQualified_name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "AndroidCll-PreSerializedEvent"

    const-string v3, "This event doesn\'t extend data"

    invoke-interface {p0, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPartCName(LMicrosoft/Telemetry/Base;)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # LMicrosoft/Telemetry/Base;

    .prologue
    .line 68
    invoke-virtual {p0}, LMicrosoft/Telemetry/Base;->getSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getQualified_name()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "partCName":Ljava/lang/String;
    return-object v0
.end method

.method private static serializeEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Ljava/lang/String;
    .locals 2
    .param p0, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p1, "event"    # LMicrosoft/Telemetry/Base;

    .prologue
    .line 96
    new-instance v0, Lcom/microsoft/cll/android/BondJsonSerializer;

    invoke-direct {v0, p0}, Lcom/microsoft/cll/android/BondJsonSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    .line 97
    .local v0, "bondJsonSerializer":Lcom/microsoft/cll/android/BondJsonSerializer;
    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/BondJsonSerializer;->serialize(Lcom/microsoft/bond/BondSerializable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/cll/android/PreSerializedEvent;->serializedData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    return-void
.end method
