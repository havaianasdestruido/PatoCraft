.class public Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;
.super Lcom/microsoft/bond/ProtocolWriter;
.source "CompactBinaryByteCounterWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter$1;
    }
.end annotation


# instance fields
.field private byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

.field private byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

.field private positionBytes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolWriter;-><init>()V

    .line 36
    new-instance v0, Lcom/microsoft/bond/internal/IntArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/microsoft/bond/internal/IntArrayStack;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    .line 37
    new-instance v0, Lcom/microsoft/bond/internal/IntArrayStack;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/microsoft/bond/internal/IntArrayStack;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    .line 38
    return-void
.end method


# virtual methods
.method public getByteLength(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v0, p1}, Lcom/microsoft/bond/internal/IntArrayStack;->get(I)I

    move-result v0

    return v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 3
    .param p1, "capability"    # Lcom/microsoft/bond/ProtocolCapability;

    .prologue
    const/4 v0, 0x1

    .line 52
    sget-object v1, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter$1;->$SwitchMap$com$microsoft$bond$ProtocolCapability:[I

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolCapability;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    :pswitch_0
    return v0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 46
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v0}, Lcom/microsoft/bond/internal/IntArrayStack;->clear()V

    .line 47
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v0}, Lcom/microsoft/bond/internal/IntArrayStack;->clear()V

    .line 48
    return-void
.end method

.method public writeBlob(Lcom/microsoft/bond/BondBlob;)V
    .locals 2
    .param p1, "value"    # Lcom/microsoft/bond/BondBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 176
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
    .line 134
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 135
    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "elementType"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 120
    return-void

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v0

    goto :goto_0
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "keyType"    # Lcom/microsoft/bond/BondDataType;
    .param p3, "valueType"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 125
    return-void
.end method

.method public writeContainerEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 171
    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 1
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .param p2, "id"    # I
    .param p3, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 96
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    const/16 v0, 0xff

    if-gt p2, v0, :cond_1

    .line 99
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    goto :goto_0

    .line 102
    :cond_1
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    goto :goto_0
.end method

.method public writeFieldEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method

.method public writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .param p2, "id"    # I
    .param p3, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 166
    return-void
.end method

.method public writeInt16(S)V
    .locals 1
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag16(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->writeUInt16(S)V

    .line 206
    return-void
.end method

.method public writeInt32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->writeUInt32(I)V

    .line 211
    return-void
.end method

.method public writeInt64(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p1, p2}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeZigzag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->writeUInt64(J)V

    .line 216
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
    .line 200
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 201
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 145
    .local v0, "encodedString":[B
    array-length v1, v0

    .line 146
    .local v1, "encodedStringByteSize":I
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {v1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    goto :goto_0
.end method

.method public writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V
    .locals 2
    .param p1, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    iget-object v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v1}, Lcom/microsoft/bond/internal/IntArrayStack;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/internal/IntArrayStack;->push(I)V

    .line 77
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    iget v1, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/internal/IntArrayStack;->push(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public writeStructEnd(Z)V
    .locals 4
    .param p1, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 84
    if-nez p1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengthsIndexes:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v2}, Lcom/microsoft/bond/internal/IntArrayStack;->pop()I

    move-result v1

    .line 87
    .local v1, "lengthIndex":I
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    iget-object v3, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v3, v1}, Lcom/microsoft/bond/internal/IntArrayStack;->get(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 88
    .local v0, "byteSize":I
    iget-object v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->byteLengths:Lcom/microsoft/bond/internal/IntArrayStack;

    invoke-virtual {v2, v1, v0}, Lcom/microsoft/bond/internal/IntArrayStack;->set(II)V

    .line 89
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {v0}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 91
    .end local v0    # "byteSize":I
    .end local v1    # "lengthIndex":I
    :cond_0
    return-void
.end method

.method public writeUInt16(S)V
    .locals 2
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt16Size(S)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 186
    return-void
.end method

.method public writeUInt32(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 191
    return-void
.end method

.method public writeUInt64(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-static {p1, p2}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt64Size(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 196
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
    .line 180
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 181
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
    .line 70
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 71
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
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/microsoft/bond/internal/StringHelper;->encodeToUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    .local v0, "encodedString":[B
    array-length v1, v0

    .line 159
    .local v1, "encodedStringByteSize":I
    iget v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/microsoft/bond/internal/IntegerHelper;->getVarUInt32Size(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->positionBytes:I

    goto :goto_0
.end method
