.class public Lcom/microsoft/telemetry/Data;
.super Lcom/microsoft/telemetry/Base;
.source "Data.java"

# interfaces
.implements Lcom/microsoft/telemetry/ITelemetryData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDomain:",
        "Lcom/microsoft/telemetry/Domain;",
        ">",
        "Lcom/microsoft/telemetry/Base;",
        "Lcom/microsoft/telemetry/ITelemetryData;"
    }
.end annotation


# instance fields
.field private baseData:Lcom/microsoft/telemetry/Domain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTDomain;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/microsoft/telemetry/Data;, "Lcom/microsoft/telemetry/Data<TTDomain;>;"
    invoke-direct {p0}, Lcom/microsoft/telemetry/Base;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/telemetry/Data;->InitializeFields()V

    .line 39
    invoke-virtual {p0}, Lcom/microsoft/telemetry/Data;->SetupAttributes()V

    .line 40
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/microsoft/telemetry/Data;, "Lcom/microsoft/telemetry/Data<TTDomain;>;"
    const-string v0, "com.microsoft.telemetry.Data"

    iput-object v0, p0, Lcom/microsoft/telemetry/Data;->QualifiedName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public SetupAttributes()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lcom/microsoft/telemetry/Data;, "Lcom/microsoft/telemetry/Data<TTDomain;>;"
    iget-object v0, p0, Lcom/microsoft/telemetry/Data;->Attributes:Ljava/util/LinkedHashMap;

    const-string v1, "Description"

    const-string v2, "Data struct to contain both B and C sections."

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public getBaseData()Lcom/microsoft/telemetry/Domain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTDomain;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/microsoft/telemetry/Data;, "Lcom/microsoft/telemetry/Data<TTDomain;>;"
    iget-object v0, p0, Lcom/microsoft/telemetry/Data;->baseData:Lcom/microsoft/telemetry/Domain;

    return-object v0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/microsoft/telemetry/Data;, "Lcom/microsoft/telemetry/Data<TTDomain;>;"
    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Base;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"baseData\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/microsoft/telemetry/Data;->baseData:Lcom/microsoft/telemetry/Domain;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lcom/microsoft/telemetry/IJsonSerializable;)V

    .line 66
    const-string v0, ","

    .line 68
    return-object v0
.end method

.method public setBaseData(Lcom/microsoft/telemetry/Domain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDomain;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/microsoft/telemetry/Data;, "Lcom/microsoft/telemetry/Data<TTDomain;>;"
    .local p1, "value":Lcom/microsoft/telemetry/Domain;, "TTDomain;"
    iput-object p1, p0, Lcom/microsoft/telemetry/Data;->baseData:Lcom/microsoft/telemetry/Domain;

    .line 54
    return-void
.end method
