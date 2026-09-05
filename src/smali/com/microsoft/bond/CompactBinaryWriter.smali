.class public Lcom/microsoft/bond/CompactBinaryWriter;
.super Lcom/microsoft/bond/ProtocolWriter;
.source "CompactBinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/CompactBinaryWriter$1;
    }
.end annotation


# static fields
.field public static final MAGIC:S


# instance fields
.field private final stream:Lcom/microsoft/bond/io/BondOutputStream;

.field private final version:Lcom/microsoft/bond/ProtocolVersion;

.field private final writeBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolType;->getValue()I

    move-result v0

    int-to-short v0, v0

    sput-short v0, Lcom/microsoft/bond/CompactBinaryWriter;->MAGIC:S

    return-void
.end method

.method protected constructor <init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondOutputStream;)V
    .locals 1
    .param p1, "version"    # Lcom/microsoft/bond/ProtocolVersion;
    .param p2, "stream"    # Lcom/microsoft/bond/io/BondOutputStream;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolWriter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    .line 43
    iput-object p2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    .line 45
    return-void
.end method

.method public static createV1(Lcom/microsoft/bond/io/BondOutputStream;)Lcom/microsoft/bond/CompactBinaryWriter;
    .locals 2
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondOutputStream;

    .prologue
    .line 32
    new-instance v0, Lcom/microsoft/bond/CompactBinaryWriter;

    sget-object v1, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {v0, v1, p0}, Lcom/microsoft/bond/CompactBinaryWriter;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondOutputStream;)V

    return-object v0
.end method

.method public static createV2(Lcom/microsoft/bond/io/BondOutputStream;)Lcom/microsoft/bond/CompactBinaryWriter;
    .locals 1
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondOutputStream;

    .prologue
    .line 36
    new-instance v0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;

    invoke-direct {v0, p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;-><init>(Lcom/microsoft/bond/io/BondOutputStream;)V

    return-object v0
.end method


# virtual methods
.method public getVersion()Lcom/microsoft/bond/ProtocolVersion;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    return-object v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 2
    .param p1, "capability"    # Lcom/microsoft/bond/ProtocolCapability;

    .prologue
    .line 202
    sget-object v0, Lcom/microsoft/bond/CompactBinaryWriter$1;->$SwitchMap$com$microsoft$bond$ProtocolCapability:[I

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolCapability;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    :goto_0
    return v0

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
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

    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v3}, Lcom/microsoft/bond/ProtocolVersion;->getValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBlob(Lcom/microsoft/bond/BondBlob;)V
    .locals 4
    .param p1, "value"    # Lcom/microsoft/bond/BondBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->getBuffer()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 149
    return-void
.end method

.method public writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "elementType"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    .line 80
    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "keyType"    # Lcom/microsoft/bond/BondDataType;
    .param p3, "valueType"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    .line 88
    invoke-virtual {p3}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    .line 91
    return-void
.end method

.method public writeContainerEnd()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public writeDouble(D)V
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, p2, v0}, Lcom/microsoft/bond/internal/DecimalHelper;->encodeDouble(D[B)V

    .line 143
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 144
    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 3
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .param p2, "id"    # I
    .param p3, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v1

    int-to-byte v0, v1

    .line 59
    .local v0, "fieldType":B
    const/4 v1, 0x5

    if-gt p2, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    shl-int/lit8 v2, p2, 0x5

    or-int/2addr v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    .line 74
    :goto_0
    return-void

    .line 63
    :cond_0
    const/16 v1, 0xff

    if-gt p2, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    or-int/lit16 v2, v0, 0xc0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    .line 66
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    or-int/lit16 v2, v0, 0xe0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    .line 71
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    .line 72
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    goto :goto_0
.end method

.method public writeFloat(F)V
    .locals 4
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, v0}, Lcom/microsoft/bond/internal/DecimalHelper;->encodeFloat(F[B)V

    .line 137
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 138
    return-void
.end method

.method public writeInt16(S)V
    .locals 5
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag16(S)S

    move-result v1

    .line 182
    .local v1, "zigZagged":S
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {v1, v2, v4}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt16(S[BI)I

    move-result v0

    .line 183
    .local v0, "bytesWritten":I
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 184
    return-void
.end method

.method public writeInt32(I)V
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag32(I)I

    move-result v1

    .line 189
    .local v1, "zigZagged":I
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {v1, v2, v4}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt32(I[BI)I

    move-result v0

    .line 190
    .local v0, "bytesWritten":I
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v3, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 191
    return-void
.end method

.method public writeInt64(J)V
    .locals 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    invoke-static {p1, p2}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag64(J)J

    move-result-wide v2

    .line 196
    .local v2, "zigZagged":J
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {v2, v3, v1, v5}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt64(J[BI)I

    move-result v0

    .line 197
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v4, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v1, v4, v5, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 198
    return-void
.end method

.method public writeInt8(B)V
    .locals 1
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    .line 177
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 112
    .local v0, "buffer":[B
    array-length v1, v0

    .line 114
    .local v1, "size":I
    invoke-virtual {p0, v1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    .line 115
    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {v2, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([B)V

    goto :goto_0
.end method

.method public writeStructEnd(Z)V
    .locals 1
    .param p1, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p1, :cond_0

    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt8(B)V

    .line 55
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public writeUInt16(S)V
    .locals 4
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, v1, v3}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt16(S[BI)I

    move-result v0

    .line 159
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 160
    return-void
.end method

.method public writeUInt32(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, v1, v3}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt32(I[BI)I

    move-result v0

    .line 165
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 166
    return-void
.end method

.method public writeUInt64(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-static {p1, p2, v1, v3}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt64(J[BI)I

    move-result v0

    .line 171
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    iget-object v2, p0, Lcom/microsoft/bond/CompactBinaryWriter;->writeBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    .line 172
    return-void
.end method

.method public writeUInt8(B)V
    .locals 1
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/io/BondOutputStream;->write(B)V

    .line 154
    return-void
.end method

.method public writeVersion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    sget-short v0, Lcom/microsoft/bond/CompactBinaryWriter;->MAGIC:S

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt16(S)V

    .line 50
    iget-object v0, p0, Lcom/microsoft/bond/CompactBinaryWriter;->version:Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolVersion;->getValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt16(S)V

    .line 51
    return-void
.end method

.method public writeWString(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0, v3}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/microsoft/bond/CompactBinaryWriter;->writeUInt32(I)V

    .line 130
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/microsoft/bond/CompactBinaryWriter;->stream:Lcom/microsoft/bond/io/BondOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lcom/microsoft/bond/io/BondOutputStream;->write([BII)V

    goto :goto_0
.end method
