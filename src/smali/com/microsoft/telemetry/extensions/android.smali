.class public Lcom/microsoft/telemetry/extensions/android;
.super Lcom/microsoft/telemetry/Extension;
.source "android.java"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private libVer:Ljava/lang/String;

.field private tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/microsoft/telemetry/Extension;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/telemetry/extensions/android;->InitializeFields()V

    .line 36
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public getLibVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    return-object v0
.end method

.method public getTickets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

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
    .line 76
    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"libVer\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    const-string v0, ","

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"tickets\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeListString(Ljava/io/Writer;Ljava/util/List;)V

    .line 90
    const-string v0, ","

    .line 93
    :cond_1
    return-object v0
.end method

.method public setLibVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/android;->libVer:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTickets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/android;->tickets:Ljava/util/List;

    .line 67
    return-void
.end method
