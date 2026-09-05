.class public Lcom/microsoft/telemetry/extensions/device;
.super Lcom/microsoft/telemetry/Extension;
.source "device.java"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private authId:Ljava/lang/String;

.field private authSecId:Ljava/lang/String;

.field private deviceClass:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/microsoft/telemetry/Extension;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/microsoft/telemetry/extensions/device;->InitializeFields()V

    .line 49
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public getAuthId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthSecId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

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
    .line 128
    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    const-string v0, ","

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"localId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    const-string v0, ","

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"authId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    const-string v0, ","

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"authSecId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    const-string v0, ","

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"deviceClass\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    const-string v0, ","

    .line 164
    :cond_4
    return-object v0
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->authId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setAuthSecId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->authSecId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDeviceClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->deviceClass:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->id:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/microsoft/telemetry/extensions/device;->localId:Ljava/lang/String;

    .line 77
    return-void
.end method
