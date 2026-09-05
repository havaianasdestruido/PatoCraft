.class public Lcom/microsoft/bond/internal/CompactBinaryV2Writer;
.super Lcom/microsoft/bond/CompactBinaryWriter;
.source "CompactBinaryV2Writer.java"


# instance fields
.field private final byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

.field private currentIndex:I


# direct methods
.method public constructor <init>(Lcom/microsoft/bond/io/BondOutputStream;)V
    .locals 1
    .param p1, "stream"    # Lcom/microsoft/bond/io/BondOutputStream;

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/bond/CompactBinaryWriter;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondOutputStream;)V

    .line 24
    new-instance v0, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    invoke-direct {v0}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    .line 26
    return-void
.end method


# virtual methods
.method public getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 47
    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->writeUInt8(B)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/microsoft/bond/CompactBinaryWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    goto :goto_0
.end method

.method public writeEnd()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    .line 57
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    invoke-virtual {v0}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->reset()V

    .line 58
    return-void
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
    .line 39
    if-nez p2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->byteCounterWriter:Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;

    iget v1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/internal/CompactBinaryByteCounterWriter;->getByteLength(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->writeUInt32(I)V

    .line 41
    iget v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Writer;->currentIndex:I

    .line 43
    :cond_0
    return-void
.end method
