.class public final Lcom/microsoft/bond/internal/ReadHelper;
.super Ljava/lang/Object;
.source "ReadHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 0
    .param p0, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .param p1, "expectedType"    # Lcom/microsoft/bond/BondDataType;

    .prologue
    .line 26
    return-void
.end method

.method public static readBlob(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Lcom/microsoft/bond/BondBlob;
    .locals 4
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 178
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v1

    .line 179
    .local v1, "tag":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 183
    iget v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-nez v2, :cond_0

    .line 184
    new-instance v0, Lcom/microsoft/bond/BondBlob;

    invoke-direct {v0}, Lcom/microsoft/bond/BondBlob;-><init>()V

    .line 189
    .local v0, "result":Lcom/microsoft/bond/BondBlob;
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 191
    return-object v0

    .line 186
    .end local v0    # "result":Lcom/microsoft/bond/BondBlob;
    :cond_0
    new-instance v0, Lcom/microsoft/bond/BondBlob;

    iget v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/ProtocolReader;->readBlob(I)Lcom/microsoft/bond/BondBlob;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/microsoft/bond/BondBlob;-><init>(Lcom/microsoft/bond/BondBlob;)V

    .restart local v0    # "result":Lcom/microsoft/bond/BondBlob;
    goto :goto_0
.end method

.method public static readBool(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Z
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    move-result v0

    return v0
.end method

.method public static readDouble(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)D
    .locals 2
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    move-result-wide v0

    .line 71
    :goto_0
    return-wide v0

    .line 66
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFloat()F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 71
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static readFloat(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)F
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 59
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFloat()F

    move-result v0

    return v0
.end method

.method public static readInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result v0

    int-to-short v0, v0

    goto :goto_0

    .line 138
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 146
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    move-result v0

    goto :goto_0

    .line 148
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result v0

    goto :goto_0

    .line 152
    :cond_3
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J
    .locals 2
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v0

    .line 169
    :goto_0
    return-wide v0

    .line 160
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 164
    :cond_3
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_4

    .line 165
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 168
    :cond_4
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 169
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static readInt8(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)B
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 127
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    move-result v0

    return v0
.end method

.method public static readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 45
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 85
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result v0

    int-to-short v0, v0

    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readUInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 97
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v0

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result v0

    goto :goto_0

    .line 103
    :cond_3
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readUInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J
    .locals 2
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    move-result-wide v0

    .line 120
    :goto_0
    return-wide v0

    .line 111
    :cond_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 113
    :cond_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-ne p1, v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 119
    :cond_4
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 120
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static readUInt8(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)B
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 78
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    move-result v0

    return v0
.end method

.method public static readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;
    .locals 1
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 52
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 3
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 202
    .local v0, "tag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :goto_0
    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-eq v1, v2, :cond_1

    .line 205
    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v1}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 203
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 210
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    if-ne v1, v2, :cond_0

    .line 214
    return-void
.end method

.method public static validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 1
    .param p0, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .param p1, "expectedType"    # Lcom/microsoft/bond/BondDataType;

    .prologue
    .line 29
    if-eq p0, p1, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    if-eq p0, v0, :cond_0

    .line 30
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/ReadHelper;->invalideType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 32
    :cond_0
    return-void
.end method
