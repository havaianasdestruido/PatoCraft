.class public LMicrosoft/Android/LoggingLibrary/Snapshot;
.super Lcom/microsoft/telemetry/Data;
.source "Snapshot.java"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/telemetry/Data",
        "<",
        "LMs/Telemetry/CllHeartBeat;",
        ">;",
        "Lcom/microsoft/telemetry/IJsonSerializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/microsoft/telemetry/Data;-><init>()V

    .line 22
    invoke-virtual {p0}, LMicrosoft/Android/LoggingLibrary/Snapshot;->InitializeFields()V

    .line 23
    invoke-virtual {p0}, LMicrosoft/Android/LoggingLibrary/Snapshot;->SetupAttributes()V

    .line 24
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "Microsoft.Android.LoggingLibrary.Snapshot"

    iput-object v0, p0, LMicrosoft/Android/LoggingLibrary/Snapshot;->QualifiedName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public SetupAttributes()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, LMicrosoft/Android/LoggingLibrary/Snapshot;->Attributes:Ljava/util/LinkedHashMap;

    const-string v1, "Description"

    const-string v2, "Android\'s Client Telemetry Snapshot"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Data;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "prefix":Ljava/lang/String;
    return-object v0
.end method
