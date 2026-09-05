.class public Lcom/microsoft/bond/CompactBinaryReader;
.super Lcom/microsoft/bond/ProtocolReader;
.source "CompactBinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/CompactBinaryReader$1;
    }
.end annotation


# instance fields
.field private readBuffer:[B

.field protected final stream:Lcom/microsoft/bond/io/BondInputStream;

.field private final version:Lcom/microsoft/bond/ProtocolVersion;


# direct methods
.method protected constructor <init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondInputStream;)V
    .locals 1
    .param p1, "version"    # Lcom/microsoft/bond/ProtocolVersion;
    .param p2, "stream"    # Lcom/microsoft/bond/io/BondInputStream;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolReader;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    .line 62
    iput-object p2, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    .line 63
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    .line 64
    return-void
.end method

.method private SkipContainer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v1

    .line 256
    .local v1, "tag":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget v3, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/io/BondInputStream;->setPositionRelative(I)I

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readContainerEnd()V

    .line 270
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v0, v2, :cond_1

    .line 266
    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/CompactBinaryReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createV1(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 2
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondInputStream;

    .prologue
    .line 32
    new-instance v0, Lcom/microsoft/bond/CompactBinaryReader;

    sget-object v1, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {v0, v1, p0}, Lcom/microsoft/bond/CompactBinaryReader;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondInputStream;)V

    return-object v0
.end method

.method public static createV1([B)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 42
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/microsoft/bond/CompactBinaryReader;->createV1([BII)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v0

    return-object v0
.end method

.method public static createV1([BII)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/microsoft/bond/io/MemoryBondInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV1(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v0

    return-object v0
.end method

.method public static createV2(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 1
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondInputStream;

    .prologue
    .line 46
    new-instance v0, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;

    invoke-direct {v0, p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;-><init>(Lcom/microsoft/bond/io/BondInputStream;)V

    return-object v0
.end method

.method public static createV2([B)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/microsoft/bond/CompactBinaryReader;->createV2([BII)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v0

    return-object v0
.end method

.method public static createV2([BII)Lcom/microsoft/bond/CompactBinaryReader;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 51
    new-instance v0, Lcom/microsoft/bond/io/MemoryBondInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV2(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v0

    return-object v0
.end method

.method private ensureReadBufferCapacity(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 68
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public cloneReader()Lcom/microsoft/bond/ProtocolReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondInputStream;->clone(Z)Lcom/microsoft/bond/io/BondInputStream;

    move-result-object v0

    .line 289
    .local v0, "clonedStream":Lcom/microsoft/bond/io/BondInputStream;
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    sget-object v2, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    if-ne v1, v2, :cond_0

    .line 290
    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV1(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    sget-object v2, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    if-ne v1, v2, :cond_1

    .line 292
    invoke-static {v0}, Lcom/microsoft/bond/CompactBinaryReader;->createV2(Lcom/microsoft/bond/io/BondInputStream;)Lcom/microsoft/bond/CompactBinaryReader;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->close()V

    .line 284
    return-void
.end method

.method public getPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->getPosition()I

    move-result v0

    return v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 2
    .param p1, "capability"    # Lcom/microsoft/bond/ProtocolCapability;

    .prologue
    .line 299
    sget-object v0, Lcom/microsoft/bond/CompactBinaryReader$1;->$SwitchMap$com$microsoft$bond$ProtocolCapability:[I

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolCapability;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    :goto_0
    return v0

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->isCloneable()Z

    move-result v0

    goto :goto_0

    .line 305
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->isSeekable()Z

    move-result v0

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z
    .locals 4
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;

    .prologue
    const/4 v1, 0x0

    .line 274
    instance-of v2, p1, Lcom/microsoft/bond/CompactBinaryWriter;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Lcom/microsoft/bond/CompactBinaryWriter;

    .line 276
    .local v0, "cbWriter":Lcom/microsoft/bond/CompactBinaryWriter;
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v0}, Lcom/microsoft/bond/CompactBinaryWriter;->getVersion()Lcom/microsoft/bond/ProtocolVersion;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 278
    .end local v0    # "cbWriter":Lcom/microsoft/bond/CompactBinaryWriter;
    :cond_0
    return v1
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondInputStream;->readBlob(I)Lcom/microsoft/bond/BondBlob;

    move-result-object v0

    return-object v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v2

    invoke-static {v2}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v0

    .line 101
    .local v0, "elementType":Lcom/microsoft/bond/BondDataType;
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v1

    .line 102
    .local v1, "size":I
    new-instance v2, Lcom/microsoft/bond/ProtocolReader$ListTag;

    invoke-direct {v2, v1, v0}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    return-object v2
.end method

.method public readContainerEnd()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public readDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 159
    invoke-direct {p0, v3}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    .line 160
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    .line 161
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v0}, Lcom/microsoft/bond/internal/DecimalHelper;->decodeDouble([B)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    .line 74
    .local v2, "type":Lcom/microsoft/bond/BondDataType;
    const/4 v0, 0x0

    .line 76
    .local v0, "id":I
    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v3}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v1

    .line 78
    .local v1, "raw":B
    and-int/lit8 v3, v1, 0x1f

    invoke-static {v3}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v2

    .line 79
    and-int/lit16 v0, v1, 0xe0

    .line 81
    const/16 v3, 0xe0

    if-ne v0, v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v3}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 84
    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v3}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 95
    :goto_0
    new-instance v3, Lcom/microsoft/bond/ProtocolReader$FieldTag;

    invoke-direct {v3, v2, v0}, Lcom/microsoft/bond/ProtocolReader$FieldTag;-><init>(Lcom/microsoft/bond/BondDataType;I)V

    return-object v3

    .line 86
    :cond_0
    const/16 v3, 0xc0

    if-ne v0, v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v3}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public readFloat()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 152
    invoke-direct {p0, v3}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    .line 153
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    .line 154
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v0}, Lcom/microsoft/bond/internal/DecimalHelper;->decodeFloat([B)F

    move-result v0

    return v0
.end method

.method public readInt16()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt16(Lcom/microsoft/bond/io/BondInputStream;)S

    move-result v0

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeZigzag16(S)S

    move-result v0

    return v0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeZigzag32(I)I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeZigzag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt8()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    return v0
.end method

.method public readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v3

    invoke-static {v3}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v0

    .line 108
    .local v0, "keyType":Lcom/microsoft/bond/BondDataType;
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt8()B

    move-result v3

    invoke-static {v3}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v2

    .line 109
    .local v2, "valueType":Lcom/microsoft/bond/BondDataType;
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v1

    .line 110
    .local v1, "size":I
    new-instance v3, Lcom/microsoft/bond/ProtocolReader$MapTag;

    invoke-direct {v3, v1, v0, v2}, Lcom/microsoft/bond/ProtocolReader$MapTag;-><init>(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    return-object v3
.end method

.method public readString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v1}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    .line 127
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 128
    const-string v1, ""

    .line 133
    :goto_0
    return-object v1

    .line 131
    :cond_0
    invoke-direct {p0, v0}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    .line 132
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    .line 133
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v1, v3, v0}, Lcom/microsoft/bond/internal/StringHelper;->decodeFromUtf8([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readUInt16()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt16(Lcom/microsoft/bond/io/BondInputStream;)S

    move-result v0

    return v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt8()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    return v0
.end method

.method public readWString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-static {v1}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 141
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 142
    const-string v1, ""

    .line 147
    :goto_0
    return-object v1

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/microsoft/bond/CompactBinaryReader;->ensureReadBufferCapacity(I)V

    .line 146
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    .line 147
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryReader;->readBuffer:[B

    invoke-static {v1, v3, v0}, Lcom/microsoft/bond/internal/StringHelper;->decodeFromUtf16([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondInputStream;->setPosition(I)I

    .line 329
    return-void
.end method

.method public skip(Lcom/microsoft/bond/BondDataType;)V
    .locals 4
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v2, Lcom/microsoft/bond/CompactBinaryReader$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 248
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/SkipHelper;->skip(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 251
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v0

    .line 219
    .local v0, "size":I
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v2, v0}, Lcom/microsoft/bond/io/BondInputStream;->setPositionRelative(I)I

    goto :goto_0

    .line 225
    .end local v0    # "size":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readUInt32()I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    .line 226
    .restart local v0    # "size":I
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryReader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v2, v0}, Lcom/microsoft/bond/io/BondInputStream;->setPositionRelative(I)I

    goto :goto_0

    .line 232
    .end local v0    # "size":I
    :pswitch_2
    invoke-direct {p0}, Lcom/microsoft/bond/CompactBinaryReader;->SkipContainer()V

    goto :goto_0

    .line 238
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v1

    .line 239
    .local v1, "tag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :goto_1
    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_1

    .line 241
    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/CompactBinaryReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 240
    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readFieldEnd()V

    invoke-virtual {p0}, Lcom/microsoft/bond/CompactBinaryReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v1

    goto :goto_1

    .line 244
    :cond_1
    iget-object v2, v1, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    const-string v0, "[%s version=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryReader;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v3}, Lcom/microsoft/bond/ProtocolVersion;->getValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
